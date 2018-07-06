# Test Tracker

>[Live Demo](https://exam-tracker.herokuapp.com).
>
>**Username**: `test@testtracker.com`  |  **Password**: `helloworld`


_TestTracker_ is a Ruby on Rails project written to help me keep track of tests for classes I teach.  The project incoproates various gems to handle things from Authentication and Authorization, to sending emails and other tasks.  The secondary purpose of this project is to become more familiar with RoR and Database table relationships.

## Gems
This project makes use of the following gems:
1. [AutoPrefixer Rails](https://github.com/ai/autoprefixer-rails)
    * AutoPrefixer makes use of the ___CanIUse___ database and adds vender prefixes to css rules.
2. [Bootstrap-Sass](https://github.com/twbs/bootstrap-sass)
    * Project utilizes the Bootstrap 3 Framework
3. [Faker](https://github.com/stympy/faker)
    * Faker gem provides "real-looking test data" to populate dummy data during test.  Largely used in `db/seed.rb`
4. [Devise](https://github.com/plataformatec/devise)
    * Devise provides MVC solution for flexible authentication solution
5. [Pundit](https://github.com/varvet/pundit)
    * Authorization powered by Pundit
6. [Figaro](https://github.com/laserlemon/figaro)
    * Figaro is used to store sensitive configuration information in a _"Git ignored YAML file"_ and then _"loads its values into `ENV`"_.
7. [Font-Awesome-Rails](https://github.com/bokmann/font-awesome-rails)
    * Utilize FontAwesome fonts for icons, menus, and indicators throughout the project.


## Databases
This project uses several tables, with many relations.  This was the most fun part of the project for me, as I was able to fully visualize the relationship of the data I was collecting.  It also forced me to __really__ think about what it is I wanted to accomplish, and what information would be needed.

I used [_Lucidchart_](https://www.lucidchart.com) to create a [visual represenataion](https://www.lucidchart.com/documents/view/40673846-0f6f-480f-8636-4d25a73a25dc/0) of tables and data to be used within the project, and their relation to one another.
 
 
 ## Challenges
 I wanted to use AJAX Calls to make use of an empty modal on the page, thus allowing the page to update itself without needlessly leaving or refreshing the page.  This was incredibly valuable experience as it challenged me to look at the project differently and forced separation of responsibility.
 
 One area where I am still working is on updating the table "on the fly" using AJAX.  I'm finding this particular task both challenging and a **lot** of fun, I'm learning a great deal and loving it!
 
 ## Future Plans
 - [ ] Create an "Instructor Dashboard" giving stats about their classes
 - [ ] Integrate a messaging system to allow instructors to _IM_ each other, or send messages to their students via mass-mail
 - [ ] Add various reports such as "Students with Mising Makeups", or "All Failing Students", etc
 
 
As this is a work in progress, this **Future Plans** section is not complete, nor exhaustive.


 