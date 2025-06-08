<?php

/**
 * Plugin Name: HR Management Addon
 * Description: Adds additional employee information fields to HR Management plugin
 * Version: 1.0.0
 * Author: Your Name
 * Requires: hr-management
 */

// Exit if accessed directly.
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

// Check if the main plugin is active
if ( ! function_exists( 'is_plugin_active' ) ) {
    include_once( ABSPATH . 'wp-admin/includes/plugin.php' );
}

if ( ! is_plugin_active( 'hr-management/hr-management.php' ) ) {
    add_action( 'admin_notices', 'hr_management_addon_notice' );
    return;
}

function hr_management_addon_notice() {
    ?>
    <div class="error">
        <p>HR Management Addon requires the HR Management plugin to be installed and activated.</p>
    </div>
    <?php
}

// Plugin activation hook
register_activation_hook( __FILE__, 'hr_management_addon_activate' );

function hr_management_addon_activate() {
    global $wpdb;
    $table_name = $wpdb->prefix . 'hr_employees';
    
    // Ensure the main plugin is active
    if (!is_plugin_active('hr-management/hr-management.php')) {
        wp_die('HR Management Addon requires the HR Management plugin to be installed and activated.');
    }
    
    // Check if the main plugin's table exists
    $table_exists = $wpdb->get_var("SHOW TABLES LIKE '$table_name'") === $table_name;
    if (!$table_exists) {
        wp_die('HR Management plugin tables not found. Please activate the main plugin first.');
    }
    
    try {
        // Get existing columns using SQLite-compatible syntax
        $columns = $wpdb->get_col("PRAGMA table_info({$table_name})", 1);
        
        // Create new table with additional columns
        $new_table = $table_name . '_new';
        $wpdb->query("CREATE TABLE {$new_table} AS SELECT * FROM {$table_name}");
        
        // Add new columns if they don't exist
        if (!in_array('blood_group', $columns)) {
            $wpdb->query("ALTER TABLE {$new_table} ADD COLUMN blood_group varchar(10)");
        }
        
        if (!in_array('previous_jobs', $columns)) {
            $wpdb->query("ALTER TABLE {$new_table} ADD COLUMN previous_jobs text");
        }
        
        if (!in_array('interests', $columns)) {
            $wpdb->query("ALTER TABLE {$new_table} ADD COLUMN interests text");
        }
        
        // Drop old table and rename new one
        $wpdb->query("DROP TABLE {$table_name}");
        $wpdb->query("ALTER TABLE {$new_table} RENAME TO {$table_name}");
    } catch (Exception $e) {
        wp_die('Error activating HR Management Addon: ' . $e->getMessage());
    }
}

// Add new fields to the form
add_action('admin_init', 'hr_management_addon_init');

function hr_management_addon_init() {
    add_action('hr_management_after_form_fields', 'hr_management_addon_form_fields');
    add_action('hr_management_after_table_headers', 'hr_management_addon_table_headers');
    add_action('hr_management_after_table_cells', 'hr_management_addon_table_cells');
    add_filter('hr_management_search_fields', 'hr_management_addon_search_fields');
    add_filter('hr_management_insert_data', 'hr_management_addon_insert_data');
}

function hr_management_addon_form_fields() {
    ?>
    <label for="blood_group">Blood Group:</label><br>
    <select id="blood_group" name="blood_group">
        <option value="">Select Blood Group</option>
        <option value="A+">A+</option>
        <option value="A-">A-</option>
        <option value="B+">B+</option>
        <option value="B-">B-</option>
        <option value="AB+">AB+</option>
        <option value="AB-">AB-</option>
        <option value="O+">O+</option>
        <option value="O-">O-</option>
    </select><br><br>

    <label for="previous_jobs">Previous Job History:</label><br>
    <textarea id="previous_jobs" name="previous_jobs" rows="4" cols="50" placeholder="Enter previous job history with dates"></textarea><br><br>

    <label for="interests">Interests:</label><br>
    <textarea id="interests" name="interests" rows="4" cols="50" placeholder="Enter employee interests"></textarea><br><br>
    <?php
}

function hr_management_addon_table_headers() {
    ?>
    <th>Blood Group</th>
    <th>Previous Jobs</th>
    <th>Interests</th>
    <?php
}

function hr_management_addon_table_cells($employee) {
    ?>
    <td><?php echo esc_html($employee['blood_group']); ?></td>
    <td><?php echo nl2br(esc_html($employee['previous_jobs'])); ?></td>
    <td><?php echo nl2br(esc_html($employee['interests'])); ?></td>
    <?php
}

function hr_management_addon_search_fields($search_sql) {
    global $wpdb;
    $search_term = isset($_GET['s']) ? sanitize_text_field($_GET['s']) : '';
    
    if (!empty($search_term)) {
        $search_sql .= $wpdb->prepare(
            " OR blood_group LIKE '%%%s%%' OR previous_jobs LIKE '%%%s%%' OR interests LIKE '%%%s%%'",
            $search_term,
            $search_term,
            $search_term
        );
    }
    
    return $search_sql;
}

function hr_management_addon_insert_data($data) {
    $data['blood_group'] = sanitize_text_field($_POST['blood_group']);
    $data['previous_jobs'] = sanitize_textarea_field($_POST['previous_jobs']);
    $data['interests'] = sanitize_textarea_field($_POST['interests']);
    return $data;
}

// Add some basic styling
add_action('admin_enqueue_scripts', 'hr_management_addon_styles');

function hr_management_addon_styles($hook) {
    if ('toplevel_page_hr-management' !== $hook) {
        return;
    }
    
    wp_add_inline_style('hr-management-admin', '
        .hr-management-form textarea {
            width: 100%;
            max-width: 500px;
        }
        .hr-management-form select {
            min-width: 200px;
        }
    ');
} 