# Tribute

A cross-browser @mention engine written in native JS, no dependencies. Tested in Firefox, Chrome, iOS Safari, Safari, IE 9+, Edge 12+, Android 4+, and Windows Phone.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tribute'
```

And then execute:

    $ bundle

Then, in your `app/assets/javascripts/application.js`:

```js
*= require tribute
```

Finally, add the following to your `app/assets/stylesheets/application.css`:

```css
//= require tribute
```

## Initializing

There are two ways to initialize Tribute, by passing an array of "collections" or by passing one collection object.

```js
var tribute = new Tribute({
  values: [
    {key: 'Phil Heartman', value: 'pheartman'},
    {key: 'Gordon Ramsey', value: 'gramsey'}
  ]
})
```

You can pass multiple collections on initialization by passing in an array of collection objects to `collection`.

```js
var tribute = new Tribute({
  collection: []
})
```

### Attaching to elements

Once initialized, Tribute can be attached to an `input`, `textarea`, or an element that supports `contenteditable`.

```html
<div id="caaanDo">I'm Mr. Meeseeks, look at me!</div>

<div class="mentionable">Some text here.</div>
<div class="mentionable">Some more text over here.</div>

<script>
  tribute.attach(document.getElementById('caaanDo'));

  // also works with NodeList
  tribute.attach(document.querySelectorAll('.mentionable'));
</script>
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
