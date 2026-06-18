# GitHub Pages 部署说明

这个文件夹是一个纯静态博客，可以直接部署到 GitHub Pages。

## 方式一：网页上传，适合没有安装 Git 的情况

1. 登录 https://github.com/
2. 新建仓库，例如：`mole-bin-blog`
3. 进入仓库，点击 `Add file` → `Upload files`
4. 上传本文件夹内的所有文件：
   - `index.html`
   - `styles.css`
   - `script.js`
   - `assets/`
   - `.nojekyll`
   - 其他 README / start 脚本可传可不传
5. 进入仓库 `Settings` → `Pages`
6. Source 选择 `Deploy from a branch`
7. Branch 选择 `main`，Folder 选择 `/ (root)`
8. 保存后等待 1-3 分钟
9. 访问 GitHub 给出的 Pages 地址

如果仓库名是 `mole-bin-blog`，地址通常类似：

`https://你的用户名.github.io/mole-bin-blog/`

如果仓库名是 `你的用户名.github.io`，地址通常是：

`https://你的用户名.github.io/`

## 后续更新

修改本地 `D:\code\blog` 后，把修改过的文件重新上传到 GitHub 仓库即可。
