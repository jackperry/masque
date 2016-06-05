# masque
A backend agnostic frontend gulp workflow using CoffeeScript and SASS.

## tasks

### `css`
Autoprefixes, minifies, and compiles `assets/css/index.scss` into `assets/build/index.css`.

*Only runs on index.scss. It is up to you to @import other scss files as you'd like.*  
***This is a conscious decision to keep the gulpfile clean.***

---

### `lint`
Lints `assets/js/index.coffee` and prints errors it finds into the console. Uses the Stylish reporter.

*Only runs on index.coffee.*  
***This is a conscious decision to keep the gulpfile clean.***

---

### `js`
Lints `assets/js/index.coffee` and if there are no errors, compiles and minifies into `assets/build/index.js`.

*Only runs on index.coffee.*  
***This is a conscious decision to keep the gulpfile clean.***

## modus operandi

**What's with the name?**  
I've been a huge Edgar Allan Poe fan for most of my life. A lot of my personal projects over the last ten years have used names from his works.

**Why only `index.coffee` and `index.scss`?**  
This is entirely on purpose to promote simple and clean development, and also helps to keep the gulpfile clean.
