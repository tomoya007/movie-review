# nginx:1.22.1 イメージをdocker hubからインストール
FROM nginx:1.22.1

# インクルード用のディレクトリ内を削除
RUN rm -f /etc/nginx/conf.d/*

# Nginxの設定ファイルをコンテナにコピー
ADD nginx.conf /etc/nginx/conf.d/movie-review.conf

# ビルド完了後にNginxを起動
CMD /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf