# example-cookbook

An example chef cookbook for training people on the basics of chef.


## Layout

The chef cookbook has the following folders where the corresponding items are stored. 

- attributes
- definitions (not shown)
- recipes
- templates
- providers (not shown)
- resources (not shown)


## Testing

Cookbooks can have several different ways to test themselves, there are a number of code analysis tools to check syntax and simple errors and then unit and integration tests

![awesome sauce image](https://media.giphy.com/media/T4gMNMn9qF5wQ/giphy.gif)


### Code lint / static analysis tools

There are a number of tools that can check for style and other issues which are very lightweight

- [Robocop](https://github.com/bbatsov/rubocop)
- [Foodcritic](http://acrmp.github.io/foodcritic/)


### Unit Testing

Inside of this cookbook we are testing with [Chefpsec](https://github.com/sethvargo/chefspec) to verify that our resources are being called in the way we want them to be called


### Integration Tests

There are several different ways to run integration tests.  The first style is serverspec on test-kitchen, this approach was the defacto standard for running integration tests but the new awesome sauce is using chef audit mode so each chef run actually runs tests which is what this repo uses

