# Plant / Garden DB
Rails application to store plants in our garden. Include pictures with clickable
areas that link to the plant in the picture. Similar to how flickr picture can
be tagged.

Plant information with accurate pictures. Allow ppl to upload their own photos
and tag them.

Finding accurate plant information is difficult and it's scattered across
various sites and/or books. Provide community edited plant database that is
searchable. Allow people to modify details like growing information, flowering
etc.

The plant DB is the MVP. Allow CRUD plus powerful searching.


Features:

 * Searchable catalogue of plants
 * Pictures of garden tagged with plant information
 * Individual Plant pages.
 * Map of areas with plantings
 * Recommendations on plants or feedback on how they are going.
 * Map with flowering slider, showing what will be flowering at particular times so you can plan a garden around it.
 * Intelligent agent to recommend fixes/solutions to common plant issues. ie describe leaf colour, soil condition, etc and come up with some solutions to try.
 * Link to sellers of plants, seeds and related equipment.
 * Social by having notifications, follow other people and forum/comments on
   peoples work
 * Landscape designers and other professionals could have personalised space to
   showcase their work with pictures and explaination. As an alternative to
   having their own site?
 * Concept of tools for planning gardens and choosing plants.
   * Flowering chooser
   * Fruit / Vegie Chooser
 * Companion plant recommendations with user feedback

## Location

https://bitbucket.org/lambda_foo/herbage

## Technologies

* Rails 3.2 or higher
* Postgres 9
* Heroku hosting

## Data Model

 * Map -> basic dimensions, geolocation, plan/schematic?
 * Plant -> individual species

 * Garden -> a garden for specific site, which can be broken up into a number of
   'Sites'

Store data as markdown within the application and render it on demand?

Provide github like markdown editing page with preview button that works via
AJAX.

Provide rails controller that takes markdown request and returns html.

## Links and Inspiration

  * [http://www.frecklegirl.com/blog/2005/04/12/knitters-help/](http://www.frecklegirl.com/blog/2005/04/12/knitters-help/)
  * [http://codemonkey.ravelry.com/2010/03/24/ravelry-runs-on-2010/](http://codemonkey.ravelry.com/2010/03/24/ravelry-runs-on-2010/)



 Plant: Describes a species of plant.
 Plant Location: Physical location for a plant

 Gardener: person who owns or manages a garden(s)

 Garden: bounded physical location, associated with a Gardener containing many
 plants
