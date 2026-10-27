.class public Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source "ListMultipartUploadsResult.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private commonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delimiter:Ljava/lang/String;

.field private isTruncated:Z

.field private keyMarker:Ljava/lang/String;

.field private maxUploads:I

.field private multipartUploads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/MultipartUpload;",
            ">;"
        }
    .end annotation
.end field

.field private nextKeyMarker:Ljava/lang/String;

.field private nextUploadIdMarker:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private uploadIdMarker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->multipartUploads:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->commonPrefixes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCommonPrefix(Ljava/lang/String;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public addMultipartUpload(Lcom/alibaba/sdk/android/oss/model/MultipartUpload;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->multipartUploads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonPrefixes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->commonPrefixes:Ljava/util/List;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->keyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxUploads()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->maxUploads:I

    return v0
.end method

.method public getMultipartUploads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/MultipartUpload;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->multipartUploads:Ljava/util/List;

    return-object v0
.end method

.method public getNextKeyMarker()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->nextKeyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getNextUploadIdMarker()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->nextUploadIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadIdMarker()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->uploadIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->isTruncated:Z

    return v0
.end method

.method public parseData(Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;)Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    nop

    .line 147
    nop

    .line 148
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 149
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->getContent()Ljava/io/InputStream;

    move-result-object p1

    const-string v2, "utf-8"

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 150
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    .line 151
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :cond_0
    :goto_0
    const/4 v5, 0x1

    if-eq p1, v5, :cond_15

    .line 152
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 201
    :pswitch_0
    const-string p1, "Upload"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 202
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 203
    :cond_1
    const-string p1, "CommonPrefixes"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 204
    nop

    .line 209
    move v4, v2

    goto/16 :goto_1

    .line 154
    :pswitch_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 155
    const-string v6, "Bucket"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 156
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->setBucketName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 157
    :cond_2
    const-string v6, "Delimiter"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 158
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->setDelimiter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 159
    :cond_3
    const-string v6, "Prefix"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 160
    if-eqz v4, :cond_5

    .line 161
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 163
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->addCommonPrefix(Ljava/lang/String;)V

    .line 165
    :cond_4
    goto/16 :goto_1

    .line 166
    :cond_5
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->setPrefix(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 168
    :cond_6
    const-string v6, "MaxUploads"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 169
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->setMaxUploads(I)V

    .line 173
    :cond_7
    goto/16 :goto_1

    :cond_8
    const-string v6, "IsTruncated"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 174
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 176
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->setTruncated(Z)V

    .line 178
    :cond_9
    goto/16 :goto_1

    :cond_a
    const-string v6, "KeyMarker"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 179
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->setKeyMarker(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 180
    :cond_b
    const-string v6, "UploadIdMarker"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 181
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->setUploadIdMarker(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 182
    :cond_c
    const-string v6, "NextKeyMarker"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 183
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->setNextKeyMarker(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 184
    :cond_d
    const-string v6, "NextUploadIdMarker"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 185
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->setNextUploadIdMarker(Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :cond_e
    const-string v6, "Upload"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 187
    new-instance p1, Lcom/alibaba/sdk/android/oss/model/MultipartUpload;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/model/MultipartUpload;-><init>()V

    .line 209
    move-object v3, p1

    goto :goto_1

    .line 188
    :cond_f
    const-string v6, "Key"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 189
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/alibaba/sdk/android/oss/model/MultipartUpload;->setKey(Ljava/lang/String;)V

    goto :goto_1

    .line 190
    :cond_10
    const-string v6, "UploadId"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 191
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/alibaba/sdk/android/oss/model/MultipartUpload;->setUploadId(Ljava/lang/String;)V

    goto :goto_1

    .line 192
    :cond_11
    const-string v6, "Initiated"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 193
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/alibaba/sdk/android/oss/model/MultipartUpload;->setInitiated(Ljava/util/Date;)V

    goto :goto_1

    .line 194
    :cond_12
    const-string v6, "StorageClass"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 195
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/alibaba/sdk/android/oss/model/MultipartUpload;->setStorageClass(Ljava/lang/String;)V

    goto :goto_1

    .line 196
    :cond_13
    const-string v6, "CommonPrefixes"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 197
    nop

    .line 209
    move v4, v5

    :cond_14
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    .line 210
    const/4 v5, 0x4

    if-ne p1, v5, :cond_0

    .line 211
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    goto/16 :goto_0

    .line 215
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_16

    .line 216
    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->setMultipartUploads(Ljava/util/List;)V

    .line 219
    :cond_16
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->bucketName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setCommonPrefixes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    :cond_0
    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->delimiter:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setKeyMarker(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->keyMarker:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setMaxUploads(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->maxUploads:I

    .line 88
    return-void
.end method

.method public setMultipartUploads(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/MultipartUpload;",
            ">;)V"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->multipartUploads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->multipartUploads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    :cond_0
    return-void
.end method

.method public setNextKeyMarker(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->nextKeyMarker:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setNextUploadIdMarker(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->nextUploadIdMarker:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->prefix:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->isTruncated:Z

    .line 96
    return-void
.end method

.method public setUploadIdMarker(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;->uploadIdMarker:Ljava/lang/String;

    .line 64
    return-void
.end method
