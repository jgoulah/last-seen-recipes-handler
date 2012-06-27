# last-seen-recipes-handler 

A Chef handler that will add a new node attribute called "last_seen_recipes" which contains the list of all recipes run on the node _including_ the included recipes.  This can then be used to search nodes for included recipes

## Installation

#### Gem install

last-seen-recipe-handler is available on rubygems.org - if you have that source in your gemrc, you can simply use:

    gem install last-seen-recipe-handler

#### Configure the Handler

in /etc/chef/client.rb

```
# seen recipes handler
require "last_seen_recipes"
last_seen_recipes_handler = LastSeenRecipesHandler.new
report_handlers << last_seen_recipes_handler
```

## Usage

Now simply use knife search to find your included recipe

```
knife search node 'last_seen_recipes:mycookbook\:\:myrecipe' -i
```
