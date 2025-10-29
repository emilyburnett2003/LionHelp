# Lion Help: *building community, one service at a time*

## Students
- Kristine Pham (klp2157)
- Emily Burnett (eb3425)
- Thais Velazquez (tiv2101)
- Mst Nayma (mzn2002)

## Heroku Deployment [TODO]
- Access our deployment through this link
  
## To Run Locally
1. Make sure you have the following installed:
- [Ruby 3.3.8](https://www.ruby-lang.org/en/documentation/installation/)
- [Rails 8.0](https://guides.rubyonrails.org/install_ruby_on_rails.html)

2. Clone the repository
```sh
git clone git@github.com:<YOUR GITHUB USERNAME>/LionHelp
```
3. Get into project's directory
```sh
cd LionHelp
```
4. Install all gems.
```sh
bundle install
```
You may run into version inconsistencies after running this command. Make sure you follow the given instructions to setup accordingly with our Gemfile.

5. Run migrations and add initial database
```sh
bundle exec rake db:migrate
bundle exec rake db:seed
```
6. Start the Rack appserve
```sh
bundle exec rackup --port <PORT_NUM>
```
7. Visit `localhost:<PORT_NUM>` in your browser to see the webapp

## Available Routes
### Service Feature [TODO]
- insert pathways for all things you can do with services (view, create, delete)
### Review Feature [TODO]
- To view all reviews in the database: `/reviews`
- To view all reviews of a single vendor based on their id number: `/reviews/{vendor_id}`

## To Test Locally
- To test user stories through Cucumber: run the following
`bundle exec rspec`
