# tools 

some usefull tools for develop or ops


## github workflow

```
working_dir=$GOPATH/src/***
user={your github profile name}
mkdir -p $working_dir
cd $working_dir


git clone git@github.com:$user/*.git

git remote add upstream git@github.com:*/*.git

git remote set-url --push upstream no_push

git remote -v



```
