# BWF Quote App — Deployment Guide
## Get live in ~10 minutes. No coding required.

---

## STEP 1 — Set up your free database (Supabase)

1. Go to **supabase.com** → click "Start your project" → sign up free
2. Click **"New Project"** → name it `bwf-quotes` → set a DB password → choose **Sydney (ap-southeast-2)**
3. Wait ~2 minutes for it to spin up
4. In the left sidebar click **SQL Editor** → click **"New Query"**
5. Copy and paste the contents of **SUPABASE_SETUP.sql** → click **Run**
6. In the left sidebar click **Project Settings → API**
7. Copy these two values (you'll need them in Step 3):
   - **Project URL** (looks like `https://xxxxxxxx.supabase.co`)
   - **anon public** key (long string under "Project API keys")

---

## STEP 2 — Upload to GitHub

1. Go to **github.com** → sign up free if needed → click **"New repository"**
2. Name it `bwf-quote-app` → set to **Private** → click "Create repository"
3. On your computer, open the `bwf-quote-app` folder
4. Follow GitHub's instructions to push the folder ("…or push an existing repository")
   - If you're not comfortable with Git, use **GitHub Desktop** (desktop.github.com) — drag the folder in

---

## STEP 3 — Deploy to Netlify

1. Go to **netlify.com** → sign up free with your GitHub account
2. Click **"Add new site" → "Import an existing project"**
3. Choose **GitHub** → select **bwf-quote-app**
4. Build settings (Netlify usually auto-detects these):
   - Build command: `npm run build`
   - Publish directory: `dist`
5. Click **"Add environment variables"** and add:
   - Key: `VITE_SUPABASE_URL`  → Value: your Project URL from Step 1
   - Key: `VITE_SUPABASE_ANON_KEY` → Value: your anon key from Step 1
6. Click **"Deploy site"**
7. Wait ~2 minutes → Netlify gives you a URL like `https://amazing-name-123.netlify.app`

---

## STEP 4 — Optional: Custom domain

In Netlify → Site settings → Domain management → Add custom domain
e.g. `quotes.brisbanewindowfurnishings.com.au`

---

## STEP 5 — Share with your team

- Send the URL to Maneesh and your admin
- Each person uses their name + PIN to log in:
  - **Hari**: PIN 1234
  - **Maneesh**: PIN 5678
  - **Admin**: PIN 0000
- To change PINs, edit `src/components/Login.jsx` → the USERS array at the top

---

## Updating the app later

To make changes (e.g. update pricing, add users):
1. Edit the files on your computer
2. Push to GitHub (Netlify auto-deploys within ~2 mins)

## Pricing updates

All product pricing is in: `src/constants.js`
Just update the `baseRate` numbers and redeploy.

---

## Need help?

If you get stuck on any step, paste the error message into Claude and I'll walk you through it.
