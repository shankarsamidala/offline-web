import django_filters

from leave.models import Leave

class LeaveFilter(django_filters.FilterSet):
    class Meta:
        model = Leave
        # fields = '__all__'
        fields = ['user','leavetype','startdate','enddate',]

