# imageをbuildする
docker image build -t example/echo:latest .

# コンテナを起動する(-d はバックグラウンド実行するオプション)
# この状態では、コンテナ内部で実行しているアプリケーションのportにローカルから接続できない
# portフォワードする必要がある
docker container run -d example/echo:latest

# ローカルの9000portでのアクセスをコンテナ内の8080portにフォワードする
docker container run -d -p 9000:8080 example/echo:latest
