from django.shortcuts import render
from django.http import HttpResponse
import datetime
from blog.models import Blog
from django.core.paginator import Paginator
from django.views.decorators.cache import cache_page
import markdown


def page_group(request, special_blog_list, nums_of_page):
    paginator = Paginator(special_blog_list, nums_of_page)
    page_num = request.GET.get('page', 1)
    page_of_blogs = paginator.get_page(page_num)
    return page_of_blogs

def home(request):
    context = {}
    blogs = Blog.objects.all()
    context['blogs'] = blogs
    context['page_of_blogs'] = page_group(request, blogs, 4)
    return render(request, 'home.html',context)
    # now = datetime.datetime.now()
    # html = "<html><body>It is now %s.</body></html>" % now
    # return HttpResponse(html)