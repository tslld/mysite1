from django.template import Library
#自定义过滤器
register=Library()


@register.filter
def judge(arg):
    if arg-4>=1:
        return True
    else:
        return False


@register.filter
def judge2(arg, sum):
    if arg+4 <= sum:
        return True
    else:
        return False


@register.filter
def judge1(arg):
    ls = list()
    for i in range(1, arg):
        ls.append(i)
    return ls


@register.filter
def judge3(arg, sum):
    ls = list()
    for i in range(arg+1, sum+1):
        ls.append(i)
    return ls