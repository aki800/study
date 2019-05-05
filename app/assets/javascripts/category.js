$(function() {

  function showSubCategories(category) {
    var html = `<div class = "categories-wrapper__box", id = "subcategory_${category.id}">
                  ${category.name}`
    $(".categories-wrapper").append(html);
  }

//study categories
  $("#category_1").on("click", function() {
    $(".categories-wrapper").empty();
      for (var n = 0, sub_len = gon.sub_categories[0].length; n < sub_len; ++n) {
      showSubCategories(gon.sub_categories[0][n]);
      }
    //examination categories
    $("#subcategory_5").on("click", function() {
      $(".categories-wrapper").empty();
      for (var i = 0, sub_sub_len = gon.sub_sub_categories[0].length; i < sub_sub_len; ++i) {
      showSubCategories(gon.sub_sub_categories[0][i]);
      }
    });
    //certification categories
    $("#subcategory_6").on("click", function() {
      $(".categories-wrapper").empty();
      for (var i = 0, sub_sub_len = gon.sub_sub_categories[1].length; i < sub_sub_len; ++i) {
      showSubCategories(gon.sub_sub_categories[1][i]);
      }
    });
    //language categories
    $("#subcategory_7").on("click", function() {
      $(".categories-wrapper").empty();
      for (var i = 0, sub_sub_len = gon.sub_sub_categories[2].length; i < sub_sub_len; ++i) {
      showSubCategories(gon.sub_sub_categories[2][i]);
      }
    });
    //learning categories
    $("#subcategory_8").on("click", function() {
      $(".categories-wrapper").empty();
      for (var i = 0, sub_sub_len = gon.sub_sub_categories[3].length; i < sub_sub_len; ++i) {
      showSubCategories(gon.sub_sub_categories[3][i]);
      }
    });
    //business categories
    $("#subcategory_9").on("click", function() {
      $(".categories-wrapper").empty();
      for (var i = 0, sub_sub_len = gon.sub_sub_categories[4].length; i < sub_sub_len; ++i) {
      showSubCategories(gon.sub_sub_categories[4][i]);
      }
    });
    //other study categories
    $("#subcategory_10").on("click", function() {
      $(".categories-wrapper").empty();
      for (var i = 0, sub_sub_len = gon.sub_sub_categories[5].length; i < sub_sub_len; ++i) {
      showSubCategories(gon.sub_sub_categories[5][i]);
      }
    });
  });

  $("#category_2").on("click", function() {
    $(".categories-wrapper").empty();
      for (var n = 0, sub_len = gon.sub_categories[1].length; n < sub_len; ++n) {
      showSubCategories(gon.sub_categories[1][n]);
      }
  });


  $("#category_3").on("click", function() {
    $(".categories-wrapper").empty();
      for (var n = 0, sub_len = gon.sub_categories[2].length; n < sub_len; ++n) {
      showSubCategories(gon.sub_categories[2][n]);
      }
  });

  $("#category_4").on("click", function() {
    $(".categories-wrapper").empty();
     for (var n = 0, sub_len = gon.sub_categories[3].length; n < sub_len; ++n) {
      showSubCategories(gon.sub_categories[3][n]);
      }
  });
});
