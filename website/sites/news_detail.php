<?php
$sql = "SELECT * FROM news WHERE id = '{$_GET['id']}' LIMIT 1";
$res = mysqli_query($dblink, $sql);

if( mysqli_num_rows($res) < 1 ){
?>

  <div class="message_404">
    <img src="img/404/404.gif" alt="">

    <h2>Es wurde keine News gefunden</h2>
    <p>Go back to<a href="index.php?page=news"> Newslist</a></p>
  </div>

<?php

}else{
  $row = mysqli_fetch_assoc($res);
  ?>


<div class="breadcrumbs">
  <a href="index.php">Home</a><p>></p><a href="index.php?page=news">News</a><p>></p><a href="index.php?page=news&id=<?php echo $row['id']; ?>"><?php echo $row['title']; ?></a>
</div>

<!-- SLIDER PLACEHOLDER -->

<div>
  <figure class="newstitle">
    <img src="<?php echo $row['headerimg']; ?>" alt="Slider Image" >
  </figure>
</div>


</div>

<!-- ARTIKEL 1 -->

<section>
  <div>
      <div class="article">
        <h2><?php echo $row['title']; ?></h2>
        <p><?php echo nl2br($row['content']); ?></p>
        <figure class="article_figure">
          <img src="<?php echo $row['img1']; ?>" alt="<?php echo $row['title']; ?> pic1" />
          <img src="<?php echo $row['img2']; ?>" alt="<?php echo $row['title']; ?> pic2"/>
          <img src="<?php echo $row['img3']; ?>" alt="<?php echo $row['title']; ?> pic3"/>
        </figure>
        <div class="btn">
          <a href="index.php?page=news" >more News</a>
        </div>
    </div>

    <div class="comments_title">
      <h3>Comments</h3>

    </div>

    <div class="comments_box">



              <?php
              $sql = "SELECT news_comments.*, users.uname FROM news_comments LEFT JOIN users ON users.id = news_comments.author_id WHERE news_id = '{$_GET['id']}' ORDER BY created_at DESC";
              $res = mysqli_query($dblink, $sql);

              while( $row = mysqli_fetch_assoc($res) ){
              ?>"
                  <div class="comment">
                      <div class="timestamp" ><?php echo date('d.m.Y', $row['created_at']);?></div>
                      <h4><?php echo $row['uname']; ?>:</h4>
                      <p><?php echo $row['comment']; ?></p>
                  </div>
              <?php } ?>
          </div>
          <!-- <span id="comments"></span> -->

          <?php

          if( $errors === true){
              echo '<div class="errors">';
              foreach($errorsMsg as $error){
                  echo "<p>$error</p>";
              }
              echo '</div>';
          }

          if( $success === true ){
              echo '<div class="success">Your comment has been sent!</div>';
          }

          ?>

          <?php
          if( $_SESSION['login'] == 1){
          ?>

          <div class="comment_form_title">
            <h3>Comment</h3>
          </div>
              <div class="comment_form">

                  <form action="" method="post">

                      <textarea name="comment" id="comment" class="comment_text"></textarea>

                      <div class="comment_button">
                      <button type="submit" name="insertcomment" >Send</button>
                    </div>
                  </form>
              </div>
          <?php }else{ ?>
              <p>Please login to comment.</p>
          <?php } ?>
      </div>


  </div>

</section>
<?php } ?>
