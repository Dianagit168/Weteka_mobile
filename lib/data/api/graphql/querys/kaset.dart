class QueryKaset {
  String getAllKaset() {
    return """
      query {
        get_all_blogs {
          id
          slug
          title
          views
          status
          isPublic
          createdAt
          updatedAt
          content
          owner {
            avatar
            fullname
          }
          organization {
            id
            name
            logo
            isVerify
            slug
            ownerId
            totalSubscribers
            isSubscribed
            createdAt
          }
        }
      }
    """;
  }

  String getKasetById({String? id}) {
    return """
      query {
        get_blog(id: "$id") {
          id
          title
          slug
          views
          status
          isPublic
          createdAt
          updatedAt
          content
          tags {
            title
            id
          }
          liked
          owner {
            avatar
            fullname
          }
          organization {
            id
            name
            logo
            isVerify
            slug
            ownerId
            totalSubscribers
            isSubscribed
            createdAt
          }
        }
      }
    """;
  }

  String getKasetBySlug({String? slug}) {
    return """
      query{
        get_blog_by_slug(slug: "$slug") {
          id
          title
          slug
          views
          status
          isPublic
          createdAt
          updatedAt
          content
          tags {
            title
            id
          }
          liked
          owner {
            avatar
            fullname
          }
          organization {
            id
            name
            logo
            isVerify
            slug
            ownerId
            totalSubscribers
            isSubscribed
            createdAt
          }
        }
      }
    """;
  }

  String getKasetByTag({String? tag}) {
    return """
      query {
        get_blogs_by_tag(tag: "$tag") {
          id
          slug
          title
          views
          status
          isPublic
          createdAt
          updatedAt
          content
          owner {
            avatar
            fullname
          }
          organization {
            id
            name
            logo
            isVerify
            slug
            ownerId
            totalSubscribers
            isSubscribed
            createdAt
          }
        }
      }
    """;
  }

  String getKasetBySchool({String? orgId}) {
    return """
      query {
        get_blogs_by_org(orgId: "$orgId") {
          id
          slug
          title
          views
          status
          isPublic
          createdAt
          updatedAt
          content
          owner {
            avatar
            fullname
          }
          organization {
            id
            name
            logo
            isVerify
            slug
            ownerId
            totalSubscribers
            isSubscribed
            createdAt
          }
        }
      }
    """;
  }

  String getRelatedKaset({String? id, String? tags}) {
    return """
      query{
        get_related_blogs(id: "$id", tags: "$tags") {
          id
          title
          slug
          createdAt
        }
      }
    """;
  }

  String getCommentKaset({String? blogId}) {
    return """
      query {
        get_blog_comment(blogId: "$blogId") {
          id
          comment
          reply {
            comment
            user {
              userId
              avatar
              fullname
            }
          }
          user {
            userId
            avatar
            fullname
          }
        }
      }
    """;
  }



  String createCommentKaset({String? blogId, String? comment}) {
    return """
      mutation {
        comment_blog(blogId: "$blogId", comment: "$comment") {
          message
          status
        }
      }
    """;
  }

  String editCommentKaset({String? id, String? comment}) {
    return """
      mutation {
        edit_blog_comment(id: "$id", comment: "$comment") {
          message
        }
      }
    """;
  }

  String replyKasetComment({String? commentId, String? reply}) {
    return """
      mutation {
        reply_blog_comment(commentId: "$commentId", reply: "$reply") {
          message
        }
      }
    """;
  }

  String editReplyKasetComment({String? parentCommentId, int? replyCmtIndex, comment}) {
    return """
      return mutation {
        edit_reply_comment(
          parentCommentId: $parentCommentId
          replyCmtIndex: $replyCmtIndex
          comment: $comment
        ) {
          message
        }
      }
    """;
  }

  String deleteReplyComment({String? parentCommentId, int? replyCommentIndex}) {
    return """
      mutation {
        delete_reply_blog_comment(
          parentCommentId: "$parentCommentId"
          replyCommentIndex: "$replyCommentIndex"
        ) {
          message
        }
      }
    """;
  }

  String deleteCommentKaset({String? id}) {
    return """
      mutation{
        delete_blog_comment(id: "$id") {
          message
        }
      }
    """;
  }

  String getKasetLike({String? id}) {
    return """
      query{
        get_blog_like(id: "$id" ) {
          likes
          totalLikes
          isLiked
        }
      }
    """;
  }


}