# About
Lambdaで利用できるpython3.6のpipライブラリモジュールを取得する。

# requirements
docker

# Usage
0. 初回は `./build.sh` を実行してdockerイメージをビルドする。
1. pipでインストールしたいライブラリを pip_requirements.txt に記述する。
2. `./run.sh` を実行する。
3. ./package ディレクトリにライブラリモジュールが取得される。
