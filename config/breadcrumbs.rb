crumb :root do
  link "メルカリ", root_path
end

crumb :user_mypage do
  link "マイページ", mypage_path
  parent :root
end

crumb :user_sign_out do
  link "ログアウト"
  parent :user_mypage
end

crumb :identification do
  link "本人情報の確認"
  parent :user_mypage
end

crumb :item_show do |item|
  link item.name, item_path(item.id)
  parent :root
end

crumb :wallet do
  link "支払い方法" 
  parent :user_mypage
end

crumb :wallet_paying do
  link "支払い方法" 
  parent :user_mypage
end

crumb :wallet_show do
  link "支払い方法" 
  parent :user_mypage
end

crumb :profile do
  link "プロフィール" 
  parent :user_mypage
end

crumb :search do |q|
  link q.name_cont
  parent :root
end
# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).