# client-configs
My client configs for my initial front end projects


# Pre conditions
vue cli, npm, git installed

# How to create a new project
You need to run the following command wherever you want to initialize your project
```
$ sh create-client-project.sh [project-name]
```
# Heroku - Gitlab configuration
## Gitlab
Set two env vars in the CI/CD settings (more info about variables in gitlab https://gitlab.com/help/ci/variables/README#variables)
- **HEROKU_APP** - name of the created heroku app eg sos-patita-pwa
- **HEROKU_CI_API_KEY** - api key of the heroku user (search in heroku user settings)

## Heroku
Create the project with default options, the project will search for a npm start script, so is important to have this one set.

Set the following in your package.json scripts:
```
"start": "node index.js"
```

# TODO:
Agregar code and files que se necesitan al inicio del project
Check programas necesarios instalados
