# 踏入腳本的世界
因為一開始發現Minecraft伺服器即便用Container按`Stop`關閉，卻顯示Code 128。這明明是按`kill`，後來發現是因為這類容器關閉需要時間。

## 用指令？
這確實個好方法，透過docker 內建的exec指令來執行各種動作，甚至搭配插件還可以操作Minecraft指令。
所以就問了一下我的小助手[Gemini](/OMV/關機Gemini.md)，可以使用指令來「存檔並延遲30秒關閉容器」
```sh
docker exec minecraft-server-1.21.4 rcon-cli say save-all && docker stop -t 30 minecraft-server-1.21.4
```
但這樣似乎麻煩一些，而用指令還可以做一些特殊的功能（像是倒數），也算是體驗伺服器通常不能直接關機的包袱了，關機要一段時間，開機也要一段時間（比較高規格的伺服器開機會因為自檢拖長），所以伺服器是預設不能關機的。<br>

---
目前分別做了[停止容器](/OMV/stop_mc.sh)、[關機](/OMV/safe_shutdown.sh)、[重新啟動](/OMV/safe_reboot.sh)的腳本，<br>
至於重新啟動的腳本，則是替換了每個月第一日設定OMV的自動重啟功能，<br>
雖然能順利運作，但腳本重啟有別於OMV系統重啟（會自動重開各項服務），重啟完之後Docke的那些`Containers`反而不會自己開啟了，<br>
因此最後決定把`Stack`裡面的`*.yaml`檔案裡面都改成```restart: always```，這樣才不會受到腳本重啟影響，而不自己重開。

---
確保擁有者是 root
```sh
chown root:root /root/stop_mc.sh
```
確保有執行權限
```sh
chmod +x /root/stop_mc.sh
```

顯示紀錄
```sh
chown -v root:root /root/stop_mc.sh
```
誰執行了檔案
```sh
ls -lu /root/stop_mc.sh
```