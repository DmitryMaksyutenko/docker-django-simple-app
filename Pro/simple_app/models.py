from django.db import models


class SimpleData(models.Model):
    info = models.CharField(max_length=50)

    class Meta:
        db_table = 'simple"."simple'
