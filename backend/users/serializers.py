from rest_framework import serializers
from .models import User


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'name', 'email', 'password']

        # hide password
        extra_kwargs = {
            'password': {'write_only': True}
        }

    def create(self, validated_data):
        user = User.objects.create(email=validated_data['email'], name=validated_data['name'])

        # hash password
        user.set_password(validated_data['password'])

        user.save()
        return user

# https://medium.com/@poorva59/implementing-simple-jwt-authentication-in-django-rest-framework-3e54212f14da