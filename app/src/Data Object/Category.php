<?php 
namespace SilverStripe\Lessons;

use CallToActionDataObject;
use SilverStripe\ORM\DataObject;

class Category extends DataObject{

    private static $table_name = "Category";
    
    private static $db = [
        'Title' => 'Varchar',
    ];
    
    private static $belongs_many_many = [
    'PatientInfoDetailsPage'    => PatientInfoDetailsPage::class,
    'FeaturePage'               => Feature::class,
    'CallToAction'              => CallToActionDataObject::class,
    ];
}