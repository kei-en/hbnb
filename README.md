<h1 align="center">hbnb</h1>
<p align="center">An Airbnb clone.</p>

<p align="center">
  <img src="https://github.com/kei-en/hbnb/blob/master/assets/hbnb-logo.png"
       alt="hbnb logo"
       width="500"
  >
</p>

## Description

hbnb is a complete full-stack web application, integrating a MySQL database and Flask RESTful API with a dynamic HTML5/CSS3/jQuery front-end.

<p align="center">
  <img src="https://github.com/kei-en/hbnb/blob/master/assets/hbnb-stack.png"
       alt="hbnb logo"
       width="750"
  >
</p>

### Alright, let's do this one last time :sweat_smile:

hbnb was the central web application of the ALX School year one curriculum. The project spanned the course of two months and four versions, each of which you can view at the below links:

1. [AirBnB_clone](https://github.com/kei-en/AirBnB_clone)
2. [AirBnB_clone_v2](https://github.com/kei-en/AirBnB_clone_v2)
3. [AirBnB_clone_v3](https://github.com/kei-en/AirBnB_clone_v3)
4. [AirBnB_clone_v4](https://github.com/kei-en/AirBnB_clone_v4)

The versions listed above are distinct codebases. While the initial version was created from scratch, versions 2, 3, and 4 entailed inheriting and expanding on repositories established by earlier ALX School cohorts. Furthermore, for each iteration, I collaborated and pair programmed with a cohort mate - I worked with a different cohort mate for each version.

This versioning approach provided invaluable practice in pair programming and working on unfamiliar, developed codebases. However, it was not ideal from a portfolio perspective, as it lacked a central, organized repository where I could showcase all of the work I coded and learnt during the course of this clone.

This repository is simply the above - an organized, cleaned-up version of hbnb. Call it a minified build if you like.

This repository began as a duplicate of [AirBnB_clone_v4](https://github.com/kei-en/AirBnB_clone_v4), the final version worked on as part of ALX's curriculum. Since then, I've done the following:

- Remove any unnecessary code, leaving only what is required to deliver the program.
- Put together the front-end, back-end, and API strictly using _my_ code, copying in the personal implementations of each that I worked on across all four versions.
- Improved the front-end and developed new Puppet and Fabric auto-deployment scripts.
- Wrote detailed, well-organized documentation for all aspects of the repository.

### What this repository does include:

- Models class system built in Python.

  - [Source code](./models)
  - [Documentation](./documentation/MODELS.md)

- Python console to manage back-end models

  - [Source code](./console.py)
  - [Documentation](./documentation/CONSOLE.md)

  - Flask web application server rendering HTML templates with Jinja2

  - [Source code](./web_flask)
  - [Documentation](./documentation/WEB_FLASK.md)

- RESTful Flask API

  - [Source code](./api)
  - [Documentation](./documentation/API.md)
  - Swagger documentation - [bdbnb.site/apidocs](https://bdbnb.site/apidocs)

- Automatic deployment scripts.

  - [fabfile.py](./fabfile.py)
  - [setup_server.pp](./setup_server.pp)
  - [Documentation](./documentation/DEPLOYMENT.md)

  Regretfully, the test suite proved to be too extensive to reasonably refactor for this minified repository and did not withstand the demands of four distinct codebases. Which is unfortunate because a large portion of the project's development time was devoted to creating a unittest test suite that tested the entire back end.If you're interested in looking at tests I was involved in writing, my most signficant test work occurred in [AirBnB_clone](https://github.com/kei-en/AirBnB_clone).

## Dependencies

| Tool/Library | Version |
| ------------ | ------- |
| Python       | ^3.6.4  |
| MySQL        | ^5.6.0  |
| Flask        | ^1.0.3  |
| flasgger     | ^0.9.2  |
| Flask-Cors   | ^3.0.8  |
| mysqlclient  | ^1.3.10 |
| SQLAlchemy   | ^1.3.5  |

View the complete list of app dependencies in the [requirements.txt](./requirements.txt).

Deployment:

| Tool/Library | Version |
| ------------ | ------- |
| Python       | ^3.7.3  |
| gunicorn     | ^19.9.0 |
| Fabric       | ^2.4.0  |
| Puppet       | ^5.4.0  |

## Documentation

In case you missed it - I've documented this entire repository! [Please do check it out!](./documentation)

## Author

- **Karanja J Njuguna** - <[kei-en](https://github.com/kei-en)>

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.
