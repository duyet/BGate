<?php 

//chdir(dirname(__DIR__));

// Setup autoloading
if (file_exists('vendor/autoload.php')) {
    $loader = include 'vendor/autoload.php';
}

$zendPath = false;

if (is_dir('vendor/ZF2/library')) {
    $zendPath = 'vendor/ZF2/library';
} elseif (getenv('ZF2_PATH')) {
    $zendPath = getenv('ZF2_PATH');
} elseif (get_cfg_var('zf2_path')) {
    $zendPath = get_cfg_var('zf2_path');
}

if ($zendPath) {
    if (isset($loader)) {
        $loader->add('Zend', $zendPath);
    } else {
        include $zendPath . '/Zend/Loader/AutoloaderFactory.php';
        Zend\Loader\AutoloaderFactory::factory(array(
            'Zend\Loader\StandardAutoloader' => array(
                'autoregister_zf' => true
            )
        ));
        require $zendPath . '/Zend/Stdlib/compatibility/autoload.php';
        require $zendPath . '/Zend/Session/compatibility/autoload.php';
    }
}

// Run the application!
Zend\Mvc\Application::init(require 'config/application.config.php')->run();