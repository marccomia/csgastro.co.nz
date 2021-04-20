<?php

namespace SilverStripe\Lessons;

use Page;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\TextField;

class FAQPage extends Page {
   
    
    private static $has_many = [
        'Frquestnlyaskquestions' => Frequentlyaskquestion::class,
    ];

    /**
     * CMS Fields
     * @return FieldList
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldsToTab('Root.Frequently Ask Question', GridField::create(
            'Frquestnlyaskquestions',
            'FAQ Details',
            $this->Frquestnlyaskquestions(),
            GridFieldConfig_RecordEditor::create()
        ));
        return $fields;        
    }
}
