<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace _factory;

use Zend\Db\TableGateway\Feature;

class PublisherWebsiteMarkup extends \_factory\CachedTableRead
{

	static protected $instance = null;

	public static function get_instance() {

		if (self::$instance == null):
			self::$instance = new \_factory\PublisherWebsiteMarkup();
		endif;
		return self::$instance;
	}


    function __construct() {

            $this->table = 'PublisherWebsiteMarkup';
            $this->featureSet = new Feature\FeatureSet();
            $this->featureSet->addFeature(new Feature\GlobalAdapterFeature());
            $this->initialize();
    }

    public function get_row($params = null) {
        // http://files.zend.com/help/Zend-Framework/zend.db.select.html

        $obj_list = array();

        $resultSet = $this->select(function (\Zend\Db\Sql\Select $select) use ($params) {
        	foreach ($params as $name => $value):
        	$select->where(
        			$select->where->equalTo($name, $value)
        	);
        	endforeach;
        	$select->limit(1, 0);
        	$select->order('PublisherWebsiteID');

        }
        	);

    	    foreach ($resultSet as $obj):
    	         return $obj;
    	    endforeach;

        	return null;
    }

    public function get($params = null) {
        	// http://files.zend.com/help/Zend-Framework/zend.db.select.html

        $obj_list = array();

    	$resultSet = $this->select(function (\Zend\Db\Sql\Select $select) use ($params) {
        		foreach ($params as $name => $value):
        		$select->where(
        				$select->where->equalTo($name, $value)
        		);
        		endforeach;
        		//$select->limit(10, 0);
        		$select->order('PublisherWebsiteID');

        	}
    	);

    	    foreach ($resultSet as $obj):
    	        $obj_list[] = $obj;
    	    endforeach;

    		return $obj_list;
    }

    public function insertPublisherWebsiteMarkup(\model\PublisherWebsiteMarkup $PublisherWebsiteMarkup) {
    	$data = array(
    	        'PublisherWebsiteID'    => $PublisherWebsiteMarkup->PublisherWebsiteID,
    			'MarkupRate'        	=> $PublisherWebsiteMarkup->MarkupRate
    	);

    	$this->insert($data);
    }

    public function updatePublisherWebsiteMarkup(\model\PublisherWebsiteMarkup $PublisherWebsiteMarkup) {
    	$data = array(
    	        'PublisherWebsiteID'    => $PublisherWebsiteMarkup->PublisherWebsiteID,
    			'MarkupRate'        	=> $PublisherWebsiteMarkup->MarkupRate
    	);

    	$publisher_website_markup_id = $PublisherWebsiteMarkup->PublisherWebsiteID;
    	$this->update($data, array('PublisherWebsiteID' => $publisher_website_markup_id));
    }


};
