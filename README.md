# Notes

https://tailwindcss.com/docs/guides/ruby-on-rails

- include info about `rails new --javascript=x`
- with `rails new --css`
- or adding to existing project
- change `bin/dev` to use `overmind` and explain why (debugging)
- needs procfile so it can watch for changes and compile css from tailwind classes
  - based on `config/tailwind.js` node: `content`
- describe difference between tailwind config for a javascript app vs rails
- scaffold a User model, then apply decent tailwind css for a clean look-and-feel

## in the weeds

- ? maybe show source and what is being compiled based on html class in erb files and related tailwind config
