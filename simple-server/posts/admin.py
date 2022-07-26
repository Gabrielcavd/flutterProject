from django.contrib import admin
from .models import Post


class PostAdmin(admin.ModelAdmin):
    list_display = ('id', 'title', 'user', )
    list_display_links = ('id', 'title', 'user', )
    search_fields = ('title', 'user', 'content', )
    list_per_page = 25


admin.site.register(Post, PostAdmin)
