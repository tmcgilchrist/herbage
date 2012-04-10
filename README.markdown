# Plant / Garden DB
Rails application to store plants in our garden. Include pictures with clickable
areas that link to the plant in the picture. Similar to how flickr picture can
be tagged.

Features:
 * Searchable catalogue of plants
 * Pictures of garden tagged with plant information
 * Individual Plant pages.
 * Map of areas with plantings
 * Recommendations on plants or feedback on how they are going.
 * Map with flowering slider, showing what will be flowering at particular times
   so you can plan a garden around it.
 * Intelligent agent to recommend fixes/solutions to common plant issues.
   ie describe leaf colour, soil condition, etc and come up with some solutions to try.


## Location

https://bitbucket.org/lambda_foo/herbage

## Technologies

* Rails 3.2 or higher
* MongoDB
* Heroku hosting

## Data Model

 * Map -> basic dimensions, geolocation, plan/schematic?
 * Plant -> individual species


## Questions

 * Look at plant tags for information about plants.
 * Sketch out domain

## MongoDB

To start just use `mongod` in a new terminal.
