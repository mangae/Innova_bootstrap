# InnovaCoin - FOR NEW CHAIN ONLY - [Wallet version v4.3.8.9](https://github.com/innova-foundation/innova/releases)
## Windows wallet - bootstrap (06/Mar/21)
- Bootstrap block ***1113550*** for Innova Windows wallet.
- The steps are similar for MacOX and Linux
1. **Always - Backup your wallet.dat first.**
2. Close the Innova wallet
3. Go to Windows File Explorer and browse to %appdata%\Innova
![Innova Data Folder](https://i.imgur.com/KbLozsc.jpg)
4. Remove/delete below listed folders and files (see the picture below).
***DO NOT DELETE WALLET.DAT FILE*** (Make sure that you have copy of it at safe location.)
* database
* smsgDB
* txleveldb
* blk0001.dat
* debug.log
* peers.dat

![Remove Files and Folders](https://i.imgur.com/ax6Q8lJ.jpg)  

5. Download [Innova_snapshot_Windows_wallet](https://github.com/innova-foundation/innova/releases/download/v4.3.8.8/innovabootstrap.zip) into your %appdata%/Innova or "C:\Users\YOURuserNAME\AppData\Roaming\Innova" folder and unzip/unpack it (if prompt overwrite files). **MAKE SURE THAT YOU HAVE FRESH BACKUP and "wallet.dat" saved at different location, and do not overwrite entire InnovaCore folder, just the prompt contents"** 
![Download snapshot](https://i.imgur.com/BogvO2e.jpg)
6. Rename file fortunastake.conf into ***collateralnode.conf***
7. Start the wallet and verify that your wallet is fully syncronized.

**Note:**
- If you using different location for Innova then unpack this inside of it.

## Linux - Masternode bootstrap (06/Mar/21)
- Bootstrap block ***1113550*** for Innova Linux hot masternode.
- Run following command lines:
```css
wget https://raw.githubusercontent.com/mangae/Innova_bootstrap/master/bootstrap.sh
```
```css
bash bootstrap.sh
```
**Note:**
- Synchronization time may vary of your VPS hardware and network performance.
- bootstrap.sh is build to update your wallet at default **/root/.innova/** folder, so if you using different folder please feel free to modify it.
- It will also remove files peers.dat and debug.log from your .innova folder.
