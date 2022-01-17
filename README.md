# ascii website

## Installing

Requirements:
- [Nix](https://nixos.org/download.html), preferably with flakes enabled
- [direnv](https://direnv.net/) (optional, makes things more comfortable)
- [nix-direnv](https://github.com/nix-community/nix-direnv) (also optional)

Then:
```bash
$ nix shell  # you don't need this if you have direnv and nix-direnv, haha two dependencies to skip one command
$ bundle install
$ bundle exec jekyll serve
```

## Overview

### Create a blog post

Blog posts are simple markdown files.
1. The file should be called something like `_posts/YYYY-MM-DD-my-great-post-title.md`
2. Add this on top (also called front matter):
```
---
layout: post
title: <mein großartiger titel, wird als überschrift angezeigt>
---
```

### Edit or add content for the sidebar

Files with `layout: page` will be automagically added to the sidebar. The link title will be the title of the page (`title: <mein titel>`). Currently, these files are `about.md`, `opening_hours.md` and `supply.md`.

### Add an image

Put the image into for example `public/images/my-image.png`. Then add a link to the post like this: `[Bild-Tooltip]({{ 'public/images/my-image.png' | relative_url }})`.

## See also

- [Hyde](https://github.com/poole/hyde), the jekyll theme that this repository is built upon
- [Poole](https://github.com/poole/poole), the jekyll theme that Hyde is built upon and that is more up-to-date
- [Jekyll URL troubleshooting](https://mademistakes.com/mastering-jekyll/site-url-baseurl/)
