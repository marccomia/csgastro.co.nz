<?php

namespace SilverStripe\Lessons;

use Page;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\ListboxField;

class PatientInfoDetailsPage extends Page {

    private static $can_be_root = false;
    
    //Strongly recommended to defind @table_name your class will be your table name.  
    private static $table_name = 'PatientInfoDetailsPage';
    
    private static $db = [
      'Authortxt'   => 'Varchar',
      'Excerpt'     => 'Text', 
    ];

    //foreign key or relationship of an object
    private static $has_one = [
        'Photo' => Image::class,
    ];

    private static $many_many = [
        'Categories' => Category::class,
    ];

    private static $owns = [
        'Photo',
    ];

    private static $show_in_sitetree = false;
  
    private static $allowed_children = [
        PatientInfoDetailsPage::class,
    ];
  
    public function getCMSFields() 
    {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', $photo = UploadField::create('Photo')
            ->setDescription("This is for the main Photo of this Page"), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('Authortxt','Author')
            ->setDescription("Example Dr. Cameron Schauer"), 'Content');   
        $fields->addFieldToTab('Root.Main', TextareaField::create('Excerpt','Excerpt')
            ->setDescription("take (a short extract) from a text.")->setRows(2), 'Content');
        $fields->addFieldToTab('Root.Main',ListboxField::create(
            'Categories',
            'Select Categories',
            Category::get()->Map('ID', 'Title')
        ), 'Content');
       
        $photo->getValidator()->setAllowedExtensions(['png', 'jpeg', 'jpg']);
        $photo->setFolderName('IBD-photos');
        return $fields;    
    }
    /**
     * @return Categories into String
     */
    public function CategoriesList()
    {
        if($this->Categories()->exists()) return implode(', ', $this->Categories()->column('Title'));
        
        return null;
    }
    


    
}