<?php

namespace SilverStripe\Lessons;

use Page;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Lumberjack\Model\Lumberjack;

class PatientInformationPage extends Page {
  
    private static $table_name = 'PatientInformationPage';     
      
    private static $extensions = [
        Lumberjack::class,
    ];

    private static $allowed_children = [
        PatientInfoDetailsPage::class,
    ];  
	  
}