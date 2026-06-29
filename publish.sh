#!/bin/bash
# One-time setup for datamavericks.dev on GitHub Pages.
# Run from the folder containing index.html, ffn.html, and CNAME.
set -e
git init
git add .
git commit -m "Publish DataMavericks lessons site"
gh repo create datamavericks-site --public --source=. --push
echo ""
echo "✅ Pushed. Now:"
echo "1. Repo → Settings → Pages → Source: Deploy from a branch → main → /(root)"
echo "2. The CNAME file already set your custom domain to datamavericks.dev"
echo "3. Add the DNS records (4 A records + www CNAME) at your registrar"
echo "4. Tick 'Enforce HTTPS' once the cert provisions"
