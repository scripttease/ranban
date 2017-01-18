class StaticPagesController < ApplicationController
  def home
    render html: "hello, world!"
  end

  def about
  end
end
