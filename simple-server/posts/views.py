from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status, permissions
from .models import Post
from .serializers import PostSerializer


class GetPostsView(APIView):
    permission_classes = (permissions.AllowAny, )

    def get(self, request, format=None):
        try:
            posts = Post.objects.all()
            posts = PostSerializer(posts, many=True)

            return Response(
                {'posts': posts.data},
                status=status.HTTP_200_OK)
        except:
            return Response(
                {'error': 'Something went wrong when retrieving posts'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR
            )
