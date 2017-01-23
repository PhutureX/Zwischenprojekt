

                  <?php
                  if( isset($_GET['id']) ){
                      require 'sites/news_detail.php';
                  }else{
                      require 'sites/news_list.php';
                  }
                  
