
# lemon-backend

<a name="readme-top"></a>


# 📗 Table of Contents

- [lemon-backend](#lemon-backend)
- [📗 Table of Contents](#-table-of-contents)
- [📖 lemon-backend ](#-lemon-backend-)
  - [🛠 Built With ](#-built-with-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Usage](#usage)
  - [👥 Authors ](#-authors-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [📝 License](#-license)

# 📖 lemon-backend <a name="about-project"></a>

The lemon device is an API that used to sell and buy used electronic devices. The application shows detailed information about the devices such as prices, models, photos, and other essential information. I used JWT authentication technique! 


## 🛠 Built With <a name="built-with"></a>

- Rails 7
- PostgreSQL
- RSpec  

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.
### Prerequisites

- Install node package manager. [Download Node](https://nodejs.org/dist/v18.12.1/node-v18.12.1-x64.- Install [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- Install [Ruby version 3.1.2(2022-04-12 revision)](https://rubyinstaller.org/)
- Open your terminal and install rails using `gem install rails`
- Install [Postman](https://www.postman.com/downloads/) or other API testing tool
- Install [Visual Studio Code](https://code.visualstudio.com/download) or other code editor


### Setup

Open your vscode then

Open your terminal

Clone this repository to your desired folder

`https://github.com/melashu/lemon-backend.git`

cd `lemon-backend`

Run `bundler install`

Configure database.yml as of your environment

```ruby
default: &default
  adapter: postgresql

  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>

development:
  <<: *default
  database: lemon_backend
  adapter: postgresql
  encoding: unicode
  host: localhost
  port: <YOUR_PORT>
  encoding: unicode
  username: <YOUR_USERNAME>
  password: <YOUR_PASSWORD>

test:
  <<: *default
  database: lemon_test_backend
  host: localhost
  port: <YOUR_PORT>
  adapter: postgresql
  encoding: unicode
  username: <YOUR_USERNAME>
  password: <YOUR_PASSWORD>
```

Then 
Run `rails db:create db:migrate`

Run `rails server` or `rails s`



### Usage

After runing `rails s`

Open postman 

To register user, send post request  with payload like
```json
{
    "email": "meshu@gmail.com",
    "first_name": "Diva",
    "last_name": "Eric",
    "password": "12345678",
}
```
to 

`http://127.0.0.1:3000/user/signup` port 3000 may be 5000

If the request is successful you will get `message` and `token` like 
```json
{
    "message": "User created",
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3fQ.xOEKU_IAoMzYvsGcsOZVqloqvzzq77Y8O-l2jRYmRPM"
}
```
You can use this token to login to the system 

Send post request with email, password and token to  `http://127.0.0.1:3000/user/signin`

if you successfuly logged in you will get message like 

```json
{
    "message": "Signed in",
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3fQ.xOEKU_IAoMzYvsGcsOZVqloqvzzq77Y8O-l2jRYmRPM"
}
```

To see all regstered users send get request to `http://127.0.0.1:3000/user/all` 

To access current user profile sent get request to `http://127.0.0.1:3000/user/my_profile`


## 👥 Authors <a name="authors"></a>

👤 Melashu Amare

- GitHub: [@melashu](https://github.com/melashu)
- Twitter: [@meshu102](https://twitter.com/meshu102)
- LinkedIn: [Melashu Amare](https://www.linkedin.com/in/melashu-amare/)

<!-- FUTURE FEATURES -->


 
- [ ] **Add responsiveness features.**



## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page.](https://github.com/melashu/lemon_backend/issues)

## ⭐️ Show your support <a name="support"></a>

Give a star if you like this project!
## 📝 License

This project is [MIT](./LICENSE) licensed.


<p align="right">(<a href="#readme-top">back to top</a>)</p>











