# BDD and Cucumber

### BDD

* Behavioural driven development
* Functional testing - some connection to business requirements
* Functionl specifications and business requirements 
* Customer collaboration
* Can be automated
* Used across multiple languages - cucumber used for ruby, java, javscript etc.
* Other languages have other BDD tools
* Specification by example 
* Feature could be registration
* As a user, I want to register for an account
* Come up with scenarios
* Cucumber looks for a **.feature** file
* **GIVEN**, **WHEN** and **THEN**
* Given could be that necessary details added, when account selected and confirmed, then account set up
* Setup, acion, assertion
* Imperative and declaritive BDD
* Quite imperative - given all the information needed
* If more than three ands, maybe need another test
* **Don't use 'or' or 'but'**
* Two separate tests - can't test both at the same time
* Declarative scenario - less information in the scenario

### Cucumber

* Cucumber came from rspec
* Run ```cucumber --init```
* Generates env.rb - runs before anything else, requires, setup etc.
* Like spec helper file
* Feature files - .feature
* Anything written under the feature file is the specification
* Feature files are parsed by cucumber
* Have to think about what a valid error means
* Testers have to be in room when user stories are being written
* Step definitions like spec files
* Run ``cucumber 'file name'``` and it will scaffold the step definition
* Does not handle ands, so change it to And
* A bit like an rspec 'it' statement
* Cop lib into features directory
* Include capybara with cucumber
* Do setup for capybara and browser, driver etc.
* config.app_host = 'https://www.bbc.co.uk' - setting base uri
* Can require rspec so that 'expect' can be used
* Capybara can find elements on the page, but is not used for validation
* Cucumber won't repeat anything that's already been written

### Tags

* Can use tags - e.g. '@test' - then run ```cucumber -t test```
* Can put tags on all of the scenarios necessary, run the tests to create a user story/workflow
* Tests can have multiple tags, separated by a comma
* Need to keep track of and maintain tags

### Reports

* ```cucumber -f html -o reports/example1.html```
* Passing the formatter a value
* Have to make directory of reports
* The o is referring to the output, and where the reports are going
* Will create the file as necessary