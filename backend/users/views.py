from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework.exceptions import AuthenticationFailed
from rest_framework_simplejwt.tokens import RefreshToken
from .serializers import UserSerializer
from .models import User


class RegisterView(APIView):

    permission_classes = []

    def post(self, request):
        serializer = UserSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user = serializer.save()
        token = RefreshToken.for_user(user)
        data = serializer.data
        data["tokens"] = {"refresh": str(token), "access": str(token.access_token)}
        return Response(data, status=status.HTTP_201_CREATED)
    

class LoginView(APIView):

    permission_classes = []

    def post(self, request):
        email = request.data['email']
        password = request.data['password']
        
        user = User.objects.filter(email=email).first()

        if user is None:
            raise AuthenticationFailed('User is not found')
        
        if not user.check_password(password):
            raise AuthenticationFailed('Incorrect password')

        return Response(user)


class UserView(APIView):

    permission_classes = [IsAuthenticated, ]
    
    def get(self, request):
        users = User.objects.all()
        serializer = UserSerializer(users, many=True)
        return Response(serializer.data)


class UserDetailView(APIView):

    permission_classes = [IsAuthenticated, ]
    
    def get(self, request, id=None):
        users = User.objects.filter(id=id)
        serializer = UserSerializer(users, many=True)
        return Response(serializer.data)
