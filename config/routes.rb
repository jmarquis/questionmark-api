Rails.application.routes.draw do
  get "projects/:projectId/lists", to: "projects#lists"
end
