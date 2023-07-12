# 75_days_code_challenge

75 days dart code challenge

#### Install Template

That you install it on your computer and it really makes the process of re-running your dart files a lot easier once make changes to them.

```sh
brew install fswatch
```

#### Create dart file

```sh
create -t console project name
```

cd your project folder and run this command.

```sh
fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/dart_file_name.dart'
```
