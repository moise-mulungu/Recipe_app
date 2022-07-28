# Recipe App

The Recipe app keeps track of all your recipes, ingredients, and inventory. It allows users to save ingredients, keep track of what they have, create recipes, and generate a shopping list based on what they have and what they are missing from a recipe. Also, since sharing recipes is an important part of cooking the app allows users to access them. 


Enjoy!


# Built With
 - Ruby on Rails
 - Bootstrap 5

# Live Demo
(none at the moment)

# Additional Tools
  1. Rubocop
  2. Stylelint
  3. Ruby Gems

# Getting Started
To get local copy of the project and run

1. ``git clone git@github.com:moise-mulungu/Recipe_app.git``
2. ``cd Recipe_app``
3. ``gem install bundler``
4. ``bundle install``
5. ``rails s``

## Database Setup
Setup db

1. ``su - postgres``
2. ``psql``
3. ``create role recipe with createdb login password 'recipe'``
4. ``rails db:setup``
5. ``rails db:create``

# Tests

1. ``bundle exec rspec``
2. ``rubocop``

## Authors


👤 **Moise Mulungu**

- GitHub: [@moise-mulungu](https://github.com/moise-mulungu)
- Twitter: [@moise_mulungu](https://twitter.com/moise_mulungu)
- LinkedIn: [Moïse (Musa) Mulungu](https://www.linkedin.com/in/moisemulungu/) 

👤 **Nemwel Boniface**

- GitHub: [@Nemwel Boniface](https://github.com/Nemwel-Boniface)
- Twitter: [@Nemwel Boniface](https://twitter.com/nemwel_bonie)
- LinkedIn: [@Nemwel Bonifacej](https://www.linkedin.com/in/nemwel-nyandoro/)



## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/moise-mulungu/Recipe_app/issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse: [microverse community](https://github.com/microverseinc)

## 📝 License

This project is [MIT](./MIT.md) licensed.