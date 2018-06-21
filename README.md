# InputHealth Coding Project

## Overview 

The goal of this project is to try and emulate InputHealth's actual work environment. You should treat this project as if it was an actual application that we intended to release to our clients. 

## The Problem

The InputHealth support team constantly receives feature requests from our customers.

Often times there are multiple customers requesting the same feature.   It would be great if our clients could submit their requests online and vote for which features are most important to them.     

Having the feedback in centeral location with votes on important features would also help InputHealth's product manager figure out what to build next. 

If only we had an app for this...


## Backstory 
The product manager says they have come up with a brilliant idea to solve this issue once and for all!  

They hand you this wire frame of their idea for a feature tracking app. 

**Figure 1.1**
![Figure 1.1](https://www.evernote.com/shard/s393/sh/dbb1a8a9-a065-4959-8f68-875a90be87da/f1e525ee19973afaafe06fdfb0544c47/res/c9214309-4baf-4267-a764-72b79080a4eb/skitch.png "Figure 1.0")

After you have a chance to look over the wire frame, the product manager tells you "our Intern Jimmy has already done most of the work for you. You only need to add a simple counter that lets people up vote features". 

## The Goal
Update Jimmy's codebase(this app) to deliver a feature tracking app that solves the InputHealth support teams problem. 

## Objectives 

* Convert the feature requests index.html page _(figure 1.2)_ to render the feature requests page as a JS application. The updated feature_requests/index.html page should look something like this:


```
<div class='feature-requests'></div>

<script> 
  new MyAwesomeJSApp(container: 'feature-requests')
</script>
```

After your JS application starts it should make an API request to load the feature_requests/index JSON. The javascript app can be built in any JS framework of your choice (we use Backbone.js at InputHealth)


**Figure 1.2**
![Figure 1.2](https://www.evernote.com/shard/s393/sh/d6fef7e7-f7d9-440b-83c3-0096727c331f/f7581e173959c8a27504cac2c6a24f00/res/8c7e1a34-af58-4d6f-a5af-ac4286065b72/skitch.png "Feature Requests Index.html (figure 1.2)")

* Add the up vote feature Jimmy missed.  

* Update the app to fill in any logical gaps that Jimmy of the project manager did not consider. 

## Grading 

   Your submission will be judge based on the following criteria: 
    
  * Code quality. 
     * Is it functional? 
     * It is readable? 
     * Does it follow best practices?
  *   App usability 
    * Is the app something we could release to clients? Or are there gaps? 



## Bonus 
 * You have some design skills you want to flex.

## FAQ

  * __Do I need to write tests?__
     _Nope. Having or not having tests will not have any impact on your grading._ 
  * **Can I add this gem/lib?** _Yes. feel free to add the tools that make you productive_
  * **Can I use coffeescript/es6/typescipt?** _Yes. We use coffeescript at InputHealth._
 

## Deadline 
You have one week to submit the completed project. 


## Submission 
Please respond with a zip file containing your changes along with any notes on key decisions or changes. 


Best of luck and have fun :) 
