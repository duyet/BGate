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
		'zones' 			=> false,
		'campaigns'			=> false,
		'signups'			=> false,
		'websites'			=> false,
		'recover_password'  => false,
		// dashboard user emails settings
		'user_zones'		=> false,
		'user_domains'		=> false,
		'user_ad_campaigns'	=> false,
		),
    'transport' => array(
    	// if SMTP is false sendmail will be used
    	'smtp'	  => false,
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
