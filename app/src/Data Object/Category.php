<?php 
namespace SilverStripe\Lessons;

use CallToActionDataObject;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataObject;

class Category extends DataObject{

    private static $table_name = "Category";
    
    private static $db = array(
        'Title' => 'Varchar'
    );
    
    private static $belongs_many_many =array(
    'PatientInfoDetailsPage' => PatientInfoDetailsPage::class,
    'FeaturePage' => Feature::class,
    'CallToAction' => CallToActionDataObject::class,
    );


}