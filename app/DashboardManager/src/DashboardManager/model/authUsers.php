<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace model;

class authUsers {
	
    public $user_id;
    public $user_login;
    public $user_email;
    public $user_password;
    public $user_password_salt;
    public $user_2factor_secret;
    public $user_fullname;
    public $user_description;
    public $user_enabled;
    public $user_verified;
    public $user_agreement_accepted;
    public $PublisherInfoID;
    public $DemandCustomerInfoID;
    public $locale;
    public $create_date;
    public $update_date;
    public $user_agreement_acceptance_date;
    public $user_permission_cache;
    public $user_role;
}

?>