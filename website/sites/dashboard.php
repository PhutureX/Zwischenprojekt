<div class="news_site">
<h2>Willkommen <?php if( $_SESSION['login'] == 1){echo $_SESSION['uname'];}else{echo '';} ?>!</h2>

</div>

<div class="news-articlelist">
  <!-- ARTIKEL 1 -->
  <section>
    <a class="article_preview" href="#">
        <div class="article_preview_content">
          <h2>Hello <?php echo $_SESSION['uname']; ?></h2>
          <p>admin status: <?php  echo $_SESSION['is_admin']; ?></p>
          <p> <? echo var_dump($_SESSION); ?></p>
      </div>
    </a>
  </section>
