# script-news

Script dyal l-akhbar, kaykhdem local. Had l-repo kaytsejjel 3la GitHub bach nkhdem mn 2 PC w n3rf fin wselt.

Chouf [PROGRESS.md](PROGRESS.md) bach t3rf fin wselti.

## Setup f PC jdid (mra wa7da)

1. Installi Git: https://git-scm.com/download/win
2. 7ell PowerShell f Desktop w dir:
   ```
   git clone https://github.com/talyahamza/script-news.git "script news"
   ```
   (ghadi t7ell lik safha dyal GitHub bach tconnecta)
3. Dkhol l-dossier w dir l-identité:
   ```
   cd "script news"
   git config user.name "talyahamza"
   git config user.email "talyahamza@gmail.com"
   ```

## Kifach nkhdem

- **Mlli tbda**: `git pull` (wla goul l-Claude), w 9ra `PROGRESS.md`.
- **Mlli tsali**: update `PROGRESS.md` w lanci `.\sync.ps1` (Claude kaydirha f l-akhir).

`sync.ps1`: commit → pull → push. Ila tra conflict kayw9ef w kaykteb f `sync.log`.
