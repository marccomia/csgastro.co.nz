<?php
namespace SilverStripe\Lessons;

use GraphQL\Error\Debug;
use PageController;
use SilverStripe\Control\Email\Email;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\NumericField;
use SilverStripe\Forms\RequiredFields;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;

class ContactPageController extends PageController {
    
    private static $allowed_actions = [
        'ContactForm',
    ];

    public function ContactForm()
    {
        $fields = new FieldList(
            TextField::create('Name'),
            EmailField::create('Email'),
            NumericField::create('Phone'),
            DateField::create('DOB', 'Date of Birth'),
            TextField::create('GP','Name of GP and Medical Center'),
            TextareaField::create('Message')
        );

        $actions = new FieldList( new FormAction('submit', 'Submit'));
        $validator = new RequiredFields('Name', 'Email', 'Phone', 'DOB', 'GP', 'Message');
        $form = New Form(
            $this, 
            'ContactForm', 
            $fields, 
            $actions, 
            $validator
        );      
        $form->enableSpamProtection();
        $data = $this->getRequest()->getSession()->get("FormData.{$form->getName()}.data");

        return $data ? $form->loadDataFrom($data) : $form;
    }

    public function submit($data, $form)
    {
        $contactpage = ContactPage::get()->First();
        $session = $this->getRequest()->getSession();
        $session->set("FormData.{$form->getName()}.data", $data);
        
        $email = new Email();

        $email->setTo($contactpage->WebsiteEmailAddress);
        $email->setFrom($data['Email']);
        $email->setSubject("Contact Message from CS Gastro Website");

        $messageBody =" 
            <p><strong>Name</strong> {$data['Name']}</p>
            <p><strong>Email</strong> {$data['Email']}</p>
            <p><strong>Phone:</strong> {$data['Phone']}</p>
            <p><strong>Date of Birth:</strong> {$data['DOB']}</p>
            <p><strong>Name of GP / Medical Center</strong> {$data['GP']}</p>
            <p><strong>Message:</strong> {$data['Message']}</p>
        ";
        $email->setBody($messageBody);
        if ($email->send()) {
            $session->clear("FormData.{$form->getName()}.data");
            $form->sessionMessage('Thanks for your message - I will be in touch with you shortly','good');
        } else $form->sessionMessage('Oops! Something wrong please try again','bad');
        
        return $this->redirectBack();
    }
}