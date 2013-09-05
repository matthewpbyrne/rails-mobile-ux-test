Feature:  Different home page views

   Scenario: Request from desktop browser
   	Given I am using a desktop browser
   	When I visit the home page
   	Then I should see the desktop home page

   Scenario: Request from mobile browser for footer-menu
   	Given I am using a mobile browser
   	When I visit the home page version "footer-menu"
   	Then I should see a page with a menu in the footer
   	
   Scenario: Request from mobile browser for sidebar-menu
   	Given I am using a mobile browser
   	When I visit the home page version "sidebar-menu"
   	Then I should see a page with a menu in the sidebar.