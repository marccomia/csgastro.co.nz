<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\ListboxField;
use SilverStripe\Forms\TextField;
use SilverStripe\Lessons\Category;
use SilverStripe\Lessons\HomePage;
use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\Image;

class CallToActionDataObject extends DataObject {

    private static $table_name = ' CallToActionDataObject';

    private static $db = [
        'Title'         => 'Varchar(50)',
        'LinksToAction' => 'Varchar(100)',
        'SortOrder'     => 'Int',
    ];

    private static $indexes = [
        'SortOrder' => true,
    ];

    private static $has_one = [
        'HomePage' => HomePage::class,
        'CTAimage' => Image::class,
    ];

    private static $owns = [
        'CTAimage',
    ];

    private static $summary_fields = [
        'GridThumbnail' => '',
        'Title'         => 'Title of Interest',
    ];

    private static $many_many = [
        'Categories' => Category::class,
    ];

    private static $default_sort = 'SortOrder';

       
    public function getGridThumbnail()
    {
        if($this->CTAimage()->exists()) return $this->CTAimage()->ScaleWidth(100);
        
        return "(no image)";
    }

    public function getCMSFields()
    {
        $fields = FieldList::create(
            TextField::create('Title', 'Title'),
            ListboxField::create(
                'Categories',
                'Select Categories',
                Category::get()->Map('ID', 'Title')             
            ),
            TextField::create('LinksToAction', 'Direct Link')->setDescription('Link to the page (manually added)'),        
            $upload = UploadField::create('CTAimage', 'Image')->setDescription('Image Size 400x400 pixel')
        );       
       
        $upload->setFolderName('Homepage-photos/Call-To-Action');
        $upload->getValidator()->setAllowedExtensions(['png','gif','jpeg','jpg']);   
        return $fields;
    }
}

