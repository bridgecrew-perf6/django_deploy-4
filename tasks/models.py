from django.db import models

from simple_history.models import HistoricalRecords


# Create your models here.
class Task(models.Model):
    class Status(models.TextChoices):
        UNSTARTED = 'u', "Not started yet"
        ONGOING = 'o', "Ongoing"
        FINISHED = 'f', "Finished"
    name = models.CharField(verbose_name="Task name", max_length=65, unique=True)
    status = models.CharField(verbose_name="Task status", max_length=1, choices=Status.choices)
    history = HistoricalRecords()
    
    class Meta:
        verbose_name = verbose_name_plural = "任務"
    
    def __str__(self):
        return self.name

