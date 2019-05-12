$(document).on('turbolinks:load', function() {
  $(function() {

    function showMiddleCategories(category) {
      var html = `<div class = "categories-wrapper__box", id = "middlecategory_${category.name}">
                    <div class= "categories-wrapper__box__title">
                      <div class= "categories-wrapper__box__title__text">
                        ${category.name}
                      </div>
                    </div>
                  </div>`
      $(".categories-wrapper").append(html);
    }

    function showFinalCategories(category) {
      var html = `<a href = "/categories/${category.id}/tweets", class = "categories-wrapper__box", id = "middlecategory_${category.name}">
                    <div class = "categories-wrapper__box__title">
                      <div class = "categories-wrapper__box__title__text">
                        ${category.name}
                      </div>
                    </div>
                  </a>`
      $(".categories-wrapper").append(html);
    }


    $("#category_勉強").on("click", function() {
      $(".categories-wrapper").empty();
        for (var n = 0, sub_len = gon.study_categories.length; n < sub_len - 1; ++n) {
        showMiddleCategories(gon.study_categories[n]);
        }
        for (var n = n, sub_len = gon.study_categories.length; n < sub_len ; ++n){
        showFinalCategories(gon.study_categories[n]);
        }

      $("#middlecategory_受験勉強").on("click", function() {
        $(".categories-wrapper").empty();
        for (var i = 0, sub_sub_len = gon.examination_categories.length; i < sub_sub_len; ++i) {
        showFinalCategories(gon.examination_categories[i]);
        }
      });
      $("#middlecategory_資格勉強").on("click", function() {
        $(".categories-wrapper").empty();
        for (var i = 0, sub_sub_len = gon.certification_categories.length; i < sub_sub_len; ++i) {
        showFinalCategories(gon.certification_categories[i]);
        }
      });
      $("#middlecategory_語学勉強").on("click", function() {
        $(".categories-wrapper").empty();
        for (var i = 0, sub_sub_len = gon.language_categories.length; i < sub_sub_len; ++i) {
        showFinalCategories(gon.language_categories[i]);
        }
      });
      $("#middlecategory_学問").on("click", function() {
        $(".categories-wrapper").empty();
        for (var i = 0, sub_sub_len = gon.learning_categories.length; i < sub_sub_len; ++i) {
        showFinalCategories(gon.learning_categories[i]);
        }
      });
      $("#middlecategory_ビジネス").on("click", function() {
        $(".categories-wrapper").empty();
        for (var i = 0, sub_sub_len = gon.business_categories.length; i < sub_sub_len; ++i) {
        showFinalCategories(gon.business_categories[i]);
        }
      });
    });


    $("#category_運動").on("click", function() {
      $(".categories-wrapper").empty();
      for (var n = 0, sub_len = gon.exercise_categories.length; n < sub_len; ++n) {
        if(gon.exercise_categories[n].name == "スポーツ") {
          showMiddleCategories(gon.exercise_categories[n]);
        }
        else {
        showFinalCategories(gon.exercise_categories[n]);
        }
      }

        $("#middlecategory_スポーツ").on("click", function() {
          $(".categories-wrapper").empty();
          for (var i = 0, sub_sub_len = gon.sport_categories.length; i < sub_sub_len; ++i) {
          showFinalCategories(gon.sport_categories[i]);
          }
        });
    });


    $("#category_健康").on("click", function() {
      $(".categories-wrapper").empty();
        for (var n = 0, sub_len = gon.health_categories.length; n < sub_len; ++n) {
        showFinalCategories(gon.health_categories[n]);
        }
    });


    $("#category_趣味・創作活動").on("click", function() {
      $(".categories-wrapper").empty();
        for (var n = 0, sub_len = gon.hobby_categories.length; n < sub_len; ++n) {
          if(gon.hobby_categories[n].name == "その他の趣味・創作活動") {
          showFinalCategories(gon.hobby_categories[n]);
          }
          else {
          showMiddleCategories(gon.hobby_categories[n]);
          }
        }

        $("#middlecategory_読書").on("click", function() {
          $(".categories-wrapper").empty();
          for (var i = 0, sub_sub_len = gon.book_categories.length; i < sub_sub_len; ++i) {
            showFinalCategories(gon.book_categories[i]);
          }
        });
        $("#middlecategory_楽器演奏").on("click", function() {
          $(".categories-wrapper").empty();
          for (var i = 0, sub_sub_len = gon.music_instrument_categories.length; i < sub_sub_len; ++i) {
            showFinalCategories(gon.music_instrument_categories[i]);
          }
        });
        $("#middlecategory_絵を描く").on("click", function() {
          $(".categories-wrapper").empty();
          for (var i = 0, sub_sub_len = gon.painting_categories.length; i < sub_sub_len; ++i) {
            showFinalCategories(gon.painting_categories[i]);
          }
        });
        $("#middlecategory_執筆").on("click", function() {
          $(".categories-wrapper").empty();
          for (var i = 0, sub_sub_len = gon.writing_categories.length; i < sub_sub_len; ++i) {
            showFinalCategories(gon.writing_categories[i]);
          }
        });
    });


    $(document).ready(function(){
      $('.categories-images').slick({
          autoplay: true,
          autoplaySpeed: 3000,
      });
    });
  });
});
