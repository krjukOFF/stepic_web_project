"""ask URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin
from qa.views import test, mainPage, popular, question

urlpatterns = [
    url(r'^$', mainPage, name = 'mainPage'),
    url(r'^popular/$', popular, name = 'popular'),
    url(r'^question/(?P<slug>\w+)/$', question, name='question'),
    #url(r'^admin/', admin.site.urls),
    #url(r'^login/', test, name = 'login'),
    #url(r'^signup/', test, name = 'signup'),
    #url(r'^ask/', test, name = 'ask'),
    #url(r'^new/', test, name = 'new'),
]
