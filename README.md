# Latex Container

> A big image on Ubuntu 24.04 that can do it all.
> Not recommended for use in CiCd  

- Complete Latex installation
- Build LuaLatex by default 

# Usage

## Custom Usage
```bash
docker pull ndps/latex:latest \
docker run --rm -v $(pwd):/data ndps/latex:latest sh -c "lualatex -interaction=nonstopmode -halt-on-error -output-directory=/data /data/document.tex" 
```

## With docker-compose provided

###### Pull image:
```
docker pull ndps/latex:latest
```

###### Get in your Latex project dir
```
cd ./my/project/dir
```

###### Write .env file for set your LATEX_FILE value
```
echo "LATEX_FILE=document.tex"> .env
```

###### Add and use docker compose in  your project:
```
docker compose up
```

-------


```
  _  _       _     _ __         
 | \| |   __| |   | '_ \   ___  
 | .` |  / _` |   | .__/  (_-<  
 |_|\_|  \__,_|   |_|__   /__/_ 
_|"""""|_|"""""|_|"""""|_|"""""|
"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'
```