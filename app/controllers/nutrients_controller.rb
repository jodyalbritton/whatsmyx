class NutrientController < ApplicationController
    before_filter :authenticate_user!
end
