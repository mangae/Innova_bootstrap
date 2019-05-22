# InnovaCoin
## Windows wallet - bootstrap (22/May/19)
- Bootstrap block **383.987** for InnovaCoin Windows wallet.
- **Always - Backup your wallet.dat first.**
- Close the InnovaCoin wallet
- Download [Innova_snapshot_Windows_wallet](https://www.dropbox.com/s/8627phpugkchtd6/bootstrap.zip) into your %appdata%/InnovaCore or "C:\Users\YOURuserNAME\AppData\Roaming\InnovaCore" folder and unzip/unpack it (if prompt overwrite files). **MAKE SURE THAT YOU HAVE FRESH BACKUP and "wallet.dat" saved at different location, and do not overwrite entire InnovaCore folder, just the prompt contents"** 
- Start the wallet and verify that your wallet is fully syncronized.

**Note:**
- If you using different location for InnovaCore then unpack this inside of it.

## Linux - Masternode bootstrap (22/May/19)
- Bootstrap block **383.987** for InnovaCoin Linux hot masternode.
- Run following command lines:
```css
wget https://raw.githubusercontent.com/mangae/Innova_bootstrap/master/bootstrap.sh
```
```css
bash bootstrap.sh
```
**Note:**
- Synchronization time may vary of your VPS hardware and network performance.
- bootstrap.sh is build to update your wallet at default **/root/.innovacore/** folder, so if you using different folder please feel free to modify it.