from django.db import models


class Post(models.Model):
    title = models.CharField(max_length=255)
    user = models.CharField(max_length=255)
    image = models.ImageField(upload_to='photos/%Y/%m/')
    content = models.CharField(max_length=1028)

    def __str__(self):
        return self.user
