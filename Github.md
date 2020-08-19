

## Create a new branch
To create a new branch on your local machine/switch to a new branch, you must ensure you have the latest version of your files on your local machine. To do this, first type:
```
git pull
```
Once you have the updated versions, <u>create</u> a new branch:
```
git checkout -b <name of new branch>
```

Now <u>push</u> branch onto github:
```
$ git push origin <name of new branch>
```

## Check branches created 
```
git branch -a
```

## Check your remote name
You can find remote name by typing in cmd line
```
git remote -v
```


## Removing a Git Remote
To <u>remove a remote,</u> navigate to the directory(folder) your repository is stored at, and use the `git remote rm` (or git remote remove) command followed by the remote name:
```
git remote rm <remote name>
```

Useful Links
