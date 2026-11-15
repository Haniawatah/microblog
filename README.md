Microblog
===================
Note: About kmom01 was done on my own because im still wiating for another student to join my group.
Dev environment
------------------

The development environment is a dev container: a container with the tools of the course, at fixed versions. More tools are added to it as the course goes on. more explenations down here..



### Dev container

1. Install Docker 
2. Open the folder in VS Code and choose "Reopen in Container".

The first start it might takes a few minutes. so it creates a virtual environment in `venv/` and installs the packages for testing. Use the terminal in VS Code, it runs in the container, not wsl...



### about packages

The dev container installs the packages for you. Without the dev container, use Python 3.11 or 3.8 im not really sure, but stick with3.8 incase the requirments dont work, create a virtual environment and install the packages:
```
python3 -m venv venv
source venv/bin/activate
make install-test
```

Later in the course `make install-dev` installs the packages for Ansible too.


### Database

Setup SQLite database if `migrations` folder already exist:
```
flask db upgrade
```

If you have upgraded the code for any SQLAlchemy models:
```
flask db migrate -m '<message>'
flask db upgrade
```

You probably won't need to do this. But if you need to recreate `app.db` and migrations folder:
```
flask db init
flask db migrate -m '<message>'
flask db upgrade
```

If you have the wrong migrations version in the database when you want to upgrade it you can change it with:
```
flask db stamp head
flask db upgrade
```



### Test application

There are several make commands for testing the application. Use `make help` to see which. To run all tests and validation use:
```
make test
```



## Run application

Start the app with the following command and go to `localhost:5000` in your browser.
```
flask run
```

To run in debug mode, where the app reloads when you change the code:
```
FLASK_DEBUG=1 flask run
```
