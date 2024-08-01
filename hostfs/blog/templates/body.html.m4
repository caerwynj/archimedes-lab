<body>
include(__ROOT/templates/header.html.m4)
<main class="page-content" aria-label="Content">
      <div class="wrapper">
        <article class="post h-entry" itemscope itemtype="http://schema.org/BlogPosting">

  <header class="post-header">
    <h1 class="post-title p-name" itemprop="name headline">__POST_TITLE</h1>
    <p class="post-meta">
      <time class="dt-published" datetime="2024-06-30T00:00:00+00:00" itemprop="datePublished">Jun 30, 2024
      </time></p>
  </header>

  <div class="post-content e-content" itemprop="articleBody">
<p>__POST_DESC</p>
__POST_HTML
include(__POST_TBL)
  </div><a class="u-url" href="__POST_URL" hidden></a>
</article>

      </div>
  
</main>
include(__ROOT/templates/footer.html.m4)
</body>
</html>
