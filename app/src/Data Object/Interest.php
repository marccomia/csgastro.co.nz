<?php 
namespace SilverStripe\Lessons;

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataObject;
use SilverStripe\Versioned\Versioned;
use SilverStripe\Assets\Image;


class Interest extends DataObject{

    //Strongly recommended to defind @table_name your class will be your table name.  
    private static $table_name = 'Interest';

    private static $db = [
        'IntTitle' => 'Varchar',
    ];

    private static $has_one = [ 
        'IntPhoto'  => Image::class,
        'AboutPage' => AboutPage::class,
    ];

    private static $versioned_gridfield_extensions = true;
    
    /**
     * Right now, any changes we make will go to the live immediately, 
     * since they have no published/draft state. Let's start by adding versioning to those records.
     */

    private static $extensions = [
       Versioned::class,
    ];

    private static $owns = [
        'IntPhoto',
    ];

    private static $summary_fields = [
        'GridThumbnail' => '',
        'IntTitle'      => 'Title of Interest',
    ];

    public function getGridThumbnail() 
    {
        if($this->IntPhoto()->exists()) return $this->IntPhoto()->ScaleWidth(100); 

        return "(no image)";
    }
    /**
     * CMS Fields
     * @return FieldList
     */
    public function getCMSFields()
    {
        $fields = FieldList::create(
            TextField::create('IntTitle', 'Title'),
            $uploader = UploadField::create('IntPhoto', 'Photo')
        );  
        $uploader->setFolderName('Aboutme-photos/Interest-Photo');
        $uploader->getValidator()->setAllowedExtensions(['png','gif','jpeg','jpg']);
        return $fields;
    }
}