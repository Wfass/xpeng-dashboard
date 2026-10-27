.class public final Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;
.super Ljava/lang/Object;
.source "ResponseParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$RestoreObjectResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetSymlinkResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutSymlinkResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ImagePersistResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$TriggerCallbackResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListMultipartUploadsResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListPartsResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CompleteMultipartUploadResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AbortMultipartUploadResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$UploadPartResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$InitMultipartResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListBucketResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListObjectsResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteMultipleObjectResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteObjectResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteBucketLifecycleResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketLifecycleResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutBucketLifecycleResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteBucketLoggingResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketLoggingResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutBucketLoggingResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketRefererResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutBucketRefererResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketACLResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketInfoResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteBucketResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CreateBucketResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CopyObjectResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetObjectACLResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetObjectResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$HeadObjectResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AppendObjectResponseParser;,
        Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutObjectResponseParser;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;)Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseGetObjectACLResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;)Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;)Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseCopyObjectResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;)Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseInitMultipartResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseCompleteMultipartUploadResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListPartsResult;)Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseListPartsResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListPartsResult;)Lcom/alibaba/sdk/android/oss/model/ListPartsResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseGetBucketInfoResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseGetBucketACLResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseGetBucketRefererResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseGetBucketLoggingResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseGetBucketLifecycleResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;)Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseDeleteMultipleObjectResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;)Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseObjectListResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;)Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseBucketListResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;)Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;

    move-result-object v0

    return-object v0
.end method

.method private static parseBucketListResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;)Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "result"    # Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 577
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;->clearBucketList()V

    .line 578
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 579
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 580
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 581
    .local v1, "eventType":I
    const/4 v2, 0x0

    .line 582
    .local v2, "bucket":Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_12

    .line 583
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 638
    :pswitch_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 639
    .local v3, "endTagName":Ljava/lang/String;
    const-string v4, "Bucket"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 640
    if-eqz v2, :cond_11

    .line 641
    invoke-virtual {p1, v2}, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;->addBucket(Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;)V

    .end local v3    # "endTagName":Ljava/lang/String;
    goto/16 :goto_1

    .line 585
    :pswitch_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 587
    goto/16 :goto_1

    .line 589
    :cond_1
    const-string v4, "Prefix"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 590
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;->setPrefix(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 591
    :cond_2
    const-string v4, "Marker"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 592
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;->setMarker(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 593
    :cond_3
    const-string v4, "MaxKeys"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 594
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, "maxKeys":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 596
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;->setMaxKeys(I)V

    .line 598
    .end local v4    # "maxKeys":Ljava/lang/String;
    :cond_4
    goto/16 :goto_1

    :cond_5
    const-string v4, "IsTruncated"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 599
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 600
    .local v4, "isTruncated":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 601
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1, v5}, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;->setTruncated(Z)V

    .line 603
    .end local v4    # "isTruncated":Ljava/lang/String;
    :cond_6
    goto/16 :goto_1

    :cond_7
    const-string v4, "NextMarker"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 604
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;->setNextMarker(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 605
    :cond_8
    const-string v4, "ID"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 606
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;->setOwnerId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 607
    :cond_9
    const-string v4, "DisplayName"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 608
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;->setOwnerDisplayName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 609
    :cond_a
    const-string v4, "Bucket"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 610
    new-instance v4, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;

    invoke-direct {v4}, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;-><init>()V

    move-object v2, v4

    goto/16 :goto_1

    .line 611
    :cond_b
    const-string v4, "CreationDate"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 612
    if-eqz v2, :cond_11

    .line 613
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->createDate:Ljava/util/Date;

    goto :goto_1

    .line 615
    :cond_c
    const-string v4, "ExtranetEndpoint"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 616
    if-eqz v2, :cond_11

    .line 617
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->extranetEndpoint:Ljava/lang/String;

    goto :goto_1

    .line 619
    :cond_d
    const-string v4, "IntranetEndpoint"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 620
    if-eqz v2, :cond_11

    .line 621
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->intranetEndpoint:Ljava/lang/String;

    goto :goto_1

    .line 623
    :cond_e
    const-string v4, "Location"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 624
    if-eqz v2, :cond_11

    .line 625
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->location:Ljava/lang/String;

    goto :goto_1

    .line 627
    :cond_f
    const-string v4, "Name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 628
    if-eqz v2, :cond_11

    .line 629
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->name:Ljava/lang/String;

    goto :goto_1

    .line 631
    :cond_10
    const-string v4, "StorageClass"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 632
    if-eqz v2, :cond_11

    .line 633
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->storageClass:Ljava/lang/String;

    .line 646
    .end local v3    # "name":Ljava/lang/String;
    :cond_11
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 647
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 648
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto/16 :goto_0

    .line 651
    :cond_12
    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseCompleteMultipartUploadResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "result"    # Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 176
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 177
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 178
    .local v1, "eventType":I
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    .line 179
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "name":Ljava/lang/String;
    const-string v3, "Location"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->setLocation(Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :cond_2
    const-string v3, "Bucket"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 185
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->setBucketName(Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :cond_3
    const-string v3, "Key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 187
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->setObjectKey(Ljava/lang/String;)V

    goto :goto_1

    .line 188
    :cond_4
    const-string v3, "ETag"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 189
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->setETag(Ljava/lang/String;)V

    .line 194
    .end local v2    # "name":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 195
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 196
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 200
    :cond_6
    return-object p1
.end method

.method private static parseCopyObjectResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;)Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "result"    # Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 74
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 75
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 76
    .local v1, "eventType":I
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 77
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "name":Ljava/lang/String;
    const-string v3, "LastModified"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;->setLastModified(Ljava/util/Date;)V

    goto :goto_1

    .line 82
    :cond_2
    const-string v3, "ETag"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;->setEtag(Ljava/lang/String;)V

    .line 88
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 89
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 90
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 93
    :cond_4
    return-object p1
.end method

.method private static parseDeleteMultipleObjectResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;)Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "result"    # Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 546
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 547
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 548
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 549
    .local v1, "eventType":I
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 550
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 552
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, "name":Ljava/lang/String;
    const-string v3, "Key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 554
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->addDeletedObject(Ljava/lang/String;)V

    .line 559
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 560
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 561
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 564
    :cond_3
    return-object p1
.end method

.method private static parseGetBucketACLResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "result"    # Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 363
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 364
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 365
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 366
    .local v1, "eventType":I
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 367
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 369
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "name":Ljava/lang/String;
    const-string v3, "Grant"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->setBucketACL(Ljava/lang/String;)V

    goto :goto_1

    .line 372
    :cond_2
    const-string v3, "ID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 373
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->setBucketOwnerID(Ljava/lang/String;)V

    goto :goto_1

    .line 374
    :cond_3
    const-string v3, "DisplayName"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 375
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->setBucketOwner(Ljava/lang/String;)V

    .line 380
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 381
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 382
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 385
    :cond_5
    return-object p1
.end method

.method private static parseGetBucketInfoResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "result"    # Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 274
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 275
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 276
    .local v1, "eventType":I
    const/4 v2, 0x0

    .line 277
    .local v2, "bucket":Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;
    const/4 v3, 0x0

    .line 278
    .local v3, "owner":Lcom/alibaba/sdk/android/oss/model/Owner;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_f

    .line 279
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 329
    :pswitch_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "endTagName":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 331
    goto/16 :goto_1

    .line 334
    :cond_1
    const-string v5, "Bucket"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 335
    if-eqz v2, :cond_e

    .line 336
    invoke-virtual {p1, v2}, Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;->setBucket(Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;)V

    goto/16 :goto_1

    .line 338
    :cond_2
    const-string v5, "Owner"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 339
    if-eqz v2, :cond_e

    .line 340
    iput-object v3, v2, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->owner:Lcom/alibaba/sdk/android/oss/model/Owner;

    .end local v4    # "endTagName":Ljava/lang/String;
    goto/16 :goto_1

    .line 281
    :pswitch_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 283
    goto/16 :goto_1

    .line 286
    :cond_3
    const-string v5, "Owner"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 287
    new-instance v5, Lcom/alibaba/sdk/android/oss/model/Owner;

    invoke-direct {v5}, Lcom/alibaba/sdk/android/oss/model/Owner;-><init>()V

    move-object v3, v5

    goto/16 :goto_1

    .line 288
    :cond_4
    const-string v5, "ID"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 289
    if-eqz v3, :cond_e

    .line 290
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/sdk/android/oss/model/Owner;->setId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 292
    :cond_5
    const-string v5, "DisplayName"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 293
    if-eqz v3, :cond_e

    .line 294
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/sdk/android/oss/model/Owner;->setDisplayName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 296
    :cond_6
    const-string v5, "Bucket"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 297
    new-instance v5, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;

    invoke-direct {v5}, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;-><init>()V

    move-object v2, v5

    goto/16 :goto_1

    .line 298
    :cond_7
    const-string v5, "CreationDate"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 299
    if-eqz v2, :cond_e

    .line 300
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->createDate:Ljava/util/Date;

    goto :goto_1

    .line 302
    :cond_8
    const-string v5, "ExtranetEndpoint"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 303
    if-eqz v2, :cond_e

    .line 304
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->extranetEndpoint:Ljava/lang/String;

    goto :goto_1

    .line 306
    :cond_9
    const-string v5, "IntranetEndpoint"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 307
    if-eqz v2, :cond_e

    .line 308
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->intranetEndpoint:Ljava/lang/String;

    goto :goto_1

    .line 310
    :cond_a
    const-string v5, "Location"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 311
    if-eqz v2, :cond_e

    .line 312
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->location:Ljava/lang/String;

    goto :goto_1

    .line 314
    :cond_b
    const-string v5, "Name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 315
    if-eqz v2, :cond_e

    .line 316
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->name:Ljava/lang/String;

    goto :goto_1

    .line 318
    :cond_c
    const-string v5, "StorageClass"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 319
    if-eqz v2, :cond_e

    .line 320
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->storageClass:Ljava/lang/String;

    goto :goto_1

    .line 322
    :cond_d
    const-string v5, "Grant"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 323
    if-eqz v2, :cond_e

    .line 324
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->setAcl(Ljava/lang/String;)V

    .line 346
    .end local v4    # "name":Ljava/lang/String;
    :cond_e
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 347
    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    .line 348
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto/16 :goto_0

    .line 351
    :cond_f
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseGetBucketLifecycleResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;
    .locals 13
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "result"    # Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 438
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 439
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 440
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 441
    .local v1, "eventType":I
    const/4 v2, 0x0

    .line 442
    .local v2, "lifecycleRule":Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;
    const/4 v3, 0x0

    .line 443
    .local v3, "isExpirationConf":Z
    const/4 v4, 0x0

    .line 444
    .local v4, "isMultipartConf":Z
    const/4 v5, 0x0

    .line 445
    .local v5, "isTransitionConf":Z
    const/4 v6, 0x0

    .line 446
    .local v6, "daysValue":Ljava/lang/String;
    const/4 v7, 0x0

    .line 447
    .local v7, "dateValue":Ljava/lang/String;
    const/4 v8, 0x0

    .line 449
    .local v8, "storageClass":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v9, 0x1

    if-eq v1, v9, :cond_16

    .line 450
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 520
    :pswitch_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 521
    .local v9, "endTag":Ljava/lang/String;
    const-string v10, "Rule"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 522
    invoke-virtual {p1, v2}, Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;->addLifecycleRule(Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;)V

    goto/16 :goto_2

    .line 523
    :cond_1
    const-string v10, "Expiration"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 524
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 525
    :cond_2
    const-string v10, "AbortMultipartUpload"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 526
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 527
    :cond_3
    const-string v10, "Transition"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 528
    const/4 v5, 0x0

    .line 529
    const/4 v6, 0x0

    .line 530
    const/4 v7, 0x0

    .line 531
    const/4 v8, 0x0

    .end local v9    # "endTag":Ljava/lang/String;
    goto/16 :goto_2

    .line 452
    :pswitch_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 453
    .local v10, "name":Ljava/lang/String;
    const-string v11, "Rule"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 454
    new-instance v9, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;

    invoke-direct {v9}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;-><init>()V

    move-object v2, v9

    goto/16 :goto_2

    .line 455
    :cond_4
    const-string v11, "ID"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 456
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setIdentifier(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 457
    :cond_5
    const-string v11, "Prefix"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 458
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setPrefix(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 459
    :cond_6
    const-string v11, "Status"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 460
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    .line 461
    .local v11, "statusValue":Ljava/lang/String;
    const-string v12, "Enabled"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 462
    invoke-virtual {v2, v9}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setStatus(Z)V

    goto :goto_1

    .line 464
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setStatus(Z)V

    .line 466
    .end local v11    # "statusValue":Ljava/lang/String;
    :goto_1
    goto/16 :goto_2

    :cond_8
    const-string v9, "Expiration"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 467
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 468
    :cond_9
    const-string v9, "AbortMultipartUpload"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 469
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 470
    :cond_a
    const-string v9, "Transition"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 471
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 472
    :cond_b
    const-string v9, "Days"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 473
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 474
    if-eqz v2, :cond_15

    .line 475
    if-eqz v3, :cond_c

    .line 476
    invoke-virtual {v2, v6}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setDays(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 477
    :cond_c
    if-eqz v4, :cond_d

    .line 478
    invoke-virtual {v2, v6}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setMultipartDays(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 479
    :cond_d
    if-eqz v5, :cond_15

    .line 480
    if-eqz v8, :cond_15

    .line 481
    const-string v9, "IA"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 482
    invoke-virtual {v2, v6}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setIADays(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 483
    :cond_e
    const-string v9, "Archive"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 484
    invoke-virtual {v2, v6}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setArchiveDays(Ljava/lang/String;)V

    goto :goto_2

    .line 489
    :cond_f
    const-string v9, "Date"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 490
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 491
    if-eqz v2, :cond_15

    .line 492
    if-eqz v3, :cond_10

    .line 493
    invoke-virtual {v2, v7}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setExpireDate(Ljava/lang/String;)V

    goto :goto_2

    .line 494
    :cond_10
    if-eqz v4, :cond_11

    .line 495
    invoke-virtual {v2, v7}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setMultipartExpireDate(Ljava/lang/String;)V

    goto :goto_2

    .line 496
    :cond_11
    if-eqz v5, :cond_15

    .line 497
    if-eqz v8, :cond_15

    .line 498
    const-string v9, "IA"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 499
    invoke-virtual {v2, v7}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setIAExpireDate(Ljava/lang/String;)V

    goto :goto_2

    .line 500
    :cond_12
    const-string v9, "Archive"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 501
    invoke-virtual {v2, v7}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setArchiveExpireDate(Ljava/lang/String;)V

    goto :goto_2

    .line 506
    :cond_13
    const-string v9, "StorageClass"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 507
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 508
    if-eqz v2, :cond_15

    .line 509
    const-string v9, "IA"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 510
    invoke-virtual {v2, v6}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setIADays(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v2, v7}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setIAExpireDate(Ljava/lang/String;)V

    goto :goto_2

    .line 512
    :cond_14
    const-string v9, "Archive"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 513
    invoke-virtual {v2, v7}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setArchiveDays(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v2, v7}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setArchiveExpireDate(Ljava/lang/String;)V

    .line 536
    .end local v10    # "name":Ljava/lang/String;
    :cond_15
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 537
    const/4 v9, 0x4

    if-ne v1, v9, :cond_0

    .line 538
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto/16 :goto_0

    .line 541
    :cond_16
    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseGetBucketLoggingResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "result"    # Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 411
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 412
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 413
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 414
    .local v1, "eventType":I
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 415
    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    goto :goto_1

    .line 417
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "name":Ljava/lang/String;
    const-string v4, "LoggingEnabled"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 419
    invoke-virtual {p1, v2}, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->setLoggingEnabled(Z)V

    goto :goto_1

    .line 420
    :cond_2
    const-string v2, "TargetBucket"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 421
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->setTargetBucketName(Ljava/lang/String;)V

    goto :goto_1

    .line 422
    :cond_3
    const-string v2, "TargetPrefix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 423
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->setTargetPrefix(Ljava/lang/String;)V

    .line 429
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 430
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 431
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 434
    :cond_5
    return-object p1
.end method

.method private static parseGetBucketRefererResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "result"    # Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 389
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 390
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 391
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 392
    .local v1, "eventType":I
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 393
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 395
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "name":Ljava/lang/String;
    const-string v3, "Referer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 397
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;->addReferer(Ljava/lang/String;)V

    .line 402
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 403
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 404
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 407
    :cond_3
    return-object p1
.end method

.method private static parseGetObjectACLResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;)Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "result"    # Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 239
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 240
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 241
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 242
    .local v1, "eventType":I
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 243
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 245
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "name":Ljava/lang/String;
    const-string v3, "Grant"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 247
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;->setObjectACL(Ljava/lang/String;)V

    goto :goto_1

    .line 248
    :cond_2
    const-string v3, "ID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 249
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;->setObjectOwnerID(Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_3
    const-string v3, "DisplayName"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 251
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;->setObjectOwner(Ljava/lang/String;)V

    .line 256
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 257
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 258
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 261
    :cond_5
    return-object p1
.end method

.method private static parseInitMultipartResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "result"    # Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 206
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 207
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 208
    .local v1, "eventType":I
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 209
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 211
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "name":Ljava/lang/String;
    const-string v3, "Bucket"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->setBucketName(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_2
    const-string v3, "Key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 215
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->setObjectKey(Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :cond_3
    const-string v3, "UploadId"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 217
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->setUploadId(Ljava/lang/String;)V

    .line 222
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 223
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 224
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 227
    :cond_5
    return-object p1
.end method

.method private static parseListPartsResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListPartsResult;)Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "result"    # Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "partEtagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/sdk/android/oss/model/PartSummary;>;"
    const/4 v1, 0x0

    .line 101
    .local v1, "partSummary":Lcom/alibaba/sdk/android/oss/model/PartSummary;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 102
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v3, "utf-8"

    invoke-interface {v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 103
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 104
    .local v3, "eventType":I
    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_14

    .line 105
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 155
    :pswitch_0
    const-string v4, "Part"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 156
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 107
    :pswitch_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "name":Ljava/lang/String;
    const-string v5, "Bucket"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setBucketName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 110
    :cond_1
    const-string v5, "Key"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 112
    :cond_2
    const-string v5, "UploadId"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 113
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setUploadId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 114
    :cond_3
    const-string v5, "PartNumberMarker"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 115
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "partNumberMarker":Ljava/lang/String;
    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 117
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setPartNumberMarker(I)V

    .line 119
    .end local v5    # "partNumberMarker":Ljava/lang/String;
    :cond_4
    goto/16 :goto_1

    :cond_5
    const-string v5, "NextPartNumberMarker"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 120
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "nextPartNumberMarker":Ljava/lang/String;
    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 122
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setNextPartNumberMarker(I)V

    .line 124
    .end local v5    # "nextPartNumberMarker":Ljava/lang/String;
    :cond_6
    goto/16 :goto_1

    :cond_7
    const-string v5, "MaxParts"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 125
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "maxParts":Ljava/lang/String;
    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 127
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setMaxParts(I)V

    .line 129
    .end local v5    # "maxParts":Ljava/lang/String;
    :cond_8
    goto/16 :goto_1

    :cond_9
    const-string v5, "IsTruncated"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 130
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "isTruncated":Ljava/lang/String;
    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 132
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p1, v6}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setTruncated(Z)V

    .line 134
    .end local v5    # "isTruncated":Ljava/lang/String;
    :cond_a
    goto/16 :goto_1

    :cond_b
    const-string v5, "StorageClass"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 135
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setStorageClass(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 136
    :cond_c
    const-string v5, "Part"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 137
    new-instance v5, Lcom/alibaba/sdk/android/oss/model/PartSummary;

    invoke-direct {v5}, Lcom/alibaba/sdk/android/oss/model/PartSummary;-><init>()V

    move-object v1, v5

    goto :goto_1

    .line 138
    :cond_d
    const-string v5, "PartNumber"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 139
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "partNum":Ljava/lang/String;
    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 141
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->setPartNumber(I)V

    .line 143
    .end local v5    # "partNum":Ljava/lang/String;
    :cond_e
    goto :goto_1

    :cond_f
    const-string v5, "LastModified"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 144
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->setLastModified(Ljava/util/Date;)V

    goto :goto_1

    .line 145
    :cond_10
    const-string v5, "ETag"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 146
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->setETag(Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_11
    const-string v5, "Size"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 148
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "size":Ljava/lang/String;
    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 150
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->setSize(J)V

    .line 152
    .end local v5    # "size":Ljava/lang/String;
    :cond_12
    nop

    .line 160
    .end local v4    # "name":Ljava/lang/String;
    :cond_13
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 161
    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 162
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_0

    .line 166
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_15

    .line 167
    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setParts(Ljava/util/List;)V

    .line 170
    :cond_15
    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseObjectListResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "result"    # Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 663
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->clearCommonPrefixes()V

    .line 664
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->clearObjectSummaries()V

    .line 665
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 666
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 667
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 668
    .local v1, "eventType":I
    const/4 v2, 0x0

    .line 669
    .local v2, "object":Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;
    const/4 v3, 0x0

    .line 670
    .local v3, "owner":Lcom/alibaba/sdk/android/oss/model/Owner;
    const/4 v4, 0x0

    .line 671
    .local v4, "isCommonPrefixes":Z
    :cond_0
    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_1b

    .line 672
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 733
    :pswitch_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 734
    .local v5, "endTagName":Ljava/lang/String;
    const-string v6, "Owner"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 735
    if-eqz v3, :cond_1a

    .line 736
    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setOwner(Lcom/alibaba/sdk/android/oss/model/Owner;)V

    goto/16 :goto_1

    .line 738
    :cond_1
    const-string v6, "Contents"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 739
    if-eqz v2, :cond_1a

    .line 740
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->getBucketName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setBucketName(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p1, v2}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->addObjectSummary(Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)V

    goto/16 :goto_1

    .line 743
    :cond_2
    const-string v6, "CommonPrefixes"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 744
    const/4 v4, 0x0

    .end local v5    # "endTagName":Ljava/lang/String;
    goto/16 :goto_1

    .line 674
    :pswitch_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 675
    .local v5, "name":Ljava/lang/String;
    const-string v6, "Name"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 676
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setBucketName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 677
    :cond_3
    const-string v6, "Prefix"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 678
    if-eqz v4, :cond_5

    .line 679
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 680
    .local v6, "commonPrefix":Ljava/lang/String;
    invoke-static {v6}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 681
    invoke-virtual {p1, v6}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->addCommonPrefix(Ljava/lang/String;)V

    .line 683
    .end local v6    # "commonPrefix":Ljava/lang/String;
    :cond_4
    goto/16 :goto_1

    .line 684
    :cond_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setPrefix(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 687
    :cond_6
    const-string v6, "Marker"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 688
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setMarker(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 689
    :cond_7
    const-string v6, "Delimiter"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 690
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setDelimiter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 691
    :cond_8
    const-string v6, "EncodingType"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 692
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setEncodingType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 693
    :cond_9
    const-string v6, "MaxKeys"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 694
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 695
    .local v6, "maxKeys":Ljava/lang/String;
    invoke-static {v6}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 696
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setMaxKeys(I)V

    .line 698
    .end local v6    # "maxKeys":Ljava/lang/String;
    :cond_a
    goto/16 :goto_1

    :cond_b
    const-string v6, "NextMarker"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 699
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setNextMarker(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 700
    :cond_c
    const-string v6, "IsTruncated"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 701
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 702
    .local v6, "isTruncated":Ljava/lang/String;
    invoke-static {v6}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 703
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {p1, v7}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setTruncated(Z)V

    .line 705
    .end local v6    # "isTruncated":Ljava/lang/String;
    :cond_d
    goto/16 :goto_1

    :cond_e
    const-string v6, "Contents"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 706
    new-instance v6, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;

    invoke-direct {v6}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;-><init>()V

    move-object v2, v6

    goto/16 :goto_1

    .line 707
    :cond_f
    const-string v6, "Key"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 708
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 709
    :cond_10
    const-string v6, "LastModified"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 710
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setLastModified(Ljava/util/Date;)V

    goto/16 :goto_1

    .line 711
    :cond_11
    const-string v6, "Size"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 712
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 713
    .local v6, "size":Ljava/lang/String;
    invoke-static {v6}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 714
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setSize(J)V

    .line 716
    .end local v6    # "size":Ljava/lang/String;
    :cond_12
    goto/16 :goto_1

    :cond_13
    const-string v6, "ETag"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 717
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setETag(Ljava/lang/String;)V

    goto :goto_1

    .line 718
    :cond_14
    const-string v6, "Type"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 719
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 720
    :cond_15
    const-string v6, "StorageClass"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 721
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setStorageClass(Ljava/lang/String;)V

    goto :goto_1

    .line 722
    :cond_16
    const-string v6, "Owner"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 723
    new-instance v6, Lcom/alibaba/sdk/android/oss/model/Owner;

    invoke-direct {v6}, Lcom/alibaba/sdk/android/oss/model/Owner;-><init>()V

    move-object v3, v6

    goto :goto_1

    .line 724
    :cond_17
    const-string v6, "ID"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 725
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/alibaba/sdk/android/oss/model/Owner;->setId(Ljava/lang/String;)V

    goto :goto_1

    .line 726
    :cond_18
    const-string v6, "DisplayName"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 727
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/alibaba/sdk/android/oss/model/Owner;->setDisplayName(Ljava/lang/String;)V

    goto :goto_1

    .line 728
    :cond_19
    const-string v6, "CommonPrefixes"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 729
    const/4 v4, 0x1

    .line 749
    .end local v5    # "name":Ljava/lang/String;
    :cond_1a
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 750
    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    .line 751
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto/16 :goto_0

    .line 755
    :cond_1b
    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseObjectMetadata(Ljava/util/Map;)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 775
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;-><init>()V

    .line 777
    .local v0, "objectMetadata":Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 778
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 780
    .local v2, "key":Ljava/lang/String;
    const-string v3, "x-oss-meta-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 781
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 782
    :cond_0
    const-string v3, "Last-Modified"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "Date"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 788
    :cond_1
    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 789
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 790
    .local v3, "value":Ljava/lang/Long;
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 791
    .end local v3    # "value":Ljava/lang/Long;
    goto :goto_2

    :cond_2
    const-string v3, "ETag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 792
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 794
    :cond_3
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "key":Ljava/lang/String;
    goto :goto_2

    .line 784
    .restart local v2    # "key":Ljava/lang/String;
    :cond_4
    :goto_1
    :try_start_1
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 787
    nop

    .line 796
    .end local v2    # "key":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 785
    .restart local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 786
    .local v3, "pe":Ljava/text/ParseException;
    :try_start_2
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 798
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pe":Ljava/text/ParseException;
    :cond_5
    return-object v0

    .line 799
    .end local v0    # "objectMetadata":Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    :catch_1
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseResponseErrorXML(Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;Z)Ljava/lang/Exception;
    .locals 16
    .param p0, "response"    # Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;
    .param p1, "isHeadRequest"    # Z

    .line 806
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->getStatusCode()I

    move-result v8

    .line 807
    .local v8, "statusCode":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->getResponse()Lokhttp3/Response;

    move-result-object v0

    const-string v1, "x-oss-request-id"

    invoke-virtual {v0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, "requestId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 809
    .local v2, "code":Ljava/lang/String;
    const/4 v3, 0x0

    .line 810
    .local v3, "message":Ljava/lang/String;
    const/4 v4, 0x0

    .line 811
    .local v4, "hostId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 812
    .local v5, "partNumber":Ljava/lang/String;
    const/4 v6, 0x0

    .line 813
    .local v6, "partEtag":Ljava/lang/String;
    const/4 v7, 0x0

    .line 814
    .local v7, "errorMessage":Ljava/lang/String;
    if-nez p1, :cond_9

    .line 816
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->getResponse()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "errorMessage  \uff1a  \n "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 818
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 819
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 820
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "utf-8"

    invoke-interface {v9, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 821
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    .line 822
    .local v10, "eventType":I
    :cond_0
    :goto_0
    const/4 v11, 0x1

    if-eq v10, v11, :cond_8

    .line 823
    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    goto/16 :goto_1

    .line 825
    :cond_1
    const-string v11, "Code"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 826
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    goto :goto_1

    .line 827
    :cond_2
    const-string v11, "Message"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 828
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    goto :goto_1

    .line 829
    :cond_3
    const-string v11, "RequestId"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 830
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    goto :goto_1

    .line 831
    :cond_4
    const-string v11, "HostId"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 832
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    goto :goto_1

    .line 833
    :cond_5
    const-string v11, "PartNumber"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 834
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    goto :goto_1

    .line 835
    :cond_6
    const-string v11, "PartEtag"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 836
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 840
    :cond_7
    :goto_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v10, v11

    .line 841
    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    .line 842
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v11

    goto/16 :goto_0

    .line 849
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "eventType":I
    :cond_8
    goto :goto_2

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v9, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v9

    .line 845
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 846
    .local v0, "e":Ljava/io/IOException;
    new-instance v9, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v9

    .line 852
    .end local v1    # "requestId":Ljava/lang/String;
    .end local v2    # "code":Ljava/lang/String;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "hostId":Ljava/lang/String;
    .end local v5    # "partNumber":Ljava/lang/String;
    .end local v6    # "partEtag":Ljava/lang/String;
    .end local v7    # "errorMessage":Ljava/lang/String;
    .local v0, "message":Ljava/lang/String;
    .local v9, "code":Ljava/lang/String;
    .local v10, "requestId":Ljava/lang/String;
    .local v11, "hostId":Ljava/lang/String;
    .local v12, "errorMessage":Ljava/lang/String;
    .local v13, "partEtag":Ljava/lang/String;
    .local v14, "partNumber":Ljava/lang/String;
    :cond_9
    :goto_2
    move-object v10, v1

    move-object v9, v2

    move-object v0, v3

    move-object v11, v4

    move-object v14, v5

    move-object v13, v6

    move-object v12, v7

    new-instance v15, Lcom/alibaba/sdk/android/oss/ServiceException;

    move-object v1, v15

    move v2, v8

    move-object v3, v0

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/sdk/android/oss/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    .local v1, "serviceException":Lcom/alibaba/sdk/android/oss/ServiceException;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 854
    invoke-virtual {v1, v13}, Lcom/alibaba/sdk/android/oss/ServiceException;->setPartEtag(Ljava/lang/String;)V

    .line 857
    :cond_a
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 858
    invoke-virtual {v1, v14}, Lcom/alibaba/sdk/android/oss/ServiceException;->setPartNumber(Ljava/lang/String;)V

    .line 862
    :cond_b
    return-object v1
.end method

.method public static trimQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 759
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 761
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 762
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 763
    :cond_1
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 765
    :cond_2
    return-object p0
.end method
