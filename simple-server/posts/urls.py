from django.urls import path
from .views import GetPostsView

urlpatterns = [
    path('get-posts', GetPostsView.as_view()),
]
