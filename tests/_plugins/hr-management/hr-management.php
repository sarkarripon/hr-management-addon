<?php

/**
 * Plugin Name: hr management
 * Description: i want to manage employee in my office
 * Version: 1.0.0
 * Author: Your Name
 */

// Exit if accessed directly.
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}


// Plugin activation hook
register_activation_hook( __FILE__, 'hr_management_activate' );

function hr_management_activate() {
	global $wpdb;
	$table_name = $wpdb->prefix . 'hr_employees';
	$charset_collate = $wpdb->get_charset_collate();

	$sql = "CREATE TABLE IF NOT EXISTS $table_name (
		id mediumint(9) NOT NULL AUTO_INCREMENT,
		employee_name varchar(255) NOT NULL,
		role varchar(255) NOT NULL,
		designation varchar(255) NOT NULL,
		PRIMARY KEY  (id)
	) $charset_collate;";

	require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
	
	// Create the table
	$result = dbDelta($sql);
	
	// Verify if table was created
	$table_exists = $wpdb->get_var("SHOW TABLES LIKE '$table_name'") === $table_name;
	
	if (!$table_exists) {
		// Log error if table creation failed
		error_log('HR Management Plugin: Failed to create database table');
		wp_die('Error: Could not create the required database table. Please check your database permissions.');
	}
}


// Plugin deactivation hook
register_deactivation_hook( __FILE__, 'hr_management_deactivate' );

function hr_management_deactivate() {
	// Actions to perform upon plugin deactivation (e.g., remove tables, delete options).
}


//Main plugin class (optional, but recommended for larger plugins)
class HR_Management {

	private static $instance;

	public static function get_instance() {
		if ( ! isset( self::$instance ) ) {
			self::$instance = new self();
		}

		return self::$instance;
	}

	private function __construct() {
		// Initialize plugin components, actions and filters.
		add_action( 'admin_menu', array( $this, 'add_admin_menu' ) );
		add_action( 'admin_init', array( $this, 'hr_register_settings' ) );
		add_action( 'admin_init', array( $this, 'hr_process_employee_form' ) );
		add_action( 'admin_enqueue_scripts', array( $this, 'enqueue_admin_scripts' ) );
	}


	public function add_admin_menu() {
		// Add a menu item to the WordPress admin interface.
		add_menu_page(
			'HR Management',
			'HR Management',
			'manage_options',
			'hr-management',
			array( $this, 'admin_page_content' ),
			'dashicons-businessman'
		);
	}


	public function admin_page_content() {
		// Output the content for the admin page.
		 echo '<div class="wrap">';
         echo '<h1>HR Management</h1>';

		 $this->display_employee_form();
		 $this->display_employee_table();
         echo '</div>';
	}

	function hr_register_settings() {
		register_setting( 'hr_options', 'hr_options', array( $this, 'hr_validate_options' ) );

		add_settings_section( 'employee_info', 'Employee Information', array( $this, 'hr_section_callback' ), 'hr-management' );

		add_settings_field( 'employee_name', 'Employee Name', array( $this, 'hr_employee_name_callback' ), 'hr-management', 'employee_info' );
		add_settings_field( 'employee_role', 'Employee Role', array( $this, 'hr_employee_role_callback' ), 'hr-management', 'employee_info' );
		add_settings_field( 'employee_designation', 'Employee Designation', array( $this, 'hr_employee_designation_callback' ), 'hr-management', 'employee_info' );
	}

	function hr_section_callback() {
		 echo '<p>Enter employee details:</p>';
	}

	function hr_employee_name_callback() {
		$options = get_option( 'hr_options' );
		$employee_name = isset( $options['employee_name'] ) ? esc_attr( $options['employee_name'] ) : '';
		 echo "<input type='text' name='hr_options[employee_name]' value='$employee_name' />";
	}

	function hr_employee_role_callback() {
		$options = get_option( 'hr_options' );
		$employee_role = isset( $options['employee_role'] ) ? esc_attr( $options['employee_role'] ) : '';
		 echo "<input type='text' name='hr_options[employee_role]' value='$employee_role' />";
	}

	function hr_employee_designation_callback() {
		$options = get_option( 'hr_options' );
		$employee_designation = isset( $options['employee_designation'] ) ? esc_attr( $options['employee_designation'] ) : '';
		 echo "<input type='text' name='hr_options[employee_designation]' value='$employee_designation' />";
	}

	function hr_validate_options( $input ) {
		$validated = array();
		$validated['employee_name'] = sanitize_text_field( $input['employee_name'] );
		$validated['employee_role'] = sanitize_text_field( $input['employee_role'] );
		$validated['employee_designation'] = sanitize_text_field( $input['employee_designation'] );
		return $validated;
	}

	function hr_process_employee_form() {
		global $wpdb;
		$table_name = $wpdb->prefix . 'hr_employees';

		if ( isset( $_POST['submit_employee'] ) ) {
			$data = array(
				'employee_name' => sanitize_text_field( $_POST['employee_name'] ),
				'role' => sanitize_text_field( $_POST['employee_role'] ),
				'designation' => sanitize_text_field( $_POST['employee_designation'] ),
			);

			// Allow addon to add more data
			$data = apply_filters('hr_management_insert_data', $data);

			$wpdb->insert(
				$table_name,
				$data,
				array_fill(0, count($data), '%s')
			);

			// Redirect to prevent form resubmission on refresh
			$redirect_url = admin_url( 'admin.php?page=hr-management' );
			wp_redirect( $redirect_url );
			exit;
		}
	}

	function display_employee_form() {
		?>
		<h2>Add New Employee</h2>
		<form method="post" action="">
			<label for="employee_name">Employee Name:</label><br>
			<input type="text" id="employee_name" name="employee_name" required><br><br>

			<label for="employee_role">Role:</label><br>
			<input type="text" id="employee_role" name="employee_role" required><br><br>

			<label for="employee_designation">Designation:</label><br>
			<input type="text" id="employee_designation" name="employee_designation" required><br><br>

			<?php do_action('hr_management_after_form_fields'); ?>

			<input type="submit" name="submit_employee" class="button button-primary" value="Add Employee">
		</form>
		<?php
	}

	function display_employee_table() {
		global $wpdb;
		$table_name = $wpdb->prefix . 'hr_employees';

		// Search functionality
		$search_term = isset( $_GET['s'] ) ? sanitize_text_field( $_GET['s'] ) : '';
		$search_sql = '';
		if ( ! empty( $search_term ) ) {
			$search_sql = $wpdb->prepare( "WHERE employee_name LIKE '%%%s%%' OR role LIKE '%%%s%%' OR designation LIKE '%%%s%%'", $search_term, $search_term, $search_term );
		}

		// Allow addon to modify search SQL
		$search_sql = apply_filters('hr_management_search_fields', $search_sql);

		$employees = $wpdb->get_results( "SELECT * FROM $table_name $search_sql", ARRAY_A );

		?>
		<h2>Employee List</h2>

		<form method="get">
			<input type="hidden" name="page" value="hr-management">
			<input type="text" name="s" value="<?php echo esc_attr( $search_term ); ?>" placeholder="Search employees...">
			<input type="submit" class="button" value="Search">
		</form>

		<table class="wp-list-table widefat fixed striped">
			<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Role</th>
				<th>Designation</th>
				<?php do_action('hr_management_after_table_headers'); ?>
			</tr>
			</thead>
			<tbody>
			<?php if ( ! empty( $employees ) ) : ?>
				<?php foreach ( $employees as $employee ) : ?>
					<tr>
						<td><?php echo esc_html( $employee['id'] ); ?></td>
						<td><?php echo esc_html( $employee['employee_name'] ); ?></td>
						<td><?php echo esc_html( $employee['role'] ); ?></td>
						<td><?php echo esc_html( $employee['designation'] ); ?></td>
						<?php do_action('hr_management_after_table_cells', $employee); ?>
					</tr>
				<?php endforeach; ?>
			<?php else : ?>
				<tr>
					<td colspan="4">No employees found.</td>
				</tr>
			<?php endif; ?>
			</tbody>
		</table>
		<?php
	}

	public function enqueue_admin_scripts( $hook ) {
		if ( 'toplevel_page_hr-management' !== $hook ) {
			return;
		}

		wp_enqueue_style( 'hr-management-admin', plugin_dir_url( __FILE__ ) . 'admin.css', array(), '1.0.0' );
	}

}

// Initialize the plugin
HR_Management::get_instance();


?>
