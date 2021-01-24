<?php
namespace SilverStripe\Lessons;

use Page;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HtmlEditorField;


class AboutPage extends Page {

    //Strongly recommended to defind @table_name your class will be your table name.  
    private static $table_name = 'AboutPage';

    private Static $db = array(
        'MainTitle' => 'Varchar',
    );

    private static $has_one = array(
        'Photo' => Image::class,
        'Photo2' => Image::class        
    );      

    private static $has_many = array(
        'AboutArticlesObject' => AboutArticleObject::class
    );

    private static $owns = array(
        'Photo',
        'Photo2',
    );



    /**
     * CMS Fields
     * @return FieldList
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', $photo = UploadField::create('Photo', 'Photo One'), 'Content' );
        $fields->addFieldToTab('Root.Main', $photo2 = UploadField::create('Photo2', 'Photo Two'), 'Content' );
        $fields->addFieldToTab('Root.Main', TextField::create('MainTitle', 'Main Header'), 'Content' );

        $fields->addFieldToTab('Root.Article Section', GridField::create(
            'AboutArticlesObject',
            'Adding a new Article on About Page',
            $this->AboutArticlesObject(),
            GridFieldConfig_RecordEditor::create()
        ));   

        $photo->getValidator()->setAllowedExtensions(['png', 'jpeg', 'jpg']);
        $photo->setFolderName('Aboutme-photos');
        $photo2->getValidator()->setAllowedExtensions(['png', 'jpeg', 'jpg']); 
        $photo2->setFolderName('Aboutme-photos');

        return $fields;

    }
}