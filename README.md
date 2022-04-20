# Ruby on Rails Capstone


## Built With

Ruby >= 3.0.0

Rails >= 7.0.0

Postgresql >= 12.0


## Getting Started

- To get a local copy of the repository please run the following commands on your terminal:
   ```
   git clone https://github.com/iammouaz/Rails-capstone.git
   ```
- Go to the cloned directory with `cd recipe-app`
- Run `bundle install` to install the necessary packages
- Install the `postgresql` database and all necessary dependencies (if you are on Ubuntu just run `sudo apt install postgresql postgresql-contrib`)
- Run `rails db:create` and `rails db:migrate` to create the database locally
  - If you already have one with the same name just run `rails db:reset` instead
- After installing everything, you can run now the website with `rails s`

## Running linters
- Rubocop (Ruby code linter)
```
rubocop
```
- Stylelint (CSS linter)
```
npx stylelint "**/*.{css,scss}"
```

## Testing
- Using RSpec and Capybara
``` 
rspec ./spec/
```

## Author

👤 **Moaz El Molkey**

- GitHub: [@iammouaz](https://github.com/iammouaz)
- Twitter: [@MoazMulki1](https://twitter.com/MoazMulki1)
- LinkedIn: [Mouaz El Molkey](https://www.linkedin.com/in/mohammad-mouaz-molki-1368981bb/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse

## 📝 License

This project is [MIT](./LICENSE) licensed.