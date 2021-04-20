<?php
namespace SilverStripe\Lessons;

use CallToActionDataObject;
use Embed\Providers\Html;
use Page;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;

class HomePage extends Page {
    
    private static $table_name = 'HomePage';

    private static $db = [
        'TitleOne'      => 'Varchar',
        'TitleTwo'      => 'Varchar',
        'ParagraphOne'  => 'Text',        
        'LeftContent'   => 'HTMLText',
        'Header'        => 'Varchar',
        'Body'          => 'HTMLText',
        'RightContent'  => 'HTMLText',
        'HeaderTwo'     => 'Varchar',
        'BodyTwo'       => 'HTMLText',       
    ];

    private static $has_one = [
        'HomeBannerPhoto' => Image::class,    
    ];

    private static $has_many = [
        'CallToActions'=> CallToActionDataObject::class,
    ];

    private static $owns = [
        'HomeBannerPhoto',
    ];

    /**
     * CMS Fields
     * @return FieldList
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        //declaring sortable grid
        $conf = GridFieldConfig_RelationEditor::create(10);
        $conf->addComponent(new GridFieldSortableRows('SortOrder'));
        //home banner tab
        $fields->addFieldsToTab('Root.Home Banner', [
            TextField::create('TitleOne', 'First Line'),
            TextField::create('TitleTwo', 'Second Line'),
            TextareaField::create('ParagraphOne','Short Desciprtion'),
            $uploader = UploadField::create('HomeBannerPhoto', 'Top Photo')
        ]);
        //home Page Article Tab
        $fields->addFieldsToTab('Root.Home Page Article', [
            HTMLEditorField::create('LeftContent', 'Left Embeded Video')->setDescription('For best result add emeded video only'),
            TextField::create('Header', 'Right Side Header'),
            HTMLEditorField::create('Body','Short Content'),           
            HTMLEditorField::create('RightContent', 'Right Embeded Video')->setDescription('For best result add emeded video only'),
            TextField::create('HeaderTwo', 'Left Side Header'),
            HTMLEditorField::create('BodyTwo','Short Content'),            
        ]);
        // Call to Action Tab
        $fields->addFieldToTab(
            'Root.Call To Action', 
            GridField::create(
                'CallToActions', 
                'CallToActions', 
                $this->CallToActions(), 
                $conf
            )
        );

        $uploader->getValidator()->setAllowedExtensions(['png', 'jpeg', 'jpg']);
        $uploader->setFolderName('HomePage/Banner-photos');      
        return $fields;
    }
}