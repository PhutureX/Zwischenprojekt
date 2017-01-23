<div class="breadcrumbs">
        <a href="index.php">Home</a><p>></p><a href="index.php?page=news">News</a>
      </div>

      <div class="news_site">
      <h2>News</h2>

      </div>


<div class="news-articlelist">
  <?php
    $sql = "SELECT news.*, users.uname FROM news LEFT JOIN users ON news.author_id = users.id ORDER BY id DESC LIMIT 10";
    $res = mysqli_query($dblink, $sql);

    while( $row = mysqli_fetch_assoc($res) ){
        ?>
        <!-- ARTIKEL -->
        <section>
          <a class="article_preview" href="index.php?page=news&id=<?php echo $row['id']; ?>" >
            <figure>
              <img src="<?php echo $row['headerimg']; ?>" alt="<?php echo $row['title']; ?>" width="300px" height="300px"/>
            </figure>

              <article>
                <div class="timestamp" >published on <?php echo date('d.m.Y', $row['created_at']); ?></div>

                <h2><?php echo $row['title']; ?></h2>
                <p>
                  <?php echo $row['preview']; ?>
                </p>
                <div class="read_more" >by <?php echo $row['uname']; ?></div>
            </article>
          </a>
        </section>

        <?php } ?>

      </div>
      <div class="loadmore">
        <button name="button" value="Load more">Load More</button>
      </div>
