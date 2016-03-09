from .views import test
from django.conf.urls import url


urlpatterns = [
    url(r'^$', test),
    url(r'^login/$', test),
    url(r'^signup/$', test),
    url(r'^question/([0-9]+)/$', test),
    url(r'^ask/\w*/ $', test),
    url(r'^popular/$', test),
    url(r'^new/$', test),
     url(r'^popular/', list_popular, name='list-popular'),
     url(r'^answer/', post_answer, name='post_answer'),
     url(r'^question/(?P<slug>\w+)/$', show_question, name='show-question'),
]
