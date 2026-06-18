# Mole Bin 的个人博客

这是一个纯静态个人博客模板，可直接双击 `index.html` 预览，也可以上传到 GitHub Pages、Netlify、Vercel 等平台。

## 文件说明

- `index.html`：页面结构
- `styles.css`：视觉样式与响应式布局
- `script.js`：文章数据、搜索、分类筛选、深浅色切换

## 如何修改文章

打开 `script.js`，在 `posts` 数组里新增或修改文章对象：

```js
{
  slug: 'my-new-post',
  title: '文章标题',
  category: '分类',
  date: '2026-06-05',
  readTime: '4 分钟',
  excerpt: '摘要',
  body: `<p>正文 HTML</p>`
}
```

## 下一步可定制项

- 改博客名称、作者简介和联系方式
- 增加真实文章内容
- 改成你喜欢的颜色和排版
- 添加独立文章页面、评论、RSS 或后台 CMS

## D 盘本地部署

当前部署目录：`D:\code\blog`

### 直接打开

双击 `index.html`，或在浏览器中打开：

`file:///D:/code/blog/index.html`

### 启动本地服务

双击 `start-blog.bat`，然后访问：

`http://127.0.0.1:8765/`

如需改端口，请修改 `start-blog.bat` 或 `start-blog.ps1` 中的 `8765`。

