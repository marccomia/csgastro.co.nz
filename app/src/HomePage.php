<?php
namespace SilverStripe\Lessons;

use CallToActionDataObject;
use Embed\Providers\Html;
use Page;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\Assets\File;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;

class HomePage extends Page {
    
    private static $table_name = 'HomePage';

    private static $db = [
        'TitleOne' => 'Varchar',
        'TitleTwo' => 'Varchar',
        'ParagraphOne' => 'Text',
        'VideoOneTitle' => 'Varchar',
        'VideoTwoTitle' => 'Varchar',
        'VideoThreeTitle' => 'Varchar',
        'VideoFourTitle' => 'Varchar',
        'VideoOneContent' => 'HTMLText',
        'VideoTwoContent' => 'HTMLText',
        'VideoThreeContent' => 'HTMLText',
        'VideoFourContent' => 'HTMLText',
             
    ];

    private static $has_one = [
        'HomeBannerPhoto' => Image::class,    
        'VideoOne' => File::class,
        'VideoTwo' => File::class,
        'VideoThree' => File::class,
        'VideoFour' => File::class

    ];

    private static $has_many = [
        'CallToActions'=> CallToActionDataObject::class,
    ];

    private static $owns = [
        'HomeBannerPhoto',
        'VideoOne',
        'VideoTwo',
        'VideoThree',
        'VideoFour',
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
        $fields->addFieldsToTab('Root.Endoscopy Videos', [
            TextField::create('VideoOneTitle', 'Title'),
            $videoOne = UploadField::create('VideoOne', 'Video One'),
            HTMLEditorField::create('VideoOneContent', 'Content'),
    
            TextField::create('VideoTwoTitle', 'Title'),
            $videoTwo = UploadField::create('VideoTwo', 'Video Two'),
            HTMLEditorField::create('VideoTwoContent','Content'),     

            TextField::create('VideoThreeTitle', 'Title'),
            $videoThree = UploadField::create('VideoThree', 'Video Three'),
            HTMLEditorField::create('VideoThreeContent', 'Content'),
            
            TextField::create('VideoFourTitle', 'Title'),
            $videoFour = UploadField::create('VideoFour', 'Video Four'),
            HTMLEditorField::create('VideoFourContent','Content'),        
 
                
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
        
        $videoFormat = ['mp4','ogg'];
        $size = 1024*1024*1024;
        $videoOne->getValidator()->setAllowedMaxFileSize($size);
        $videoOne->getValidator()->setAllowedExtensions($videoFormat);
        $videoTwo->getValidator()->setAllowedMaxFileSize($size);
        $videoTwo->getValidator()->setAllowedExtensions($videoFormat);
        $videoThree->getValidator()->setAllowedMaxFileSize($size);
        $videoThree->getValidator()->setAllowedExtensions($videoFormat);
        $videoFour->getValidator()->setAllowedMaxFileSize($size);
        $videoFour->getValidator()->setAllowedExtensions($videoFormat);

        $uploader->getValidator()->setAllowedExtensions(['png', 'jpeg', 'jpg']);
        $uploader->setFolderName('HomePage/Banner-photos');      
        return $fields;
    }
}