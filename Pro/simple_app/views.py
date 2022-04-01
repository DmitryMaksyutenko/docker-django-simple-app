from django.http import HttpResponse
from .models import SimpleData

# Create your views here.
def simple(request):
    if request.method == 'GET':
        data = SimpleData.objects.all()
        return HttpResponse(data[0].info)

