<div align="center">
 

  <h3><b><a name="Recipe-app"></a></b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [Recipe App] <a name="about-project"></a>

> 

**[Recipe App]** is a blog-based application build using the `Ruby on Rails` framework, that lets you create a user, log in, create and share recipes with diverse food and ingredients. The application is built in a way that you can only create a recipe and add food to your food list if you are logged into the site. Otherwise, you will only be able to see the public recipes.

You can navigate the pages using the Nav Bar. The Nav Bar has routes to different views depending on if you are logged in or not. The following links can be found there:

- Public recipes.
- My recipes.
- My foods.
- Shopping details.

>based on the ERD diagram
<img src ="./recipe_erd.png">

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>


<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on rails</a></li>
  </ul>
</details>


<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>


<!-- Features -->

### Key Features <a name="key-features"></a>

- **[Add Food]**
- **[Add Recipe]**
- **[Generate Shopping List]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>


To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

>To have installed ruby on your computer
>To have installed rails

```sh
 gem install rails
```

### Setup

Clone this repository to your desired folder:

```sh
  git clone https://github.com/george827/Recipe-app.git
  
```

### Install

Install this project with:

```sh
  cd Recipe-app
  rails db:create
  rails db:migrate
```

### Usage

To run the project, execute the following command:

```sh
  rails server
```

### Run tests

To run tests, run the following command:

```sh
  rspec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>


👤 **George Kinyanjui**

- GitHub: [@george827](https://github.com/george827)
- Twitter: [George Kinyanjui](https://twitter.com/geok8376)
- LinkedIn: [George Kinyanjui](https://www.linkedin.com/in/georgekinyanjui/)

👤 **Tanveer Ahmad**

- GitHub: [@tanveerisonline](https://github.com/tanveerisonline)
- Twitter: [Tanveer Ahmad](https://twitter.com/Tanveer98589023)
- LinkedIn: [Tanveer Ahmad](https://www.linkedin.com/in/tanveer-ahmad-899462211/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>


- [ ] **[Api end points]**
- [ ] **[Add inventory]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/george827/Recipe-app/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>


If you like this project you can give it a star ⭐️

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>



I would like to thank microverse for providing all the resources to buld this

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](https://github.com/george827/Recipe-app/blob/dev/LICENSE) licensed.


<p align="right">(<a href="#readme-top">back to top</a>)</p>