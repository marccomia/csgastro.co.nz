<?php 

namespace SilverStripe\Lessons;

use SilverStripe\Admin\ModelAdmin;

class CategoryAdmin extends ModelAdmin
{
    private static $menu_title = 'Patient Info Categories';
    private static $url_segment = 'Categories';
    private static $menu_icon_class = 'font-icon-block-file-list';
    private static $managed_models = [
        Category::class,
    ];

    
}