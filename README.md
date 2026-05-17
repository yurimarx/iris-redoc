## iris-redoc

 [![Gitter](https://img.shields.io/badge/Available%20on-Intersystems%20Open%20Exchange-00b2a9.svg)](https://openexchange.intersystems.com/package/iris-redoc)
 
This is an InterSystems IRIS package to allows REST applications expose swagger/openapi specification as a web portal using Redoc.

## Installation with ZPM

**Using YOUR InterSystems IRIS application terminal. Execute:**

zpm:USER>install iris-redoc

**Notes: iris-redoc application don't have internal apis to test redoc, use YOUR IRIS app, or any other public or published openapi URL.**

## How to Work With it

Open http://[host]:[port]/csp/redoc/?url=[url of the swagger/openapi.json] using your browser.

Sample: http://localhost:52773/csp/redoc/?url=https://raw.githubusercontent.com/github/rest-api-description/main/descriptions/api.github.com/api.github.com.json


## Installation for development

Create your repository from template.

Clone/git pull the repo into any local directory e.g. like it is shown below (here I show all the examples related to this repository, but I assume you have your own derived from the template):

```
$ git clone https://github.com/yurimarx/iris-redoc.git
```

Open the terminal in this directory and run:

```
$ docker-compose up -d --build
```

or open the folder in VSCode and do the following:
![rest](https://user-images.githubusercontent.com/2781759/78183327-63569800-7470-11ea-8561-c3b547ce9001.gif)

## Credits

Redoc: https://redocly.com/