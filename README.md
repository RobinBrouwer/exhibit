# Exhibit

Exhibit is a simple gem to generate and work with presenters in Rails 3. It is based on the solution Ryan Bates created in [Railscasts Pro episode #287](http://railscasts.com/episodes/287-presenters-from-scratch).

    version 0.1.2
    Robin Brouwer
    45north

## Installation

Exhibit only works with Rails 3. Add the following to your Gemfile:

    gem 'exhibit'

Now just run `bundle install` and you're ready to exhibit your application! ;)

## Usage

Exhibit is a simple and lightweight gem. Using it is pretty straightforward.
Run the following generator to create a presenter:

    rails g exhibit:presenter User

The presenter is stored in app/presenters/user_presenter.rb.

    class UserPresenter < Exhibit::Presenter
      exhibit :user
    end

You can add methods to this class to exhibit content.

    class UserPresenter < Exhibit::Presenter
      exhibit :user
      
      def email
        content_tag(:span, user.email)
      end
    end

You can also use `delegate` to delegate methods to the User Model.

    class UserPresenter < Exhibit::Presenter
      exhibit :user
      delegate :email, :to => :user
    end

Want to add methods that can be used inside all of your presenters? Run the following command:

    rails g exhibit:base

A new initializer will be created: config/initializers/exhibit_presenter.rb.
You can add methods to this class to extend it and use it inside all presenters.

But how can you actually use presenters inside the view? It works the same as Ryan shows you in [Railscasts Pro episode #287](http://railscasts.com/episodes/287-presenters-from-scratch):

    <% exhibit(@user) do |user| %>
      <p>
        <strong>E-mail:</strong>
        <%= user.email %>
      </p>
    <% end %>

Got feedback? Feature requests? Add it as an issue or create a pull request. Have fun exhibiting your application!