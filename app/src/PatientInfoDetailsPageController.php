<?php

namespace SilverStripe\Lessons;

use PageController;

class PatientInfoDetailsPageController extends PageController {
    

    public function CategoryList() {           
        return Category::get();
    }

    public function PatientInfoDetailsList() {
        $lists = PatientInfoDetailsPage::get();      
        return $lists;
    }

}