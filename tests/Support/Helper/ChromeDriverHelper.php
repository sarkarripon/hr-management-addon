<?php

namespace Tests\Support\Helper;

class ChromeDriverHelper
{
    /**
     * Kill any existing ChromeDriver processes
     */
    public static function cleanupChromeDriver()
    {
        // echo "Starting aggressive ChromeDriver cleanup...\n";

        // First, try to kill all Chrome processes (this is more aggressive)
        if (PHP_OS_FAMILY === 'Darwin') {
            // For macOS
            exec("pkill -9 -f 'Google Chrome'");
            exec("pkill -9 -f 'Chrome'");
            exec("pkill -9 -f chromedriver");
            exec("pkill -9 -f 'ChromeDriver'");
            
            // Kill processes on specific ports
            $ports = [23459, 23535, 44444, 9515];
            foreach ($ports as $port) {
                exec("lsof -ti:{$port} | xargs kill -9 2>/dev/null");
            }
        } elseif (PHP_OS_FAMILY === 'Windows') {
            // For Windows
            exec("taskkill /F /IM chrome.exe");
            exec("taskkill /F /IM chromedriver.exe");
        } else {
            // For Linux
            exec("pkill -9 -f chrome");
            exec("pkill -9 -f chromedriver");
        }

        // Wait for processes to be killed
        sleep(2);

        // Verify cleanup
        $processes = self::getChromeDriverProcesses();
        if (!empty($processes)) {
            // echo "Warning: Some processes still exist after cleanup:\n";
            print_r($processes);
            
            // Try one more time with more force
            if (PHP_OS_FAMILY === 'Darwin') {
                exec("killall -9 'Google Chrome' 2>/dev/null");
                exec("killall -9 'Chrome' 2>/dev/null");
                exec("killall -9 chromedriver 2>/dev/null");
            }
        }

        // Final wait
        sleep(1);
    }

    /**
     * Check if ChromeDriver is running on a specific port
     *
     * @param int $port
     * @return bool
     */
    public static function isChromeDriverRunning($port)
    {
        $connection = @fsockopen('127.0.0.1', $port);
        if (is_resource($connection)) {
            fclose($connection);
            return true;
        }
        return false;
    }

    /**
     * Get a list of all ChromeDriver processes
     *
     * @return array
     */
    public static function getChromeDriverProcesses()
    {
        $processes = [];
        if (PHP_OS_FAMILY === 'Darwin') {
            // Get Chrome processes
            exec("ps aux | grep -i 'chrome' | grep -v grep", $chromeProcesses);
            // Get ChromeDriver processes
            exec("ps aux | grep -i 'chromedriver' | grep -v grep", $driverProcesses);
            
            // Combine and format processes
            foreach (array_merge($chromeProcesses, $driverProcesses) as $process) {
                if (preg_match('/^\S+\s+(\d+)/', $process, $matches)) {
                    $processes[] = $matches[1];
                }
            }
        } elseif (PHP_OS_FAMILY === 'Windows') {
            exec("tasklist /FI \"IMAGENAME eq chrome.exe\" /FI \"IMAGENAME eq chromedriver.exe\" /NH", $processes);
            $processes = array_map(function($process) {
                if (preg_match('/\s+(\d+)\s+/', $process, $matches)) {
                    return $matches[1];
                }
                return null;
            }, $processes);
            $processes = array_filter($processes);
        } else {
            // For Linux
            exec("ps aux | grep -i 'chrome' | grep -v grep", $chromeProcesses);
            exec("ps aux | grep -i 'chromedriver' | grep -v grep", $driverProcesses);
            
            foreach (array_merge($chromeProcesses, $driverProcesses) as $process) {
                if (preg_match('/^\S+\s+(\d+)/', $process, $matches)) {
                    $processes[] = $matches[1];
                }
            }
        }
        
        return array_values(array_unique($processes));
    }

    /**
     * Force kill a process by PID
     *
     * @param int $pid
     */
    public static function forceKillProcess($pid)
    {
        if (PHP_OS_FAMILY === 'Darwin') {
            exec("kill -9 {$pid} 2>/dev/null");
        } elseif (PHP_OS_FAMILY === 'Windows') {
            exec("taskkill /F /PID {$pid}");
        } else {
            exec("kill -9 {$pid} 2>/dev/null");
        }
    }
} 