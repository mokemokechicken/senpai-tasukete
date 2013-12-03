新人女子の書いたコードを直すだけなわけがないので検証環境を準備しました
=====================================================================

「新人女子の書いたコードを直すだけの簡単なお仕事です！」
https://paiza.jp/poh/ec-campaign

という楽しいイベントがあります(2014年1月8日まで投稿できます）。

この企画サイトで投稿したコードが実行され検証されるのですが、
少し実行に時間がかかるので、簡単な検証環境を準備しました。

使い方
======

大体こんな感じです。

```sh
git clone https://github.com/mokemokechicken/senpai-tasukete.git
cd senpai-tasukete
sh verify.sh <YOUR PROGRAM EXEC COMMAND>
```

`<YOUR PROGRAM EXEC COMMAND>` の部分は作成したプログラムを起動するための引数を入れてください。
標準入力への問題の投入は verify.sh の方で行います。
実行すると、サイトに掲載されている簡単な例と、もう少し複雑なテストケース、20000Item, 200000Itemのケースで動作検証をします。
ただし、20000Itemと200000Itemの例の答えが合っているという保証はないので悪しからず。。（間違えがあれば教えてください）

例
-----

```sh
% sh verify.sh python ../try2.py
--------------------------------------
EXAMPLE: 1.txt

real    0m0.023s
user    0m0.013s
sys     0m0.008s
OK
--------------------------------------
EXAMPLE: 2.txt

real    0m0.023s
user    0m0.013s
sys     0m0.009s
OK
--------------------------------------
EXAMPLE: 3.txt

real    0m0.022s
user    0m0.013s
sys     0m0.008s
OK
--------------------------------------
EXAMPLE: test.txt

real    0m0.022s
user    0m0.013s
sys     0m0.008s
OK
--------------------------------------
EXAMPLE: 20000_75.txt

real    0m0.065s
user    0m0.054s
sys     0m0.010s
OK
--------------------------------------
EXAMPLE: 200000_75.txt

real    0m0.409s
user    0m0.391s
sys     0m0.016s
OK
```

License
=======

http://mokemokechicken.mit-license.org/

