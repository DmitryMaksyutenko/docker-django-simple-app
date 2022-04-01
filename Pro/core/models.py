from django.contrib.auth.models import AbstractUser
from django.db import models


class CustomUser(AbstractUser):
    created = models.DateTimeField(null=False, blank=True, auto_now=True)
