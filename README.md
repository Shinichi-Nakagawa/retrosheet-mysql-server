# retrosheet-mysql-sever
MySQL sever for Retrosheet data

## Description

Retrosheet(http://www.retrosheet.org/)のEvent FileおよびGame LogsをMySQLから使えるようにしたプロジェクトのコードです。

## Requirement

* VirtualBox https://www.virtualbox.org/ 
* Vagrant https://www.vagrantup.com/
* ANSIBLE http://www.ansible.com/

なお、Host PCは64bit OSかつ上記ライブラリが動けば何でもOKですが、作者はMac OS X 10.10.2で作成・検証しました。

## install

### Instanceを準備(Vagrant)

事前にtrusty64という名前でboxを作ってください。

名前でご想像つくかと思いますが、Ubuntu 14.04 LTS(64bit)のイメージで作成します。

>$ vagrant box add trusty64 https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box

Vagrantfileの初期設定は以下のとおりです。ご自身の環境および好みに合わせて変更してください。

 * イメージ名は「Retrosheet MySQL Database」
 * メモリー 2048MB
 * private networkのIPアドレスは「192.168.33.10」
 * MySQLのPortはguest/host共に3306(default)

準備ができたら vagrant upでServerを起動しましょう

>$ vagrant up

この後Ansibleを使うので、ssh-configの設定をしましょう。

>$ vagrant ssh-config ~/.ssh/config

Portを22、Host nameをprivate networkのアドレスに、Hostは任意の名前をつけてください（ここではretrosheet_mysql_server、とします）

### Ansible利用の準備

vagrantが無事起動したらAnsibleの利用準備を行います。

まずはhostsを準備しましょう。ホスト名は前の手順で指定した名前で。

hostsの例
>[retrosheet]
>retrosheet_mysql_server

準備ができたら以下のコマンドでpingが通るか確認してください。

>$ ansible -i hosts retrosheet_mysql_server -m ping

### Playbook実行

ここまでできたら後はコマンドを2つ叩くだけです。

ライブラリ(MySQL/Python他)のインストールおよび、DB scheme/userを作成するPlaybookを実行します。

>$ ansible-playbook -i hosts retrosheet_server_01.yml

ライブラリ(MySQL/Python他)のインストールおよび、DB scheme/userを作成するPlaybookを実行します。

MySQLのユーザーは、rootとapp(application用)、二つ作成されます。

Playbook起動直後にパスワードの設定を求めてきますので入力してください。

>$ ansible-playbook -v -i hosts retrosheet_server_01.yml

>MySQL root password: : root-password

>MySQL app password: : app-password

続いて、Retrosheet用ライブラリ(chadwick)のインストールおよびRetrosheetのダウンロード、データの投入を実施します。

>$ ansible-playbook -i hosts retrosheet_server_02.yml

## データベースの使い方（例）

こちらのリポジトリでサンプルを公開しています。

https://github.com/Shinichi-Nakagawa/retrosheet-app-example
