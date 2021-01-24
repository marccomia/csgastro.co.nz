<?php

namespace SilverStripe\Lessons;

use PageController;
use SilverStripe\ORM\PaginatedList;

class HomePageController extends PageController {

    public function AboutPage() {

        $page = AboutPage::get()->First();
        return $page;      
    }

    public function PatientInfo() {

        $list = PatientInfoDetailsPage::get();

        $pages =  new PaginatedList($list, $this->getRequest());
        $pages->setPageLength(4);
        return $pages;
    }

  
    
}