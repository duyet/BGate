<?php 
return array(
'mail' => array(
	'admin-email' => array(
			'email' => 'vanduyetdev@gmail.com',
			'name'	=> 'BGate Admin'
			),
	'reply-to' => array(
				'email' => 'admin@infosys.uit.edu.vn',
				'name'	=> 'BGate Ad Server'
			),
	/*
	 * Here you can elect to subscribe to get
	 * emails about a certain kind of event
	 * such as user sign-ups, ad zone changes,
	 * website domain additions, and
	 * ad campaign changes
	 */
	'subscribe' => array(
		'zones' 			=> true,
		'campaigns'			=> true,
		'signups'			=> true,
		'websites'			=> true,
		'recover_password'  => true,
		// dashboard user emails settings
		'user_zones'		=> true,
		'user_domains'		=> true,
		'user_ad_campaigns'	=> true,
		),
    'transport' => array(
    	// if SMTP is false sendmail will be used
    	'smtp'	  => true,
        'options' => array(
            'name'              => 'smtp.sendgrid.net',
            'host'              => 'smtp.sendgrid.net',
            'port'              => 587,
            'connection_class'  => 'plain',
            'connection_config' => array(
                'username' => 'nmadtu',
                'password' => '123tranphu',
                'ssl' => 'tls'
            ),
        ),  
    ),
),
);
