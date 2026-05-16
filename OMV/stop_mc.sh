#!/bin/bash
# 定義容器名稱變數，方便之後修改
CONTAINER="minecraft-server-1.21.4"

echo "啟動五分鐘關機程序..."
docker exec $CONTAINER rcon-cli say [公告] 伺服器將在 5 分鐘後關機，請儲存進度。
docker exec $CONTAINER rcon-cli save-all
sleep 120
docker exec $CONTAINER rcon-cli say [公告] 伺服器剩餘 3 分鐘關機。
docker exec $CONTAINER rcon-cli save-all
sleep 120
docker exec $CONTAINER rcon-cli say [警告] 最後 1 分鐘！將停止紅石機關運作。
docker exec $CONTAINER rcon-cli save-all
sleep 30
docker exec $CONTAINER rcon-cli say [最後警告] 30 秒後中斷連線！執行強制存檔...
sleep 30
docker exec $CONTAINER rcon-cli save-all
echo "正在停止容器..."
docker stop -t 60 $CONTAINER
echo "伺服器已安全關閉 (Code 0)。"