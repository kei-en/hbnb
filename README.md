# AirBnB Clone: Phase # 3

## Description

Project attempts to clone the the AirBnB application and website, including the
database, storage, RESTful API, Web Framework, and Front End. Currently the
application is designed to run with 2 storage engine models:

- File Storage Engine:

  - `/models/engine/file_storage.py`

- Database Storage Engine:

  - `/models/engine/db_storage.py`

  - To Setup the DataBase for testing and development, there are 2 setup
    scripts that setup a database with certain privileges: `setup_mysql_test.sql`
    & `setup_mysql_test.sql` (for more on setup, see below).

  - The Database uses Environmental Variables for tests. To execute tests with
    the environmental variables prepend these declarations to the execution
    command:

```
$ HBNB_MYSQL_USER=hbnb_test HBNB_MYSQL_PWD=hbnb_test_pwd \
HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_test_db HBNB_TYPE_STORAGE=db \
[COMMAND HERE]
```

## Setup

This project comes with various setup scripts to support automation, especially
during maintanence or to scale the entire project. The following files are the
setupfiles along with a brief explanation:

- **`dev/setup.sql`:** Drops test and dev databases, and then reinitializes
  the datbase.

  - Usage: `$ cat dev/setup.sql | mysql -uroot -p`

- **`setup_mysql_dev.sql`:** initialiezs dev database with mysql for testing

  - Usage: `$ cat setup_mysql_dev.sql | mysql -uroot -p`

- **`setup_mysql_test.sql`:** initializes test database with mysql for testing

  - Usage: `$ cat setup_mysql_test.sql | mysql -uroot -p`

- **`0-setup_web_static.sh`:** sets up nginx web server config file & the file
  structure.

  - Usage: `$ sudo ./0-setup_web_static.sh`

- **`3-deploy_web_static.py`:** uses 2 functions from (1-pack_web_static.py &
  2-do_deploy_web_static.py) that use the fabric3 python integration, to create
  a `.tgz` file on local host of all the local web static fils, and then calls
  the other function to deploy the compressed web static files. Command must
  be executed from the `AirBnB_clone` root directory.

  - Usage: `$ fab -f 3-deploy_web_static.py deploy -i ~/.ssh/holberton -u ubuntu`

  ## Testing

### `unittest`

This project uses python library, `unittest` to run tests on all python files.
All unittests are in the `./tests` directory with the command:

- File Storage Engine Model:

  - `$ python3 -m unittest discover -v ./tests/`

- DataBase Storage Engine Model

```
$ HBNB_MYSQL_USER=hbnb_test HBNB_MYSQL_PWD=hbnb_test_pwd \
HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_test_db HBNB_TYPE_STORAGE=db \
python3 -m unittest discover -v ./tests/
```

---

### All Tests

The bash script `init_test.sh` executes all these tests for both File Storage &
DataBase Engine Models:

- checks `pep8` style

- runs all unittests

- runs all w3c_validator tests

- cleans up all `__pycache__` directories and the storage file, `file.json`

- **Usage `init_test.sh`:**

```
$ ./dev/init_test.sh
```

---

### CLI Interactive Tests

- This project uses python library, `cmd` to run tests in an interactive command
  line interface. To begin tests with the CLI, run this script:

#### File Storage Engine Model

```
$ ./console.py
```

#### To execute the CLI using the Database Storage Engine Model:

```
$ HBNB_MYSQL_USER=hbnb_test HBNB_MYSQL_PWD=hbnb_test_pwd \
HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_test_db HBNB_TYPE_STORAGE=db \
./console.py
```

#### For a detailed description of all tests, run these commands in the CLI:

```
(hbnb) help help
List available commands with "help" or detailed help with "help cmd".
(hbnb) help

Documented commands (type help <topic>):
========================================
Amenity    City  Place   State  airbnb  create   help  show
BaseModel  EOF   Review  User   all     destroy  quit  update

(hbnb) help User
class method with .function() syntax
        Usage: User.<command>(<id>)
(hbnb) help create
create: create [ARG] [PARAM 1] [PARAM 2] ...
        ARG = Class Name
        PARAM = <key name>=<value>
                value syntax: "<value>"
        SYNOPSIS: Creates a new instance of the Class from given input ARG
                  and PARAMS. Key in PARAM = an instance attribute.
        EXAMPLE: create City name="Chicago"
                 City.create(name="Chicago")
```

- Tests in the CLI may also be executed with this syntax:

  - **destroy:** `<class name>.destroy(<id>)`

  - **update:** `<class name>.update(<id>, <attribute name>, <attribute value>)`

  - **update with dictionary:** `<class name>.update(<id>,
<dictionary representation>)`

---

## Authors

Alexa Orrico - [Github](https://github.com/alexaorrico) / [Twitter](https://twitter.com/alexa_orrico)  
Jennifer Huang - [Github](https://github.com/jhuang10123) / [Twitter](https://twitter.com/earthtojhuang)

Joann Vuong

Karanja J. Njuguna - [Github](https://github.com/kei-en)
