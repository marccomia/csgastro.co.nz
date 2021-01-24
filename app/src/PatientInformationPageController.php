<?php

namespace SilverStripe\Lessons;

use PageController;
use SilverStripe\ORM\PaginatedList;

class PatientInformationPageController extends PageController {



    public function PatientInfoDetails() {

        $list = PatientInfoDetailsPage::get();

        $pages =  new PaginatedList($list, $this->getRequest());
        $pages->setPageLength(16);
        return $pages;
    }


    public function CategoryList() {

        return Category::get();
    }
    
}