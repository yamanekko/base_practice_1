# TOPPRES箱庭  単体ロボット向けシミュレータ(V850版)サンプルコードのmruby版

## mruby環境の追加
箱庭シミュレータをインストールすると、
＜プロジェクト名＞/simulator/ev3rt-athrill-v850e2m/sdk/workspace/base_practice_1
ができています。
箱庭の手順書に従って、箱庭シミュレータでC言語アプリが実行できることを確認してから、以下の手順に進んでください。

1. mrubyの追加
http://forum.mruby.org/download/index201.html よりmruby Stable版2.0.1 をダウンロードし、箱庭の「hakoniwa-Unity-HackEV」と同じ階層に展開（解凍）してください。

2. mruby用のmrbgemの追加
   https://github.com/mruby-Forum/mruby-ev3rt も同じ階層にcloneします。

```
git clone https://github.com/mruby-Forum/mruby-ev3rt.git
```
こんな感じになります。(mruby-2.0.1.tar.gz はなくて良いです)

```
$ls
hakoniwa-Unity-HackEV   mruby-2.0.1             mruby-2.0.1.tar.gz      mruby-ev3rt
```

注）違うディレクトリ構成にしたい場合は、パスの指定をしているところを環境に合わせて修正してください。

### build_config_ev3rt_sim.rbの修正

`mruby-evr3rt/build_config_ev3rt_sim.rb` について、以下の部分を環境に合わせてパスを修正してください。

```
EV3RT_PATH = "ev3rt-athrill-v850e2m のパスをここに書く"
GNU_TOOL_PREFX = "（環境に合わせてパスを追加）/athrill-gcc/bin/v850-elf-"
```

### mrubyのビルド

mruby-2.0.1 ディレクトリ内で以下のコマンドを実行してください。

```
$ MRUBY_CONFIG=(mruby-ev3rtのパス)/mruby-ev3rt/build_config_ev3rt_sim.rb rake
```

ビルドに成功すると、 `(mruby-ev3rtのパス)/mruby-2.0.1/build/EV3RT-sim/lib/libmruby.a` が生成されます。


## 使い方

1. このbase_practice_1ディレクトリに「buildディレクトリとsimulatorディレクトリ配下以外すべて」を上書きしてください。
   
   (もともとbase_practice_1にあった他のファイルは消さないで残しておいてください)
2. Makefile.inc のmrubyのディレクトリのパスをあなたの環境にあわせて修正してください。
3. buildディレクトリの中身は、
＜プロジェクト名＞/buildディレクトリに同じ名前のファイルがあるので上書きしてください。
（箱庭シミュレータのビルドの方法で同時にmrubyのバイトコードがビルドできます）

4. simulatorディレクトリの中身は、Makefile.imgにmrubyの設定を追加したものです。
`＜プロジェクト名＞/simulator/ev3rt-athrill-v850e2m/sdk/common/Makefile.img` 
に上書きしてください。

参考）base_practice_1
https://github.com/toppers/hakoniwa-scenario-samples/tree/master/single-robot/base_practice_1
