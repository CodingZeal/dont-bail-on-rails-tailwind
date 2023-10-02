# How to add TailwindCSS to Ruby on Rails

TailwindCSS, when paired with Rails applications, offers numerous benefits that significantly elevate both the developer experience and the end-user interface. This article provides a comprehensive guide on integrating TailwindCSS into your Rails application.

## Sample application

For code references used in this article, [checkout the repo](https://github.com/CodingZeal/dont-bail-on-rails-tailwind).

## NPM Package or Ruby Gem?

Your application's configuration typically dictates the choice between using the [tailwindcss-rails](https://github.com/rails/tailwindcss-rails) gem and the NPM package [tailwindcss](https://github.com/tailwindlabs/tailwindcss).

- **When to use the NPM package:** in scenarios where you are rendering views via JavaScript on the client and using Webpack, esbuild, or Rollup to compile your JavaScript and other front end assets. [Tailwind has great documentation](https://tailwindcss.com/docs/installation) for setting up with NPM. You can also reference [our article](https://www.codingzeal.com/post/tailwind-is-a-popular-library-here-is-how-to-add-it-to-redwoodjs) about how to set up Tailwind with RedwoodJS.

- **When to use the gem:** opt for the gem when you're focusing on server-side rendering of views, particularly with ERB templates. This approach is streamlined and harmonizes well with the Rails asset pipeline. Typically Rails would be configured to use `importmap` for loading JavaScript packages. This article will focus on how to set up Tailwind using the Ruby gem.

## Setting up a new Rails application with the `tailwindcss-rails` gem

To configure a new Rails application with TailwindCSS, use:

```bash
rails new myapp --css tailwind
```

## Adding Tailwind to an existing Rails app

For pre-existing Rails applications, add the `tailwindcss-rails` gem to your `Gemfile`:

```ruby
gem 'tailwindcss-rails'
```

Then, run:

```bash
bundle install
rails tailwindcss:install
```

Expect the install command to generate the following files:

- `app/assets/stylesheets/application.tailwind.css`
- `bin/dev`
- `config/tailwind.config.js`
- `Procfile.dev`

## What's up with the `bin/dev` script?

The `bin/dev` script helps run development-related tasks concurrently using `foreman`.

The `Procfile.dev` file contains a `tailwindcss:watch` entry. This process watches and compiles the Tailwind utility classes used in your `.erb` files. If this process isn't running, the styles won't render in the browser.

In the [sample application](https://github.com/CodingZeal/dont-bail-on-rails-tailwind), there's a notable change: transitioning from [foreman](https://www.theforeman.org/) to [overmind](https://github.com/DarthSim/overmind). Overmind offers better performance and debugging features than foreman. See [Jason Fleetwood-Boldt's post](https://jasonfleetwoodboldt.com/courses/rails-7-crash-course/how-the-rails-procfile-works-foreman-overmind-hivemind/) on the differences between Foreman and Overmind.

## Using scaffold with the Tailwind gem

One of the gems (pun intended!) of the `tailwindcss-rails` is its ability to style scaffolded views using Tailwind's utility classes. This means when you run:

```bash
rails generate scaffold Post title:string content:text
```

The views generated will be styled with Tailwind out of the box!

## Seamless integration with the asset pipeline

The `tailwindcss-rails` gem automatically integrates with the Rails asset pipeline. Therefore, production deployments are much easier since rails will precompile all of the Tailwind utitlity classes automatically.

## Final thoughts

Integrating the `tailwindcss-rails` gem into your Ruby on Rails applications is surprisingly simple. We hope you found this article helpful.

## Resources

- https://tailwindcss.com/docs/guides/ruby-on-rails
- https://guides.rubyonrails.org/working_with_javascript_in_rails.html
- https://guides.rubyonrails.org/asset_pipeline.html
- https://jasonfleetwoodboldt.com/courses/rails-7-crash-course/how-the-rails-procfile-works-foreman-overmind-hivemind/
