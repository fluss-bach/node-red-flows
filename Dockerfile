FROM nodered/node-red:latest
# LINE Messaging API ノードを追加（本番はバージョン固定推奨）
RUN npm install --no-update-notifier --no-fund --omit=dev node-red-contrib-line-messaging-api@0.4.3

# フローを永続化
COPY flows.json /data/flows.json

# Cloud Run は $PORT で待受するので EXPOSE は不要（あっても害なし）
EXPOSE 1880

