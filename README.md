# elasticrecord

(Im doing Readme driven development, most of if not all of this is not implemented yet, feel free to help out)

let your model inherit from ElasticRecord::Base, and add any attributes you want

First add it to your Gemfile
```ruby
gem 'elasticrecord'
```
then add the following to database.yml
```yml
elastic:
  host: localhost
  port: 9200
  index: dailybugle
  mappings:
    article:
    ....
  settings:
    ....
```
here you should be able to add all the mappings and settings etc for that index.

---
You then make your model inherit from ElasticRecord::Base

```ruby
class Article < ElasticRecord::Base

end
```
Since Elasticsearch is schemaless, there is no point in declaring attributes in the model, you can but you can also add attributes later

**NOTE:**
You still need to know the structure if you plan on making custom mappings or settings, since they can only be set when you create the index, to apply mappings after words you need to delete the index and restart the rails server.

```ruby
article = Article.new(title:'Who is spiderman?', body:'the spider menace..')
=>
{
   "_index": "dailybugle",
   "_type": "article",
   "_id": "AU71ch-vtiEVeK6SIdAv",
   "_version": 1,
   "created": true
}

```
