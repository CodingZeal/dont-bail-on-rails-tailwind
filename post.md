# Integrating TailwindCSS with Ruby on Rails

Ruby on Rails has always been at the forefront of web development. In the same light, TailwindCSS has made a mark in the CSS framework world for its utility-first approach. Here's a deep dive into integrating TailwindCSS with your Rails application.

### When to install Tailwind as a Ruby Gem vs an npm Package

The choice between the `tailwindcss-rails` gem and the npm package `tailwindcss` often comes down to your application's configuration:

- **Use the gem** when your Rails app is configured to use `importmap`. Import maps allow you to load ES modules without needing a bundler like webpack. This setup is lightweight and makes it a great pair with the gem.

- **Use the npm package** when your Rails app is set up with webpack, esbuild, or rollup. These bundlers will help compile and bundle the TailwindCSS for your application.

### Setting up `tailwindcss-rails` for a New Rails App

When creating a new Rails application, you can directly include the TailwindCSS setup by using:

```bash
rails new myapp --css=tailwind
```

### Adding Tailwind to an Existing Rails App

For an existing Rails application, add the `tailwindcss-rails` gem to your `Gemfile`:

```ruby
gem 'tailwindcss-rails'
```

Then, run:

```bash
bundle install
rails tailwindcss:install
```

### The `bin/dev` Script with `tailwindcss-rails`

When you install the `tailwindcss-rails` gem, it provides a handy script: `bin/dev`. This script helps run development-related tasks concurrently.

In the [sample application](https://github.com/CodingZeal/dont-bail-on-rails-tailwind), there's a notable change: transitioning from `foreman` to `overmind`. Why? Overmind offers more advanced features and is often deemed more performant and flexible compared to Foreman.

The `Procfile` contains an entry `tailwindcss:watch`, which is vital. This process watches and compiles the Tailwind CSS classes used in your `.erb` files. If this process isn't running, the styles won't render in the browser.

### Using Scaffold with the Tailwind Gem

One of the gems (pun intended!) of the `tailwindcss-rails` is its ability to style scaffolded views using Tailwind's utility classes. This means when you run:

```bash
rails generate scaffold Post title:string content:text
```

The views generated will be styled with Tailwind out of the box!

### Custom Tailwind in the Sample Application

In the sample application, there's a custom Tailwind utility for styling radio buttons. Located in `app/assets/stylesheets/application.tailwind.css`, there's a custom class that makes use of the CSS `:has` pseudo-class for radio button styling. It's important to note that `:has` is experimental and not supported in all browsers as of my last training data. Always test such features across browsers to ensure compatibility.

### Tying It All Together

The [official guide](https://tailwindcss.com/docs/guides/ruby-on-rails) provides more details, but with the `tailwindcss-rails` gem, the integration with the Rails asset pipeline is seamless. This means less configuration and more productivity.

### Conclusion

TailwindCSS's utility-first approach harmonizes brilliantly with the convention-over-configuration philosophy of Rails. Whether you're starting a new Rails app or integrating into an existing one, the fusion of Rails and TailwindCSS offers a productive and stylish web development experience.
