# hbnb - Web Flask :globe_with_meridians:

HTML files for hbnb are rendered by this application server, built in Python Flask and using Jinja2.

[Source code.](../web_flask)

## Dependencies :couple:

Application:

| Tool/Library | Version |
| ------------ | ------- |
| Python       | ^3.6.4  |
| Flask        | ^1.0.3  |

## Usage :running:

Assuming the above dependencies have been installed, the app server can be started using the following command:

```
python3 web_flask.app:app
```

Of course, the server is truly only functional in conjunction with the [hbnb API](./API.md).

## Files :file_folder:

- [templates](../web_flask/templates): The HTML5 content for hbnb.
  - [templates/index.html](../web_flask/templates/index.html): The root page of hbnb.
- [static](../web_flask/static): Static content included in [templates/index.html](../web_flask/templates/index.html).
  - [static/images](../web_flask/templates/static/images): Image files.
  - [static/scripts](../web_flask/templates/static/scripts): JavaScript scripts (uses jQuery).
  - [static/images](../web_flask/templates/static/styles): CSS3 stylesheets.

## Routes :light_rail:

- `/hbnb`: Serves [templates/index.html](../web_flask/templates/index.html), the root page of hbnb.

## Author :black_nib:

- **Karanja J Njuguna** - <[kei-en](https://github.com/kei-en)>
