# 管理員物件的根物件
# Admin::LinItem < AdminController
class AdminController < ApplicationController

  http_basic_authenticate_with name: "tony", password: "tony"
end
