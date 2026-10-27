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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseGetObjectACLResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;)Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;)Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseCopyObjectResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;)Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseInitMultipartResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseCompleteMultipartUploadResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListPartsResult;)Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseListPartsResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListPartsResult;)Lcom/alibaba/sdk/android/oss/model/ListPartsResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseGetBucketInfoResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseGetBucketACLResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseGetBucketRefererResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseGetBucketLoggingResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseGetBucketLifecycleResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;)Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseDeleteMultipleObjectResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;)Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseObjectListResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;)Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseBucketListResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;)Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;

    move-result-object p0

    return-object p0
.end method

.method private static parseBucketListResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;)Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;
    .locals 3
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
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 580
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 581
    nop

    .line 582
    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-eq p0, v2, :cond_12

    .line 583
    packed-switch p0, :pswitch_data_0

    goto/16 :goto_1

    .line 638
    :pswitch_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 639
    const-string v2, "Bucket"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 640
    if-eqz v1, :cond_11

    .line 641
    invoke-virtual {p1, v1}, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;->addBucket(Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;)V

    goto/16 :goto_1

    .line 585
    :pswitch_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 586
    if-nez p0, :cond_1

    .line 587
    goto/16 :goto_1

    .line 589
    :cond_1
    const-string v2, "Prefix"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 590
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;->setPrefix(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 591
    :cond_2
    const-string v2, "Marker"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 592
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;->setMarker(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 593
    :cond_3
    const-string v2, "MaxKeys"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 594
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 595
    if-eqz p0, :cond_4

    .line 596
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;->setMaxKeys(I)V

    .line 598
    :cond_4
    goto/16 :goto_1

    :cond_5
    const-string v2, "IsTruncated"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 599
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 600
    if-eqz p0, :cond_6

    .line 601
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;->setTruncated(Z)V

    .line 603
    :cond_6
    goto/16 :goto_1

    :cond_7
    const-string v2, "NextMarker"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 604
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;->setNextMarker(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 605
    :cond_8
    const-string v2, "ID"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 606
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;->setOwnerId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 607
    :cond_9
    const-string v2, "DisplayName"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 608
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;->setOwnerDisplayName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 609
    :cond_a
    const-string v2, "Bucket"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 610
    new-instance p0, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;-><init>()V

    .line 646
    move-object v1, p0

    goto/16 :goto_1

    .line 611
    :cond_b
    const-string v2, "CreationDate"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 612
    if-eqz v1, :cond_11

    .line 613
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->createDate:Ljava/util/Date;

    goto :goto_1

    .line 615
    :cond_c
    const-string v2, "ExtranetEndpoint"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 616
    if-eqz v1, :cond_11

    .line 617
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->extranetEndpoint:Ljava/lang/String;

    goto :goto_1

    .line 619
    :cond_d
    const-string v2, "IntranetEndpoint"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 620
    if-eqz v1, :cond_11

    .line 621
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->intranetEndpoint:Ljava/lang/String;

    goto :goto_1

    .line 623
    :cond_e
    const-string v2, "Location"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 624
    if-eqz v1, :cond_11

    .line 625
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->location:Ljava/lang/String;

    goto :goto_1

    .line 627
    :cond_f
    const-string v2, "Name"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 628
    if-eqz v1, :cond_11

    .line 629
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->name:Ljava/lang/String;

    goto :goto_1

    .line 631
    :cond_10
    const-string v2, "StorageClass"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 632
    if-eqz v1, :cond_11

    .line 633
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->storageClass:Ljava/lang/String;

    .line 646
    :cond_11
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .line 647
    const/4 v2, 0x4

    if-ne p0, v2, :cond_0

    .line 648
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto/16 :goto_0

    .line 651
    :cond_12
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseCompleteMultipartUploadResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 176
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 177
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 178
    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    .line 179
    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 182
    const-string v1, "Location"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->setLocation(Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :cond_2
    const-string v1, "Bucket"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->setBucketName(Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :cond_3
    const-string v1, "Key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 187
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->setObjectKey(Ljava/lang/String;)V

    goto :goto_1

    .line 188
    :cond_4
    const-string v1, "ETag"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 189
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->setETag(Ljava/lang/String;)V

    .line 194
    :cond_5
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .line 195
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    .line 196
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_0

    .line 200
    :cond_6
    return-object p1
.end method

.method private static parseCopyObjectResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;)Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 74
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 75
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 76
    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    .line 77
    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 80
    const-string v1, "LastModified"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;->setLastModified(Ljava/util/Date;)V

    goto :goto_1

    .line 82
    :cond_2
    const-string v1, "ETag"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 83
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;->setEtag(Ljava/lang/String;)V

    .line 88
    :cond_3
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .line 89
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    .line 90
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_0

    .line 93
    :cond_4
    return-object p1
.end method

.method private static parseDeleteMultipleObjectResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;)Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 546
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 547
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 548
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 549
    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    .line 550
    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    goto :goto_1

    .line 552
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 553
    const-string v1, "Key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 554
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->addDeletedObject(Ljava/lang/String;)V

    .line 559
    :cond_2
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .line 560
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    .line 561
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_0

    .line 564
    :cond_3
    return-object p1
.end method

.method private static parseGetBucketACLResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 363
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 364
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 365
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 366
    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    .line 367
    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    goto :goto_1

    .line 369
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 370
    const-string v1, "Grant"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->setBucketACL(Ljava/lang/String;)V

    goto :goto_1

    .line 372
    :cond_2
    const-string v1, "ID"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 373
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->setBucketOwnerID(Ljava/lang/String;)V

    goto :goto_1

    .line 374
    :cond_3
    const-string v1, "DisplayName"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 375
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->setBucketOwner(Ljava/lang/String;)V

    .line 380
    :cond_4
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .line 381
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    .line 382
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_0

    .line 385
    :cond_5
    return-object p1
.end method

.method private static parseGetBucketInfoResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 274
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 275
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 276
    nop

    .line 277
    nop

    .line 278
    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-eq p0, v3, :cond_f

    .line 279
    packed-switch p0, :pswitch_data_0

    goto/16 :goto_1

    .line 329
    :pswitch_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 330
    if-nez p0, :cond_1

    .line 331
    goto/16 :goto_1

    .line 334
    :cond_1
    const-string v3, "Bucket"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 335
    if-eqz v1, :cond_e

    .line 336
    invoke-virtual {p1, v1}, Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;->setBucket(Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;)V

    goto/16 :goto_1

    .line 338
    :cond_2
    const-string v3, "Owner"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 339
    if-eqz v1, :cond_e

    .line 340
    iput-object v2, v1, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->owner:Lcom/alibaba/sdk/android/oss/model/Owner;

    goto/16 :goto_1

    .line 281
    :pswitch_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 282
    if-nez p0, :cond_3

    .line 283
    goto/16 :goto_1

    .line 286
    :cond_3
    const-string v3, "Owner"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 287
    new-instance p0, Lcom/alibaba/sdk/android/oss/model/Owner;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/Owner;-><init>()V

    .line 346
    move-object v2, p0

    goto/16 :goto_1

    .line 288
    :cond_4
    const-string v3, "ID"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 289
    if-eqz v2, :cond_e

    .line 290
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/alibaba/sdk/android/oss/model/Owner;->setId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 292
    :cond_5
    const-string v3, "DisplayName"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 293
    if-eqz v2, :cond_e

    .line 294
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/alibaba/sdk/android/oss/model/Owner;->setDisplayName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 296
    :cond_6
    const-string v3, "Bucket"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 297
    new-instance p0, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;-><init>()V

    .line 346
    move-object v1, p0

    goto/16 :goto_1

    .line 298
    :cond_7
    const-string v3, "CreationDate"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 299
    if-eqz v1, :cond_e

    .line 300
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->createDate:Ljava/util/Date;

    goto :goto_1

    .line 302
    :cond_8
    const-string v3, "ExtranetEndpoint"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 303
    if-eqz v1, :cond_e

    .line 304
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->extranetEndpoint:Ljava/lang/String;

    goto :goto_1

    .line 306
    :cond_9
    const-string v3, "IntranetEndpoint"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 307
    if-eqz v1, :cond_e

    .line 308
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->intranetEndpoint:Ljava/lang/String;

    goto :goto_1

    .line 310
    :cond_a
    const-string v3, "Location"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 311
    if-eqz v1, :cond_e

    .line 312
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->location:Ljava/lang/String;

    goto :goto_1

    .line 314
    :cond_b
    const-string v3, "Name"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 315
    if-eqz v1, :cond_e

    .line 316
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->name:Ljava/lang/String;

    goto :goto_1

    .line 318
    :cond_c
    const-string v3, "StorageClass"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 319
    if-eqz v1, :cond_e

    .line 320
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->storageClass:Ljava/lang/String;

    goto :goto_1

    .line 322
    :cond_d
    const-string v3, "Grant"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 323
    if-eqz v1, :cond_e

    .line 324
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->setAcl(Ljava/lang/String;)V

    .line 346
    :cond_e
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .line 347
    const/4 v3, 0x4

    if-ne p0, v3, :cond_0

    .line 348
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

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
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 438
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 439
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 440
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 441
    nop

    .line 442
    nop

    .line 443
    nop

    .line 444
    nop

    .line 445
    nop

    .line 446
    nop

    .line 447
    nop

    .line 449
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move v5, v4

    move v6, v5

    move-object v3, v2

    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    :cond_0
    :goto_0
    const/4 v10, 0x1

    if-eq p0, v10, :cond_19

    .line 450
    packed-switch p0, :pswitch_data_0

    goto/16 :goto_5

    .line 520
    :pswitch_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 521
    const-string v10, "Rule"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 522
    invoke-virtual {p1, v3}, Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;->addLifecycleRule(Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;)V

    goto/16 :goto_5

    .line 523
    :cond_1
    const-string v10, "Expiration"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 524
    nop

    .line 536
    move v4, v1

    goto/16 :goto_5

    .line 525
    :cond_2
    const-string v10, "AbortMultipartUpload"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 526
    nop

    .line 536
    move v5, v1

    goto/16 :goto_5

    .line 527
    :cond_3
    const-string v10, "Transition"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 528
    nop

    .line 529
    nop

    .line 530
    nop

    .line 531
    nop

    .line 536
    move v6, v1

    move-object v7, v2

    move-object v8, v7

    move-object v9, v8

    goto/16 :goto_5

    .line 452
    :pswitch_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 453
    const-string v11, "Rule"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 454
    new-instance p0, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;-><init>()V

    .line 536
    move-object v3, p0

    goto/16 :goto_5

    .line 455
    :cond_4
    const-string v11, "ID"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 456
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setIdentifier(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 457
    :cond_5
    const-string v11, "Prefix"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 458
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setPrefix(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 459
    :cond_6
    const-string v11, "Status"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 460
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 461
    const-string v11, "Enabled"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 462
    invoke-virtual {v3, v10}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setStatus(Z)V

    goto :goto_1

    .line 464
    :cond_7
    invoke-virtual {v3, v1}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setStatus(Z)V

    .line 466
    :goto_1
    goto/16 :goto_5

    :cond_8
    const-string v11, "Expiration"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 467
    nop

    .line 536
    move v4, v10

    goto/16 :goto_5

    .line 468
    :cond_9
    const-string v11, "AbortMultipartUpload"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 469
    nop

    .line 536
    move v5, v10

    goto/16 :goto_5

    .line 470
    :cond_a
    const-string v11, "Transition"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 471
    nop

    .line 536
    move v6, v10

    goto/16 :goto_5

    .line 472
    :cond_b
    const-string v10, "Days"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 473
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 474
    if-eqz v3, :cond_f

    .line 475
    if-eqz v4, :cond_c

    .line 476
    invoke-virtual {v3, p0}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setDays(Ljava/lang/String;)V

    goto :goto_2

    .line 477
    :cond_c
    if-eqz v5, :cond_d

    .line 478
    invoke-virtual {v3, p0}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setMultipartDays(Ljava/lang/String;)V

    goto :goto_2

    .line 479
    :cond_d
    if-eqz v6, :cond_f

    .line 480
    if-eqz v7, :cond_f

    .line 481
    const-string v8, "IA"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 482
    invoke-virtual {v3, p0}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setIADays(Ljava/lang/String;)V

    goto :goto_2

    .line 483
    :cond_e
    const-string v8, "Archive"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 484
    invoke-virtual {v3, p0}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setArchiveDays(Ljava/lang/String;)V

    .line 536
    :cond_f
    :goto_2
    move-object v8, p0

    goto/16 :goto_5

    .line 489
    :cond_10
    const-string v10, "Date"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 490
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 491
    if-eqz v3, :cond_14

    .line 492
    if-eqz v4, :cond_11

    .line 493
    invoke-virtual {v3, p0}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setExpireDate(Ljava/lang/String;)V

    goto :goto_3

    .line 494
    :cond_11
    if-eqz v5, :cond_12

    .line 495
    invoke-virtual {v3, p0}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setMultipartExpireDate(Ljava/lang/String;)V

    goto :goto_3

    .line 496
    :cond_12
    if-eqz v6, :cond_14

    .line 497
    if-eqz v7, :cond_14

    .line 498
    const-string v9, "IA"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 499
    invoke-virtual {v3, p0}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setIAExpireDate(Ljava/lang/String;)V

    goto :goto_3

    .line 500
    :cond_13
    const-string v9, "Archive"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 501
    invoke-virtual {v3, p0}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setArchiveExpireDate(Ljava/lang/String;)V

    .line 536
    :cond_14
    :goto_3
    move-object v9, p0

    goto :goto_5

    .line 506
    :cond_15
    const-string v10, "StorageClass"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 507
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 508
    if-eqz v3, :cond_17

    .line 509
    const-string v7, "IA"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 510
    invoke-virtual {v3, v8}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setIADays(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v3, v9}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setIAExpireDate(Ljava/lang/String;)V

    goto :goto_4

    .line 512
    :cond_16
    const-string v7, "Archive"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 513
    invoke-virtual {v3, v9}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setArchiveDays(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v3, v9}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->setArchiveExpireDate(Ljava/lang/String;)V

    .line 536
    :cond_17
    :goto_4
    move-object v7, p0

    :cond_18
    :goto_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .line 537
    const/4 v10, 0x4

    if-ne p0, v10, :cond_0

    .line 538
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto/16 :goto_0

    .line 541
    :cond_19
    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseGetBucketLoggingResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 411
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 412
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 413
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 414
    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    .line 415
    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    goto :goto_1

    .line 417
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 418
    const-string v2, "LoggingEnabled"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 419
    invoke-virtual {p1, v1}, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->setLoggingEnabled(Z)V

    goto :goto_1

    .line 420
    :cond_2
    const-string v1, "TargetBucket"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 421
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->setTargetBucketName(Ljava/lang/String;)V

    goto :goto_1

    .line 422
    :cond_3
    const-string v1, "TargetPrefix"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 423
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->setTargetPrefix(Ljava/lang/String;)V

    .line 429
    :cond_4
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .line 430
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    .line 431
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_0

    .line 434
    :cond_5
    return-object p1
.end method

.method private static parseGetBucketRefererResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;)Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 389
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 390
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 391
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 392
    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    .line 393
    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    goto :goto_1

    .line 395
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 396
    const-string v1, "Referer"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 397
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;->addReferer(Ljava/lang/String;)V

    .line 402
    :cond_2
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .line 403
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    .line 404
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_0

    .line 407
    :cond_3
    return-object p1
.end method

.method private static parseGetObjectACLResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;)Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 239
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 240
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 241
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 242
    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    .line 243
    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    goto :goto_1

    .line 245
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 246
    const-string v1, "Grant"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;->setObjectACL(Ljava/lang/String;)V

    goto :goto_1

    .line 248
    :cond_2
    const-string v1, "ID"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;->setObjectOwnerID(Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_3
    const-string v1, "DisplayName"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 251
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;->setObjectOwner(Ljava/lang/String;)V

    .line 256
    :cond_4
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .line 257
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    .line 258
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_0

    .line 261
    :cond_5
    return-object p1
.end method

.method private static parseInitMultipartResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 206
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 207
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 208
    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    .line 209
    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    goto :goto_1

    .line 211
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 212
    const-string v1, "Bucket"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->setBucketName(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_2
    const-string v1, "Key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->setObjectKey(Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :cond_3
    const-string v1, "UploadId"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 217
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->setUploadId(Ljava/lang/String;)V

    .line 222
    :cond_4
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .line 223
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    .line 224
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_0

    .line 227
    :cond_5
    return-object p1
.end method

.method private static parseListPartsResponseXML(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListPartsResult;)Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    nop

    .line 101
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 102
    const-string v2, "utf-8"

    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 103
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 104
    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-eq p0, v3, :cond_14

    .line 105
    packed-switch p0, :pswitch_data_0

    goto/16 :goto_1

    .line 155
    :pswitch_0
    const-string p0, "Part"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 156
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 107
    :pswitch_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 108
    const-string v3, "Bucket"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setBucketName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 110
    :cond_1
    const-string v3, "Key"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 112
    :cond_2
    const-string v3, "UploadId"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setUploadId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 114
    :cond_3
    const-string v3, "PartNumberMarker"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 115
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 116
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 117
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setPartNumberMarker(I)V

    .line 119
    :cond_4
    goto/16 :goto_1

    :cond_5
    const-string v3, "NextPartNumberMarker"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 120
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 122
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setNextPartNumberMarker(I)V

    .line 124
    :cond_6
    goto/16 :goto_1

    :cond_7
    const-string v3, "MaxParts"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 125
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 126
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 127
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setMaxParts(I)V

    .line 129
    :cond_8
    goto/16 :goto_1

    :cond_9
    const-string v3, "IsTruncated"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 130
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 131
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 132
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setTruncated(Z)V

    .line 134
    :cond_a
    goto/16 :goto_1

    :cond_b
    const-string v3, "StorageClass"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 135
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setStorageClass(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 136
    :cond_c
    const-string v3, "Part"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 137
    new-instance p0, Lcom/alibaba/sdk/android/oss/model/PartSummary;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/PartSummary;-><init>()V

    .line 160
    move-object v2, p0

    goto :goto_1

    .line 138
    :cond_d
    const-string v3, "PartNumber"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 139
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 140
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 141
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->setPartNumber(I)V

    .line 143
    :cond_e
    goto :goto_1

    :cond_f
    const-string v3, "LastModified"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 144
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->setLastModified(Ljava/util/Date;)V

    goto :goto_1

    .line 145
    :cond_10
    const-string v3, "ETag"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 146
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->setETag(Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_11
    const-string v3, "Size"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 148
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 149
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 150
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->setSize(J)V

    .line 152
    :cond_12
    nop

    .line 160
    :cond_13
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .line 161
    const/4 v3, 0x4

    if-ne p0, v3, :cond_0

    .line 162
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto/16 :goto_0

    .line 166
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_15

    .line 167
    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->setParts(Ljava/util/List;)V

    .line 170
    :cond_15
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseObjectListResponse(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;
    .locals 7
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
    const-string v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 667
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 668
    nop

    .line 669
    nop

    .line 670
    nop

    .line 671
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    :cond_0
    :goto_0
    const/4 v5, 0x1

    if-eq p0, v5, :cond_1b

    .line 672
    packed-switch p0, :pswitch_data_0

    goto/16 :goto_1

    .line 733
    :pswitch_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 734
    const-string v5, "Owner"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 735
    if-eqz v2, :cond_1a

    .line 736
    invoke-virtual {v4, v2}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setOwner(Lcom/alibaba/sdk/android/oss/model/Owner;)V

    goto/16 :goto_1

    .line 738
    :cond_1
    const-string v5, "Contents"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 739
    if-eqz v4, :cond_1a

    .line 740
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->getBucketName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setBucketName(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p1, v4}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->addObjectSummary(Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)V

    goto/16 :goto_1

    .line 743
    :cond_2
    const-string v5, "CommonPrefixes"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 744
    nop

    .line 749
    move v3, v1

    goto/16 :goto_1

    .line 674
    :pswitch_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 675
    const-string v6, "Name"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 676
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setBucketName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 677
    :cond_3
    const-string v6, "Prefix"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 678
    if-eqz v3, :cond_5

    .line 679
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 680
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 681
    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->addCommonPrefix(Ljava/lang/String;)V

    .line 683
    :cond_4
    goto/16 :goto_1

    .line 684
    :cond_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setPrefix(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 687
    :cond_6
    const-string v6, "Marker"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 688
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setMarker(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 689
    :cond_7
    const-string v6, "Delimiter"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 690
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setDelimiter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 691
    :cond_8
    const-string v6, "EncodingType"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 692
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setEncodingType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 693
    :cond_9
    const-string v6, "MaxKeys"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 694
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 695
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 696
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setMaxKeys(I)V

    .line 698
    :cond_a
    goto/16 :goto_1

    :cond_b
    const-string v6, "NextMarker"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 699
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setNextMarker(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 700
    :cond_c
    const-string v6, "IsTruncated"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 701
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 702
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 703
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->setTruncated(Z)V

    .line 705
    :cond_d
    goto/16 :goto_1

    :cond_e
    const-string v6, "Contents"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 706
    new-instance p0, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;-><init>()V

    .line 749
    move-object v4, p0

    goto/16 :goto_1

    .line 707
    :cond_f
    const-string v6, "Key"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 708
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 709
    :cond_10
    const-string v6, "LastModified"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 710
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setLastModified(Ljava/util/Date;)V

    goto/16 :goto_1

    .line 711
    :cond_11
    const-string v6, "Size"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 712
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 713
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 714
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setSize(J)V

    .line 716
    :cond_12
    goto/16 :goto_1

    :cond_13
    const-string v6, "ETag"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 717
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setETag(Ljava/lang/String;)V

    goto :goto_1

    .line 718
    :cond_14
    const-string v6, "Type"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 719
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 720
    :cond_15
    const-string v6, "StorageClass"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 721
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->setStorageClass(Ljava/lang/String;)V

    goto :goto_1

    .line 722
    :cond_16
    const-string v6, "Owner"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 723
    new-instance p0, Lcom/alibaba/sdk/android/oss/model/Owner;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/Owner;-><init>()V

    .line 749
    move-object v2, p0

    goto :goto_1

    .line 724
    :cond_17
    const-string v6, "ID"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 725
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/alibaba/sdk/android/oss/model/Owner;->setId(Ljava/lang/String;)V

    goto :goto_1

    .line 726
    :cond_18
    const-string v6, "DisplayName"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 727
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/alibaba/sdk/android/oss/model/Owner;->setDisplayName(Ljava/lang/String;)V

    goto :goto_1

    .line 728
    :cond_19
    const-string v6, "CommonPrefixes"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 729
    nop

    .line 749
    move v3, v5

    :cond_1a
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .line 750
    const/4 v5, 0x4

    if-ne p0, v5, :cond_0

    .line 751
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

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
    .locals 4
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
    :try_start_0
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;-><init>()V

    .line 777
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 778
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 780
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
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 791
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

    goto :goto_2

    .line 784
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
    :goto_2
    goto :goto_0

    .line 785
    :catch_0
    move-exception p0

    .line 786
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 798
    :cond_5
    return-object v0

    .line 799
    :catch_1
    move-exception p0

    .line 800
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseResponseErrorXML(Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;Z)Ljava/lang/Exception;
    .locals 10

    .line 806
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->getStatusCode()I

    move-result v1

    .line 807
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->getResponse()Lokhttp3/Response;

    move-result-object v0

    const-string v2, "x-oss-request-id"

    invoke-virtual {v0, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 808
    nop

    .line 809
    nop

    .line 810
    nop

    .line 811
    nop

    .line 812
    nop

    .line 813
    nop

    .line 814
    const/4 v2, 0x0

    if-nez p1, :cond_9

    .line 816
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->getResponse()Lokhttp3/Response;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    .line 817
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorMessage  \uff1a  \n "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 818
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 819
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 820
    const-string v4, "utf-8"

    invoke-interface {v3, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 821
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    .line 822
    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    :cond_0
    :goto_0
    const/4 v8, 0x1

    if-eq p1, v8, :cond_8

    .line 823
    const/4 v8, 0x2

    if-eq p1, v8, :cond_1

    goto/16 :goto_1

    .line 825
    :cond_1
    const-string p1, "Code"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 826
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 840
    move-object v2, p1

    goto :goto_1

    .line 827
    :cond_2
    const-string p1, "Message"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 828
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 840
    move-object v4, p1

    goto :goto_1

    .line 829
    :cond_3
    const-string p1, "RequestId"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 830
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 840
    move-object v0, p1

    goto :goto_1

    .line 831
    :cond_4
    const-string p1, "HostId"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 832
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 840
    move-object v5, p1

    goto :goto_1

    .line 833
    :cond_5
    const-string p1, "PartNumber"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 834
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 835
    :cond_6
    const-string p1, "PartEtag"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 836
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 840
    :cond_7
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    .line 841
    const/4 v8, 0x4

    if-ne p1, v8, :cond_0

    .line 842
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 849
    :cond_8
    nop

    .line 852
    move-object v3, v2

    move-object v2, v4

    move-object v4, v0

    move-object v9, v6

    move-object v6, p0

    move-object p0, v9

    goto :goto_2

    .line 847
    :catch_0
    move-exception p0

    .line 848
    new-instance p1, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    .line 845
    :catch_1
    move-exception p0

    .line 846
    new-instance p1, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    .line 852
    :cond_9
    move-object v4, v0

    move-object p0, v2

    move-object v3, p0

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    :goto_2
    new-instance p1, Lcom/alibaba/sdk/android/oss/ServiceException;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/sdk/android/oss/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 854
    invoke-virtual {p1, v7}, Lcom/alibaba/sdk/android/oss/ServiceException;->setPartEtag(Ljava/lang/String;)V

    .line 857
    :cond_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 858
    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/ServiceException;->setPartNumber(Ljava/lang/String;)V

    .line 862
    :cond_b
    return-object p1
.end method

.method public static trimQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 759
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

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
