from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework.exceptions import AuthenticationFailed
from .serializers import UserSerializer
from .models import User


@api_view(['POST'])
def login(request):
    email = request.data['email']
    password = request.data['password']
    
    user = User.objects.filter(email=email).first()

    if user is None:
        raise AuthenticationFailed('User is not found')
    
    if not user.check_password(password):
        raise AuthenticationFailed('Incorrect password')

    return Response(user)


@api_view(['POST'])
def register(request):
    serializer = UserSerializer(data=request.data)
    serializer.is_valid(raise_exception=True)
    serializer.save()
    return Response(serializer.data)


# https://www.youtube.com/watch?v=llrIu4Qsl7c