# script-news

Script dyal l-akhbar, kaykhdem local. Had l-repo kaytsejjel automatiquement 3la GitHub kol 5 d9aye9 bach nkhdem mn 2 PC.

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
4. Lanci t-tâche dyal sync:
   ```
   powershell -ExecutionPolicy Bypass -File .\install-sync-task.ps1
   ```

## Fichiers

- `sync.ps1`: commit → pull → push. Ila tra conflict kayw9ef w kaykteb f `sync.log`.
- `install-sync-task.ps1`: kaydir tâche Windows katlanci `sync.ps1` kol 5 d9aye9.

## Nasi7a

Qbl ma tbeddel PC, tsenna 5 d9aye9 wla lanci `.\sync.ps1` b yeddik.
