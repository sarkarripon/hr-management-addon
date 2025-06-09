<?php

namespace Tests\Integration;

use Codeception\TestCase\WPTestCase;
use HR_Management;

class SampleTest extends WPTestCase
{
    public function setUp(): void
    {
        // Before...
        parent::setUp();

        // Your set-up methods here.


    }

    public function tearDown(): void
    {
        // Your tear down methods here.

        // Then...
        parent::tearDown();
    }



    public function test_addon_active(): void
    {
        $this->assertTrue(is_plugin_active('hr-management-addon/hr-management-addon.php'));
    }

    public function test_post_creation()
    {
        $post_id = static::factory()->post->create(['post_title' => 'Test Post']);
        
        $post = get_post($post_id);
        
        $this->assertEquals('Test Post', $post->post_title);
    }

    public function test_hr_management_addon_insert_data(): void
    {
        // Set up test data
        $_POST['blood_group'] = 'A+';
        $_POST['previous_jobs'] = 'Company A, Company B';
        $_POST['interests'] = 'Reading, Sports';

        // Initial data array
        $initial_data = [
            'employee_name' => 'John Doe',
            'role' => 'Developer',
            'designation' => 'Senior Developer'
        ];

        // Call the function
        $result = hr_management_addon_insert_data($initial_data);


        // Assertions
        $this->assertIsArray($result);
        $this->assertEquals('A+', $result['blood_group']);
        $this->assertEquals('Company A, Company B', $result['previous_jobs']);
        $this->assertEquals('Reading, Sports', $result['interests']);
        
        // Verify original data is preserved
        $this->assertEquals('John Doe', $result['employee_name']);
        $this->assertEquals('Developer', $result['role']);
        $this->assertEquals('Senior Developer', $result['designation']);

        // Test sanitization
        $_POST['blood_group'] = '<script>alert("XSS")</script>';
        $_POST['previous_jobs'] = '<p>HTML content</p>';
        $_POST['interests'] = '  Extra spaces  ';

        $result = hr_management_addon_insert_data($initial_data);

        $this->assertEquals('', $result['blood_group']); // WordPress removes all HTML tags
        $this->assertEquals('HTML content', $result['previous_jobs']);
        $this->assertEquals('Extra spaces', $result['interests']);
 
    }

    public function test_hr_management_addon_activate(): void
    {
        global $wpdb;
        $table_name = $wpdb->prefix . 'hr_employees';


        // First ensure the main plugin's table exists
        $table_exists = $wpdb->get_var("SHOW TABLES LIKE '$table_name'") === $table_name;

        $this->assertTrue($table_exists, 'Main plugin table should exist before addon activation');


        $table = $wpdb->get_col("SELECT column_name FROM information_schema.columns WHERE table_name = '{$table_name}' AND table_schema = DATABASE()");

        $this->assertContains($table_name, $table, 'table should exist');


    }

    // this test is for the method from base plugin

    public function test_hr_management_addon_hr_validate_options(): void
    {
        $input = [
            'employee_name' => 'John Doe',
            'employee_role' => 'Developer',
            'employee_designation' => 'Senior Developer'
            
        ];

        $hr_management = HR_Management::get_instance();
        $result = $hr_management->hr_validate_options($input);

        $this->assertTrue(true, 'hr_validate_options function should exist');
        $this->assertEquals('John Doe', $result['employee_name']);
        $this->assertEquals('Developer', $result['employee_role']);
        $this->assertEquals('Senior Developer', $result['employee_designation']);



    }
}