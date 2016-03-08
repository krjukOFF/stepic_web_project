from django.db import models
from django.contrib.auth.models import User


class Question(models.Model):
        title=models.CharField(max_length=255)
        text=models.TextField()
        added_at=models.DateTimeField(blank=True)
        rating=models.IntegerField()
        author=models.CharField(max_length=255)
        Likes=models.ManyToManyField(User)
        def __unicode__(self):
                return self.title
class Answer(models.Model):
        text=models.TextField()
        added_at=models.DateTimeField(blank=True)
        question=models.ForeignKey(Question)
        author=models.CharField(max_length=255)
        def __unicode__(self):
                return self.title
