<?php

/**
 * Delivery Configuration Override
 */
function getBaseUrl() {
	// output: /myproject/index.php
	$currentPath = $_SERVER['PHP_SELF'];

	// output: Array ( [dirname] => /myproject [basename] => index.php [extension] => php [filename] => index )
	$pathInfo = pathinfo($currentPath);
	
	if ($pathInfo["dirname"] == "/"):
		$pathInfo["dirname"] = '';
	endif;
	// output: localhost
	$hostName = $_SERVER['HTTP_HOST'];

	// output: http://
	$protocol = strtolower(substr($_SERVER["SERVER_PROTOCOL"],0,5))=='https://'?'https://':'http://';

	// return: http://localhost/myproject/
	return $protocol.$hostName.$pathInfo['dirname']."/";
}
$request_path =  getBaseUrl();
return array(
		'delivery' => array(
				'url' => $request_path."delivery/impress",
				'adtag' => $request_path."bgate.js",
				'in_house_ad_grep' => $request_path."delivery",
                'cache_file_location' => "cache/delivery/"
		),
);
