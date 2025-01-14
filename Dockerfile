# ベースイメージを指定
FROM python:3.9-slim

# 作業ディレクトリを作成
WORKDIR /app

# 必要なファイルをコピー
COPY app/ /app

# 必要なパッケージをインストール
RUN pip install flask

# コンテナ起動時のコマンドを指定
CMD ["python", "main.py"]