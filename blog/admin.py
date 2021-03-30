from django.contrib import admin
from .models import Blog

# Register your models here.
from django.contrib import admin
from django.db import models

# Register your models here.
from . import models as demo_models
from mdeditor.widgets import MDEditorWidget


@admin.register(Blog)
class BlogAdmin(admin.ModelAdmin):
    list_display = ('id', 'title', 'author', 'content', 'created_time',)
    ordering = ("-id", )
