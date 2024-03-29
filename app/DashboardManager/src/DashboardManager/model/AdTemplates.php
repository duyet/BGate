<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace model;

use Zend\InputFilter\Factory as InputFactory;
use Zend\InputFilter\InputFilter;
use Zend\InputFilter\InputFilterAwareInterface;
use Zend\InputFilter\InputFilterInterface;

class AdTemplates
    implements InputFilterAwareInterface
{
    public $AdTemplateID;
    public $TemplateName;
    public $IsMobileFlag;
    public $Width;
    public $Height;
    public $DateCreated;
    public $DateUpdated;
    
    public function exchangeArray($data)
    {
        $this->TemplateName       = (isset($data['TemplateName']))       ? $data['TemplateName']        : null;
        $this->IsMobileFlag       = (isset($data['IsMobileFlag']))       ? $data['IsMobileFlag']        : null;
        $this->Width              = (isset($data['Width']))              ? $data['Width']               : null;
        $this->Height             = (isset($data['Height']))             ? $data['Height']              : null;
        
    }
    
    public function getArrayCopy()
    {
    	return get_object_vars($this);
    }
    
    public function setInputFilter(InputFilterInterface $inputFilter)
    {
    	throw new \Exception("Not used");
    }
    
    public function getInputFilter()
    {
        
    }
}

?>