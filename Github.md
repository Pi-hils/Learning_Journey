## New Git
```
$ git add .
$ git commit -m '[everything you have done]'
$ git remote add origin git@github.com:username/new_repo
$ git push -u origin master
```

## Create a new branch
To create a new branch on your local machine/switch to a new branch, you must ensure you have the <u>latest version</u> of your files on your local machine. To do this, first type:
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

Check all branches which have been created and pushed to github
```
git branch -a
```
You should see
```
* <new branch>
 master
 ```

 ## Pushing to a <u>specific</u> branch
 ```
 $ git push <name of branch>
 ```

## Check your remote name
You can find remote name by typing in cmd line
```
git remote -v
```


## Removing a Git Remote
To <u>remove a remote,</u> navigate to the directory(folder) your repository is stored at, and use the `git remote rm` (or git remote remove) command followed by the remote name:
```
git remote rm <old remote url>
```
Check to see if old is gone and then add new git repository url
```
$ git remote -v
$ git add origin <new remote url>
```

 
