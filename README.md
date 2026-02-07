# 初次配置
-   配備
    *   CPU:Intel® Pentium® E6300
    *   Motherboard:ASUS p5kpl-am epu
    *   Ram:Transcend DDR2 800 2G*2
    *   SSD:Samsung MZ7TE256HMHP-000L7 240G(LENOVO 00FC441)
    *   HDD:Seagatev IronWolf 3.5吋2TB*2
    *   Power:SFX Psu 250W
## 硬體
原先從Hardwolf收來一個整台的二手電腦，內含p5kpl-am epu主機板和其CPU`E6300`、400W電源供應器。因為需要將整機小型化，便將主機板搬運至庫存的另一個小型機殼`因為電源故障而沒有電源`的[I-COOLTW 水玲瓏](https://24h.pchome.com.tw/prod/AGAD6Y-A82584775)舊版機殼。<br>

關於安裝的詳細過程，我則是放在[初次進行安裝](./photo/Fist_install.md)這邊，對於初次跌跌撞撞地摸索來說，還算成功。後續則再來看看，能拿這套硬體做些甚麼。

# 後續升級
-   配備
    *   CPU:Intel® Core™ i3-3220
    *   Motherboard:ASUS P8B75M-M/BM6635/DP_MB
    *   Ram:Kingston DDR3 1333 4G*1
    *   SSD:Samsung MZ7TE256HMHP-000L7 240G(LENOVO 00FC441)
    *   HDD:Seagatev IronWolf 3.5吋2TB*2
    *   Power:Snake Psu 450W
    *   Case:Cooler Master
因前陣子螢幕需求，又順便一併購買`i3-3200`，搭配手邊閒置的機殼，組成一台較大內部空間較為充裕的形式。

這個版本在性能上有一點點的提升，雖然礙於手邊記憶體只有這隻，但考量到輕度NAS，並不需要太高的記憶體，整題而言還算是堪用。

# 目前升級到的最終版本
-   配備
    *   CPU:Intel® Core™ i5-4440
    *   Motherboard:Gigabyte G1.Sniper H6 (rev. 1.0)
    *   Ram:Kingston DDR3 1600 8G*3
    *   SSD:Samsung MZ7TE256HMHP-000L7 240G(LENOVO 00FC441)
    *   HDD:Seagatev IronWolf 3.5吋2TB*2
    *   Power:Antec HCG 620w 80 PLUS® Bronze Psu
    *   Case:Cooler Master

零件大部分是在`PTT`的二手板收來的，雖然是消費級的二手零件，主機板雖然是中階遊戲主機的板子，但整體擴充性還算不錯，以目前配備甚至過於充裕了。

目前這套設備除了作為`Jellyfin`之外，同時搭配`qBittorrent`來下載電影。歸功於CPU、RAM的提升，在處理轉檔的過程上也好上不少。因為BT下載的資料夾和電影、影集的資料夾。因為我個人設定在不同的資料夾內，因此在這部分讓我對Linux的檔案系統有了一些實際的經驗。

像是`qBittorrent`本身的資料夾，礙於Docker Stack中根據ID的權限設定，所以只能在裡面操作檔案系統，並不能透過Windows用Samba操作（只能複製），或是透過命令列去操作。

之後我回坑了Minecraft，便把這套NAS改裝成Minecraft 1.21的伺服器，雖然說是套用既有的Docker鏡像，但這鏡像包含可讓基岩版連線的功能。但是GeyserMC偶爾會需要另外更新，這時就運用前面提到的命令列操作，也就是Linux中的CP指令。不過單純敲指令操作略為麻煩，難怪後來大多數玩家會進化成使用FTP操作。

基於以上的「基本功」，我還嘗試了安裝插件，也透過有著密切交互的Minecraft伺服器，在伺服器的運作上，又多了一層理解，透過Minecraft的差件來了解相關應用及進階操作。
# 待辦事項
- [x] 日常清潔灰塵
- [ ] 靈活運用NAS的基本與進階功能
- [ ] 目前Raid 1掛掉一顆硬碟中，待升級硬碟，打算換4t~6t，也觀望是否要組Raid 5
- [ ] 去蝦皮買張洋垃圾10G網卡
- [ ] 把主機板記憶體加到8G*4=32G，希望能找到同品牌同型號
- [ ] 添購UPS，目前考慮OPTI-UPS TS650C 節約型在線互動式
- [ ] 從OMV換成Proxmox VE的ALL IN ONE