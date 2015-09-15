heroku create numpyscipy-cedar
heroku buildpack:set -a numpyscipy-cedar https://github.com/andrewychoi/heroku-buildpack-scipy
git push heroku master