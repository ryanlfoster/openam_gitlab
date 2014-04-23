# OpenamGitlab

Integration of Gitlab with OpenAM using [OpenamAuth](https://github.com/jnsolutions/openam_auth)

## Installation

Add this line to your Gitlab's `Gemfile`:

    gem 'openam_gitlab'

And then execute:

    $ bundle

## Usage

#### Install the gem (as described above)

#### Create migration file to add token column to User table

```ruby
    rails generate migration add_token_to_users
```
migration example:
```ruby
    class AddTokenToUsers < ActiveRecord::Migration
      def change
        add_column :users, :token, :string
      end
    end
```
#### Create a file `openam_config.rb` under `config/initializers`

```ruby
    # config/initializers/openam_config.rb
    OpenamConfig.config do
      openam_url <Path to your openam server>
    end
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/openam_gitlab/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
