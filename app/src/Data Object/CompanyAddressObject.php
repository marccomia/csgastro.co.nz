<?php
namespace SilverStripe\Lessons;

use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\NumericField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataObject;

class CompanyAddressObject extends DataObject{

    //Strongly recommended to defind @table_name your class will be your table name.  
    private static $table_name = 'CompanyAdressObject';

    private static $db = array(
        'cName' => 'Varchar',
        'cAddress' =>'Varchar',
        'cPhone' => 'Varchar',
        'cFax' => 'Varchar',
        'cMobile' => 'Varchar',
        'cEmail' => 'Varchar',   
    );

    private static $has_one = array(
        'ContactPage' => ContactPage::class
    );

    private static $summary_fields = array(
        'cName' => 'Hospital Name',
        'cAddress' => 'Hosputal Address',
    );

     /**
     * @return FieldList
     */
    public function getCMSFields()
    {
        $fields = FieldList::create(
            TextField::create('cName', 'Hospital Name'),
            TextareaField::create('cAddress','Hospital Address'),            
            TextField::create('cPhone', 'Phone number'),
            TextField::create('cFax', 'Fax number'),
            TextField::create('cMobile', 'Mobile number'),
            EmailField::create('cEmail', 'Email Address')            
        );
        return $fields;
    } 

}