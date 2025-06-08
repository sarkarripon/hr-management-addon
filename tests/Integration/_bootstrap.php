<?php


require_once dirname(dirname(__DIR__)) . '/vendor/autoload.php';

// Load the ChromeDriver helper
require_once __DIR__ . '/../Support/Helper/ChromeDriverHelper.php';

// Debug: Show existing ChromeDriver processes
echo "Checking for existing ChromeDriver processes...\n";
$processes = Tests\Support\Helper\ChromeDriverHelper::getChromeDriverProcesses();
if (!empty($processes)) {
    echo "Found existing ChromeDriver processes:\n";
    // print_r($processes);
}

// Clean up any existing ChromeDriver processes
echo "Cleaning up ChromeDriver processes...\n";
Tests\Support\Helper\ChromeDriverHelper::cleanupChromeDriver();

// Debug: Verify cleanup
echo "Verifying cleanup...\n";
$processes = Tests\Support\Helper\ChromeDriverHelper::getChromeDriverProcesses();
if (empty($processes)) {
    echo "No ChromeDriver processes found after cleanup.\n";
} else {
    echo "Warning: Some ChromeDriver processes still exist:\n";
    print_r($processes);
    
    // Try to force kill remaining processes
    foreach ($processes as $process) {
        if (preg_match('/\s*(\d+)\s+/', $process, $matches)) {
            $pid = $matches[1];
            echo "Force killing process with PID: {$pid}\n";
            Tests\Support\Helper\ChromeDriverHelper::forceKillProcess($pid);
        }
    }
}

// Set a random port for ChromeDriver
$randomPort = rand(10000, 65000);
putenv("CHROMEDRIVER_PORT={$randomPort}");
echo "Setting ChromeDriver port to: {$randomPort}\n";

// Ensure the WordPress test environment is loaded
if (!defined('ABSPATH')) {
    define('ABSPATH', dirname(__DIR__) . '/tests/_wordpress/');
}

// Load the WordPress test environment
require_once dirname(dirname(__DIR__)) . '/vendor/lucatume/wp-browser/src/TestCase/WPTestCase.php';
require_once dirname(dirname(__DIR__)) . '/vendor/lucatume/wp-browser/src/Module/WPLoader.php';
require_once dirname(dirname(__DIR__)) . '/vendor/lucatume/wp-browser/src/Extension/Symlinker.php'; 
