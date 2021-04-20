<?php
namespace SilverStripe\Lessons;

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataObject;

class AboutArticleObject extends DataObject{

    //Strongly recommended to defind @table_name your class will be your table name.  
    private static $table_name = 'AboutArticleObject';

    private static $db = [
        'Header'    => 'Varchar',
        'Body'      => 'HTMLText',
    ];

    private static $has_one = [ 
        'AboutPage' => AboutPage::class
    ];

    private static $summary_fields = [
        'Header'    => 'Header',
        'Body'      => 'Content of the Article',
    ];
    
    /**
     * @return FieldList
     */
    public function getCMSFields()
    {
        $fields = FieldList::create(
            TextField::create('Header', 'Header'),
            HTMLEditorField::create('Body','Content')            
        );
        return $fields;
    } 
}