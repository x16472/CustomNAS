# qBittorrent on OpenMediaVault 5
*   參考資料
    -   [影片](https://youtu.be/BLM2sgMbXmY)<br>
    -   [網頁](https://dbtechreviews.com/2020/01/how-to-install-qbittorrent-on-openmediavault-5/)
```yaml
---
version: "2"
services:
  qbittorrent:
    image: linuxserver/qbittorrent
    container_name: qbittorrent
    environment:
      - PUID=998
      - PGID=100
      - TZ=Asia/Taipei
      - UMASK_SET=022
      - WEBUI_PORT=8080
    volumes:
      - /srv/dev-disk-by-uuid-e508bb33-1bb6-4daa-ad93-08f1edae1580/config/qbittorrent:/config
      - /srv/dev-disk-by-uuid-e508bb33-1bb6-4daa-ad93-08f1edae1580/Torrents/Downloads:/downloads
    ports:
      - 6881:6881
      - 6881:6881/udp
      - 8080:8080
    restart: unless-stopped
```
[yaml檔案](./qbittorrent.yaml)<br>
## 完成狀態
```yaml
[migrations] started
[migrations] no migrations found
───────────────────────────────────────
      ██╗     ███████╗██╗ ██████╗ 
      ██║     ██╔════╝██║██╔═══██╗
      ██║     ███████╗██║██║   ██║
      ██║     ╚════██║██║██║   ██║
      ███████╗███████║██║╚██████╔╝
      ╚══════╝╚══════╝╚═╝ ╚═════╝ 
   Brought to you by linuxserver.io
───────────────────────────────────────
To support LSIO projects visit:
https://www.linuxserver.io/donate/
───────────────────────────────────────
GID/UID
───────────────────────────────────────
User UID:    998
User GID:    100
───────────────────────────────────────
[custom-init] No custom files found, skipping...
WebUI will be started shortly after internal preparations. Please wait...
Connection to localhost (127.0.0.1) 8080 port [tcp/http-alt] succeeded!
[ls.io-init] done.
```
>qBittorrent Web UI登入用http:IP+port，<br>
>預設帳號：admin，<br>
>預設密碼：adminadmin