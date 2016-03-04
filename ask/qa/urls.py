from django.conf.urls import include, url
from . import views

urlpatterns = [
   url('^(?P<question_id>\w+)/$', views.test, name='qa-test')
]
