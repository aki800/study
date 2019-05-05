class CategoriesController < ApplicationController
  def index
    @categories = Category.where(ancestry: nil)
    # @study_categories = @categories[0].children
    # @exercise_categories = @categories[1].children
    # @health_categories = @categories[2].children
    # @hobby_categories = @categories[3].children

    # @examination_categories = @study_categories[0].children
    # @certification_categories = @study_categories[1].children
    # @language_categories = @study_categories[2].children
    # @learning_categories = @study_categories[3].children
    # @business_categories = @study_categories[4].children
    # @other_study_categories = @study_categories[5].children

    gon.categories = @categories
    # gon.study_categories = @study_categories
    # gon.exercise_categories = @exercise_categories
    # gon.health_categories = @health_categories
    # gon.hobby_categories = @hobby_categories

    # gon.examination_categories = @examination_categories
    # gon.certification_categories = @certification_categories
    # gon.language_categories = @language_categories
    # gon.learning_categories = @learning_categories
    # gon.business_categories = @business_categories
    # gon.other_study_categories = @other_study_categories



    # @categories.each_with_index do |category, i|
    #   gon.sub_categories = []
    #   gon.sub_sub_categories = []
    #   gon.sub_categories = category.children
    #   while i < gon.sub_categories.length
    #     gon.sub_sub_categories = gon.sub_categories[i].children
    #     i += 1
    #   end
    # end


    gon.sub_categories =[]
    gon.sub_sub_categories = []
    i = 0
    while i < @categories.length
      gon.sub_categories << @categories[i].children
        n = 0
        while n < @categories[i].children.length
            gon.sub_sub_categories << @categories[i].children[n].children
            n += 1
        end
      i += 1
    end

  end
end
