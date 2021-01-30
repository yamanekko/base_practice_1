# TOPPRES箱庭  単体ロボット向けシミュレータ(V850版)サンプルコードのmruby版

## mruby環境の追加
箱庭シミュレータをインストールすると
＜プロジェクト名＞/simulator/ev3rt-athrill-v850e2m/sdk/workspace/base_practice_1
ができています。
箱庭の手順書にしたがって、箱庭シミュレータでC言語アプリが実行できることを確認してから、以下の手順に進んでください。

1. mrubyの追加
http://forum.mruby.org/download/index201.html よりmruby Stable版2.0.1 をダウンロードし、箱庭の「hakoniwa-Unity-HackEV」と同じ階層に展開（解凍）してください。

2. mruby用のmrbgemの追加
   https://github.com/yamanekko/mruby-ev3rt も同じ階層にcloneします。

```
git clone https://github.com/yamanekko/mruby-ev3rt.git
```
こんな感じになります。(mruby-2.0.1.tar.gz はなくて良いです)

```
$ls
hakoniwa-Unity-HackEV   mruby-2.0.1             mruby-2.0.1.tar.gz      mruby-ev3rt
```

注）違うディレクトリ構成にしたい場合は、パスの指定をしているところを環境に合わせて修正してください。

## 使い方

1. このbase_practice_1ディレクトリに「buildディレクトリ以外すべて」を上書きしてください。
   
   (もともとbase_practice_1にあった他のファイルは消さないで残しておいてください)
2. Makefile.inc のmrubyのディレクトリのパスをあなたの環境にあわせて修正してください。
3. buildディレクトリの中身は、
＜プロジェクト名＞/buildディレクトリに同じ名前のファイルがあるので上書きしてください。
（箱庭シミュレータのビルドの方法で同時にmrubyのバイトコードがビルドできます）

参考）base_practice_1
https://github.com/toppers/hakoniwa-scenario-samples/tree/master/single-robot/base_practice_1
