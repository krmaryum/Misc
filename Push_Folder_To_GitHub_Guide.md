# 🚀 Step-by-Step Guide: Push a Folder to GitHub

Follow these simple steps to upload your local project folder (e.g., `ZoomtoYouTube`) to GitHub.

---

## 1. Open Terminal in Your Project Folder

- Navigate to your folder
- Right-click → **Open in Terminal / Git Bash**

---

## 2. Initialize Git

```bash
git init
```

---

## 3. Add Files to Git

```bash
git add .
```

---

## 4. Commit Your Files

```bash
git commit -m "Initial commit"
```

---

## 5. Create a Repository on GitHub

1. Go to https://github.com
2. Click **New Repository**
3. Enter a name (e.g., `ZoomtoYouTube`)
4. Click **Create repository**

---

## 6. Connect Local Repo to GitHub

Copy your repository URL and run:

```bash
git remote add origin https://github.com/YOUR-USERNAME/ZoomtoYouTube.git
```

---

## 7. Push Code to GitHub

```bash
git branch -M main
git push -u origin main
```

---

## ✅ Done!

Your project is now live on GitHub 🎉

---

## ⚡ Optional Tips

- Add `.env` to `.gitignore`
- Use `README.md` for documentation
- Use GitHub Actions for CI/CD

---

Happy coding 💻🔥
