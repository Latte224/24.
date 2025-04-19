# Python 3.11 のスリムバージョンを使用
FROM python:3.11-slim

# 作業ディレクトリを作成
WORKDIR /app

# 依存関係ファイルをコピー
COPY requirements.txt .

# 必要なパッケージをインストール
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションファイルをコピー
COPY . .

# Flaskサーバーを起動する（keep_alive.py内のkeep_alive()を呼び出す用途に応じて変更が必要）
CMD ["python", "main.py"]
