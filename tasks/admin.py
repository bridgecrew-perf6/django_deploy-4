from django.contrib import admin
from tasks.models import Task

# Register your models here.
class TaskAdmin(admin.ModelAdmin):
    list_display = ("name", "status")
    search_fields = ("name", )
    list_per_page = 10
    
admin.site.register(Task, TaskAdmin)

