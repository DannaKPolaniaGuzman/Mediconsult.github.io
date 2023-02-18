from django.urls import path
from . import views


urlpatterns = [
    path('<slug:slug>', views.MedicineDetailView.as_view(), name = 'medicine'),
]