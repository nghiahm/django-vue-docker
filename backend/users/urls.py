from django.urls import path
from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView
from .views import RegisterView, UserView, UserDetailView

urlpatterns = [
    path('register', RegisterView.as_view(), name='signup'),
    path('token', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('token/refresh', TokenRefreshView.as_view(), name='token_refresh'),
    path('get/', UserView.as_view(), name='user-list'),
    path('get/<int:id>', UserDetailView.as_view(), name='user-detail')
]
