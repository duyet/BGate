<?php 

//chdir(dirname(__DIR__));

// Setup autoloading
if (file_exists('vendor/autoload.php')) {
    $loader = include 'vendor/autoload.php';
}

$_this = __file__;
define ('BASEDIR', str_replace("\\", "/", pathinfo($_this, PATHINFO_DIRNAME)));

$libraryPath = false;
if (is_dir(BASEDIR . '/library')) {
    $libraryPath = BASEDIR . '/library';
}

if ($libraryPath) {
    if (isset($loader)) {
        $loader->add('Zend', $libraryPath);
    } else {
        include $libraryPath . '/Zend/Loader/AutoloaderFactory.php';
        Zend\Loader\AutoloaderFactory::factory(array(
            'Zend\Loader\StandardAutoloader' => array(
                'autoregister_zf' => true
            )
        ));
        require $libraryPath . '/Zend/Stdlib/compatibility/autoload.php';
        require $libraryPath . '/Zend/Session/compatibility/autoload.php';
    }
}

// Run the application!
Zend\Mvc\Application::init(require 'config/application.config.php')->run();