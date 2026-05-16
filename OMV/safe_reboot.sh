#!/bin/bash
MC_CONTAINER="minecraft-server-1.21.4"
OTHER_CONTAINERS="qbittorrent jellyfin"

# 1. 第一階段：預告與初步存檔
docker exec $MC_CONTAINER rcon-cli say [系統公告] 伺服器將在 10 分鐘後隨系統定期重啟。
docker exec $MC_CONTAINER rcon-cli save-all
sleep 300

# 2. 第二階段：先行關閉佔用 IO 的服務
# qBittorrent 和 Jellyfin 先關，釋放硬碟頻寬給 Minecraft
echo "正在停止次要服務..."
docker stop -t 30 $OTHER_CONTAINERS

# 3. 第三階段：Minecraft 最終公告與存檔
docker exec $MC_CONTAINER rcon-cli say [公告] 最後 5 分鐘，執行最終存檔並關機。
docker exec $MC_CONTAINER rcon-cli save-all
sleep 240

# 4. 第四階段：關閉 Minecraft
docker exec $MC_CONTAINER rcon-cli say [警告] 系統即將執行最終存檔並關機。
docker stop -t 60 $MC_CONTAINER

# 5. 第五階段：關閉 Portainer (最後關，因為它是管理介面)
docker stop portainer

# 6. 系統重啟
sleep 10
sudo shutdown -h now