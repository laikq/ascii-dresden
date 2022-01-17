{ pkgs }:

with pkgs;

mkShell {
  buildInputs = [ 
    (ruby.withPackages (p: with p; [ jekyll jekyll-gist jekyll-sitemap jekyll-seo-tag ])) 
    # gcc and gnumake so that bundle will be able to build gems
    gcc
    gnumake ];
}
