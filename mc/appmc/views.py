from django.shortcuts import render
from django.views.generic.list import ListView
from django.views.generic.detail import DetailView
from .models import Medicine

class MedicineListView(ListView):
    template_name = 'Asistente/RegistrarMedicamento.html'
    queryset = Medicine.objects.all().order_by('-id')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['message'] = 'Listado de Medicamentos'
        context['medicines'] =context['medicine_list']

        return context

class MedicineDetailView(DetailView): #por default se hara por la llave primaria(ID)
    model = Medicine
    template_name = 'Asistente/product.html'
