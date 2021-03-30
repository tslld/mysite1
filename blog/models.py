from django.db import models
from django.contrib.auth.admin import User
from mdeditor.fields import MDTextField

# Create your models here.
class Blog(models.Model):
    title = models.CharField(max_length=50)
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    content = MDTextField()
    created_time = models.DateTimeField(auto_now_add=True)


    def __str__(self):
        return self.title