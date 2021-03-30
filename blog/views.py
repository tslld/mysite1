from django.shortcuts import render, get_object_or_404
from .models import Blog
from django.shortcuts import render
from .models import Blog
import redis
from django.conf import settings
import markdown
from mysite import views

r = redis.StrictRedis(host=settings.REDIS_HOST, port=settings.REDIS_PORT, db=settings.REDIS_DB)


# Create your views here.
def blog_list(request):
    blog_all_list =Blog.objects.all()
    context = {'blogs': blog_all_list}
    context['page_of_blogs'] = views.page_group(request, blog_all_list, 9)
    return render(request, 'blog/blog_list.html', context)


def blog_detail(request, blog_pk):
    blog = get_object_or_404(Blog, pk=blog_pk)
    blog.content = markdown.markdown(blog.content.replace("\r\n", '  \n'), extensions=[
        'markdown.extensions.extra',
        'markdown.extensions.codehilite',
        'markdown.extensions.toc',
    ], safe_mode=True, enable_attributes=False)
    context = dict()
    total_views = r.incr("blog:{}:views".format(blog_pk))
    context['blog_auto'] = blog
    context['total_views'] = total_views
    return render(request, 'blog/blog_detail.html', context)

