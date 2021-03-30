from django.db import models
from django.contrib.auth.admin import User

# Create your models here.

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, verbose_name='呢称')
