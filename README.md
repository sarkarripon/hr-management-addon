# HR Management Addon

A WordPress plugin that extends the HR Management plugin with additional employee information fields.

## Features

- Adds blood group information
- Tracks previous job history
- Records employee interests
- Seamlessly integrates with the main HR Management plugin

## Requirements

- WordPress 5.0 or higher
- PHP 7.2 or higher
- HR Management plugin (main plugin) must be installed and activated

## Installation

1. Download the plugin files
2. Upload the `hr-management-addon` folder to the `/wp-content/plugins/` directory
3. Activate the plugin through the 'Plugins' menu in WordPress
4. Ensure the main HR Management plugin is installed and activated

## Setup

1. After activation, the plugin will automatically:
   - Create necessary database tables
   - Add new fields to the employee management system
   - Integrate with the existing HR Management interface

2. The new fields will be available in:
   - Employee creation form
   - Employee listing table
   - Search functionality

## Usage

### Adding Employee Information

1. Navigate to the HR Management section in your WordPress admin panel
2. When adding or editing an employee, you'll see new fields for:
   - Blood Group (dropdown selection)
   - Previous Job History (text area)
   - Interests (text area)

### Searching

The search functionality includes the new fields, allowing you to search by:
- Blood group
- Previous job history
- Interests

## Development

### Testing Setup

1. Clone the repository:
```bash
git clone [repository-url]
cd hr-management-addon
```

2. Set up a local WordPress development environment:
   - Install WordPress locally
   - Install and activate the main HR Management plugin
   - Install and activate this addon plugin

3. Test the following scenarios:
   - Plugin activation
   - Database table creation
   - Form field display
   - Data saving
   - Search functionality
   - Display of saved data

### Running Tests

1. Ensure you have a test WordPress installation
2. Activate both the main plugin and this addon
3. Test all CRUD operations
4. Verify search functionality
5. Check form validation
6. Test database migrations

## Support

For support, please:
1. Check the documentation
2. Open an issue in the GitHub repository
3. Contact the plugin maintainer

## License

This plugin is licensed under the GPL v2 or later.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request. 