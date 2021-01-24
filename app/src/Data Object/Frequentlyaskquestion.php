<?php
namespace SilverStripe\Lessons;

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataObject;

class Frequentlyaskquestion extends DataObject{

    //Strongly recommended to defind @table_name your class will be your table name.  
    private static $table_name = 'Frequentlyaskquestion';

    private static $db = array(
        'FAQtitle' => 'Varchar',
        'FAQdescription' => 'HTMLText' 
    );

    private static $has_one = [
        'FAQPage' => FAQPage::class
    ];

    private static $summary_fields = [
        'FAQtitle' => 'Question',
        'FAQdescription' => 'Explanation',
    ];

    /**
     * CMS Fields
     * @return FieldList
     */
    public function getCMSFields(){
        $fields = FieldList::create(
            TextField::create('FAQtitle', 'Title'),
            HTMLEditorField::create('FAQdescription', 'Body')
    
        );  
        return $fields;
    }

}