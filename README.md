# JqueryRegex

Rails gem based on James Padolsey's jquery-regex selector

http://james.padolsey.com/javascript/regex-selector-for-jquery/

## Installation

Add this line to your application's Gemfile:

    gem 'jquery_regex'

And then execute:

    $ bundle

Include assets:

    // In application.js
    //= require jquery_regex

## Usage

It’s pretty simple to use, you need to pass an attribute and a regular expression to match against. The regular expression must be in non-literal notation; so replace all backslashes with two backslashes (e.g. ^\w+$ -> ^\\w+$).
    
    // Select all elements with an ID starting a vowel:
    $(':regex(id,^[aeiou])');
 
    // Select all DIVs with classes that contain numbers:
    $('div:regex(class,[0-9])');
 
    // Select all SCRIPT tags with a SRC containing jQuery:
    $('script:regex(src,jQuery)');
 
    // Yes, I know the last example could be achieved with 
    // CSS3 attribute selectors; it's just an example...

Note: All searches are case insensitive; you can change this by removing the ‘i’ flag in the plugin.
This plugin also allows you to query CSS styles with regular expressions, for example:

    // Select all elements with a width between 100 and 300:
    $(':regex(css:width, ^[1-3]\\d{2}px$)');
     
    // Select all NON block-level DIVs:
    $('div:not(:regex(css:display, ^block$))');
    Additionally it allows you to query data strings added to elements via jQuery’s ‘data’ method:
    // Add data property to all images (just an example);
    $('img').each(function(){
        $(this).data('extension', $(this)[0].src.match(/\.(.{1,4})$/)[1]);
    });
     
    // Select all images with PNG or JPG extensions:
    $('img:regex(data:extension, png|jpg)');

original work => James Padolsey

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
