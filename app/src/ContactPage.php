<?php
namespace SilverStripe\Lessons;

use Page;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

use SilverStripe\Forms\TextField;

class ContactPage extends Page {

    private static $table_name = 'ContactPage';

    private static $db = array(
        'WebsiteEmailAddress' => 'Varchar(50)',
        'MapEmbedded' => 'HTMLText',
        'MapEmbeddedTwo' => 'HTMLText',
        'GetInTouchContent' => 'HTMLText'
    );

    private static $has_one = array(
        'ImageGetInTouch' => Image::class,
    );


    private static $has_many = array(
        'CompaniesAddress' => CompanyAddressObject::class
    );



    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('MapEmbedded', 'Northsore Hospital')->setDescription('Map Embeded One'), 'Content');
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('MapEmbeddedTwo', 'West Hospital')->setDescription('Map Embeded Two'), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('WebsiteEmailAddress', 'Email Address')->setDescription('note: Website email address or your main emailaddress'), 'MapEmbedded');

        $fields->addFieldsToTab('Root.Company Address', GridField::create(
            'CompaniesAddress',
            'Companyies Address Details',
            $this->CompaniesAddress(),
            GridFieldConfig_RecordEditor::create()

        ));

        $fields->addFieldsToTab('Root.Get In Touch', [
            HTMLEditorField::create('GetInTouchContent','Footer Content'),

         
        ]);

        return $fields;
    }


    
}