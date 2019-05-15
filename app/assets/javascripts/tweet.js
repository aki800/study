$(function() {

  $(".fas.fa-chevron-down").on("click", function() {
     var html = `<div class= "tweets-list">
              <a href = "", class= "tweets-list__ele">
                編集する
              </a>
              <a href= "", class= "tweets-list__ele">
                削除する
              </a>
            </div>`
   $("").append(html);

   // $(".fas.fa-chevron-down").on("click", function() {
   //   $(".tweets-list").remove();
   //  });
 });
});
