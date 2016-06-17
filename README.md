# Food2Fork

A gem for accessing the Food2Fork API

## Installation

Add this line to your application's Gemfile:

    gem 'food2fork'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install food2fork

## Usage

Examples


## authentication

All requests require a valid API key. For a free api key please <a href='http://www.food2fork.com/about/api' data-target='self'>apply here</a>

```ruby

# set FOOD2FORK_API_KEY as environment variable
export FOOD2FORK_API_KEY=52e595d8dff202904d....

```

All parameters can be encoded as either HTTP GET or POST parameters.

# Recipes search api

```ruby
Food2Fork::Recipe.search # => returns list of Recipe array object
```

# Recipe search parameters

* q: (optional) Search Query (Ingredients should be separated by commas). If this is omitted top rated recipes will be returned.
* sort: (optional) How the results should be sorted. See Below for details.
* page: (optional) Used to get additional results

```ruby
Food2Fork::Recipe.search({q: 'Paneer', sort: 'r', page: 3}) # => returns list of Recipe array object
```

# Get Recipe

* rId: (integer,optional) - Id of desired recipe as returned by Search Query

```ruby
Food2Fork::Recipe.get({rId: 47024}) # => returns recipe object
```

# Search Sorting

The Food2Fork API offers two kinds of sorting for queries. The first is by rating. This rating is based off of social media scores to determine the best recipes.
```ruby
sort=r
```
The second is by trendingness. The most recent recipes from our publishers have a trend score based on how quickly they are gaining popularity.
```ruby
sort=t
```

Pages (Search Only)

Any request will return a maximum of 30 results. To get the next set of results send the same request again but with 
```ruby
page = 2 
```

The default if omitted is 
```ruby
page = 1
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Let’s build something great:

We’d love to design & build your next big idea, or lend a hand on an existing project.

	Email - contact@7precisions.com
	Website - http://7precisions.com
	
![alt tag](https://www.google.com/a/cpanel/7precisions.com/images/logo.gif?alpha=1&service=google_default)