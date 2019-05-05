$(function() {

  function showSubCategories(category) {
    var html = `<div class = "categories-wrapper__box", id = "subcategory_${category.name}">
                  ${category.name}`
    $(".categories-wrapper").append(html);
  }

//study categories
  $("#category_勉強").on("click", function() {
    $(".categories-wrapper").empty();
      for (var n = 0, sub_len = gon.sub_categories[0].length; n < sub_len; ++n) {
      showSubCategories(gon.sub_categories[0][n]);
      }
    //examination categories
    $("#subcategory_受験勉強").on("click", function() {
      $(".categories-wrapper").empty();
      for (var i = 0, sub_sub_len = gon.sub_sub_categories[0].length; i < sub_sub_len; ++i) {
      showSubCategories(gon.sub_sub_categories[0][i]);
      }
    });
    //certification categories
    $("#subcategory_資格勉強").on("click", function() {
      $(".categories-wrapper").empty();
      for (var i = 0, sub_sub_len = gon.sub_sub_categories[1].length; i < sub_sub_len; ++i) {
      showSubCategories(gon.sub_sub_categories[1][i]);
      }
    });
    //language categories
    $("#subcategory_語学勉強").on("click", function() {
      $(".categories-wrapper").empty();
      for (var i = 0, sub_sub_len = gon.sub_sub_categories[2].length; i < sub_sub_len; ++i) {
      showSubCategories(gon.sub_sub_categories[2][i]);
      }
    });
    //learning categories
    $("#subcategory_学問").on("click", function() {
      $(".categories-wrapper").empty();
      for (var i = 0, sub_sub_len = gon.sub_sub_categories[3].length; i < sub_sub_len; ++i) {
      showSubCategories(gon.sub_sub_categories[3][i]);
      }
    });
    //business categories
    $("#subcategory_ビジネス").on("click", function() {
      $(".categories-wrapper").empty();
      for (var i = 0, sub_sub_len = gon.sub_sub_categories[4].length; i < sub_sub_len; ++i) {
      showSubCategories(gon.sub_sub_categories[4][i]);
      }
    });
    //other study categories
    $("#subcategory_その他の勉強").on("click", function() {
      $(".categories-wrapper").empty();
      for (var i = 0, sub_sub_len = gon.sub_sub_categories[5].length; i < sub_sub_len; ++i) {
      showSubCategories(gon.sub_sub_categories[5][i]);
      }
    });
  });

  $("#category_運動").on("click", function() {
    $(".categories-wrapper").empty();
      for (var n = 0, sub_len = gon.sub_categories[1].length; n < sub_len; ++n) {
      showSubCategories(gon.sub_categories[1][n]);
      }
  });


  $("#category_健康").on("click", function() {
    $(".categories-wrapper").empty();
      for (var n = 0, sub_len = gon.sub_categories[2].length; n < sub_len; ++n) {
      showSubCategories(gon.sub_categories[2][n]);
      }
  });

  $("#category_趣味・創作活動").on("click", function() {
    $(".categories-wrapper").empty();
     for (var n = 0, sub_len = gon.sub_categories[3].length; n < sub_len; ++n) {
      showSubCategories(gon.sub_categories[3][n]);
      }
  });
});
