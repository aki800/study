class CategoriesController < ApplicationController
  def index
    @categories = Category.where(ancestry: nil)
    gon.study_categories = @categories[0].children
    gon.exercise_categories = @categories[1].children
    gon.health_categories = @categories[2].children
    gon.hobby_categories = @categories[3].children

    gon.examination_categories = gon.study_categories[0].children
    gon.certification_categories = gon.study_categories[1].children
    gon.language_categories = gon.study_categories[2].children
    gon.learning_categories = gon.study_categories[3].children
    gon.business_categories = gon.study_categories[4].children
    gon.other_study_categories = gon.study_categories[5].children


    gon.sport_categories = gon.exercise_categories[4].children

    gon.diet_categories = gon.health_categories[0].children
    gon.sleep_categories = gon.health_categories[1].children
    gon.meal_categories = gon.health_categories[2].children
    gon.morning_activity_categories = gon.health_categories[3].children
    gon.rehabilitation_categories = gon.health_categories[4].children
    gon.beauty_categories = gon.health_categories[5].children
    gon.other_health_categories = gon.health_categories[6].children

    gon.book_categories = gon.hobby_categories[0].children
    gon.music_instrument_categories = gon.hobby_categories[1].children
    gon.painting_categories = gon.hobby_categories[2].children
    gon.writing_categories = gon.hobby_categories[3].children
    gon.other_hobby_categories = gon.hobby_categories[4].children

    # gon.sub_categories =[]
    # gon.sub_sub_categories = []
    # i = 0
    # while i < @categories.length
    #   gon.sub_categories << @categories[i].children
    #     n = 0
    #     while n < @categories[i].children.length
    #         gon.sub_sub_categories << @categories[i].children[n].children
    #         n += 1
    #     end
    #   i += 1
    # end

  end
end
