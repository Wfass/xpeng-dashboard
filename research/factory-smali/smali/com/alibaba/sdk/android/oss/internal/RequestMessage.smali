.class public Lcom/alibaba/sdk/android/oss/internal/RequestMessage;
.super Lcom/alibaba/sdk/android/oss/internal/HttpMessage;
.source "RequestMessage.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private checkCRC64:Z

.field private credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

.field private customPathPrefixEnable:Z

.field private endpoint:Ljava/net/URI;

.field private httpDnsEnable:Z

.field private ipWithHeader:Ljava/lang/String;

.field private isAuthorizationRequired:Z

.field private isInCustomCnameExcludeList:Z

.field private method:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

.field private objectKey:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pathStyleAccessEnable:Z

.field private service:Ljava/net/URI;

.field private uploadData:[B

.field private uploadFilePath:Ljava/lang/String;

.field private uploadUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/internal/HttpMessage;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isAuthorizationRequired:Z

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->parameters:Ljava/util/Map;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->httpDnsEnable:Z

    .line 40
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->pathStyleAccessEnable:Z

    .line 41
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->customPathPrefixEnable:Z

    .line 43
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isInCustomCnameExcludeList:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public buildCanonicalURL()Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->endpoint:Ljava/net/URI;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Endpoint haven\'t been set!"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->assertTrue(ZLjava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->endpoint:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "scheme":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->endpoint:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "originHost":Ljava/lang/String;
    const/4 v2, 0x0

    .line 342
    .local v2, "portString":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->endpoint:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->endpoint:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v4

    .line 345
    .local v4, "port":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 346
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 349
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 350
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->endpoint:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    .line 351
    .local v5, "url":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endpoint url : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 355
    .end local v5    # "url":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " scheme : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " originHost : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 357
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " port : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 359
    const/4 v5, 0x0

    .line 361
    .local v5, "isPathStyle":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, "baseURL":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 363
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 366
    :cond_3
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->bucketName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 367
    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isOssOriginHost(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->bucketName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    const/4 v7, 0x0

    .line 371
    .local v7, "urlHost":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isHttpDnsEnable()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 372
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->getInstance()Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->getIpByHostAsync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 374
    :cond_4
    const-string v8, "[buildCannonicalURL], disable httpdns"

    invoke-static {v8}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 376
    :goto_1
    const-string v8, "Host"

    invoke-virtual {p0, v8, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 379
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 381
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 383
    .end local v7    # "urlHost":Ljava/lang/String;
    :goto_2
    goto :goto_3

    :cond_6
    iget-boolean v7, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isInCustomCnameExcludeList:Z

    if-eqz v7, :cond_8

    .line 384
    iget-boolean v7, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->pathStyleAccessEnable:Z

    if-eqz v7, :cond_7

    .line 385
    const/4 v5, 0x1

    goto :goto_3

    .line 387
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->bucketName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 389
    :cond_8
    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isValidateIP(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 391
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->ipWithHeader:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 392
    const/4 v5, 0x1

    goto :goto_3

    .line 394
    :cond_9
    const-string v7, "Host"

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getIpWithHeader()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_a
    :goto_3
    iget-boolean v7, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->customPathPrefixEnable:Z

    if-eqz v7, :cond_b

    if-eqz v3, :cond_b

    .line 400
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 403
    :cond_b
    if-eqz v5, :cond_c

    .line 404
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->bucketName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 407
    :cond_c
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->objectKey:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 408
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->objectKey:Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-static {v8, v9}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 411
    :cond_d
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->parameters:Ljava/util/Map;

    const-string v8, "utf-8"

    invoke-static {v7, v8}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->paramToQueryString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 414
    .local v7, "queryString":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v8, "printReq":Ljava/lang/StringBuilder;
    const-string v9, "request---------------------\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "request url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "request params="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 419
    .local v10, "key":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "requestHeader ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .end local v10    # "key":Ljava/lang/String;
    goto :goto_4

    .line 421
    :cond_e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 423
    invoke-static {v7}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 424
    return-object v6

    .line 426
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public buildOSSServiceURL()Ljava/lang/String;
    .locals 7

    .line 310
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->service:Ljava/net/URI;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Service haven\'t been set!"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->assertTrue(ZLjava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->service:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "originHost":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->service:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "scheme":Ljava/lang/String;
    const/4 v2, 0x0

    .line 315
    .local v2, "urlHost":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isHttpDnsEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 316
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->getInstance()Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->getIpByHostAsync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 318
    :cond_1
    const-string v3, "[buildOSSServiceURL], disable httpdns or http is not need httpdns"

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 320
    :goto_1
    if-nez v2, :cond_2

    .line 321
    move-object v2, v0

    .line 324
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Host"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "baseURL":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->parameters:Ljava/util/Map;

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->paramToQueryString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, "queryString":Ljava/lang/String;
    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 330
    return-object v3

    .line 332
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-super {p0}, Lcom/alibaba/sdk/android/oss/internal/HttpMessage;->close()V

    return-void
.end method

.method public createBucketRequestBodyMarshall(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 186
    .local p1, "configures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    .local v0, "xmlBody":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_1

    .line 188
    const-string v1, "<CreateBucketConfiguration>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 190
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 192
    :cond_0
    const-string v1, "</CreateBucketConfiguration>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 194
    .local v1, "binaryData":[B
    array-length v2, v1

    int-to-long v2, v2

    .line 195
    .local v2, "length":J
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 196
    .local v4, "inStream":Ljava/io/InputStream;
    invoke-virtual {p0, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setContent(Ljava/io/InputStream;)V

    .line 197
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setContentLength(J)V

    .line 199
    .end local v1    # "binaryData":[B
    .end local v2    # "length":J
    .end local v4    # "inStream":Ljava/io/InputStream;
    :cond_1
    return-void
.end method

.method public deleteMultipleObjectRequestBodyMarshall(Ljava/util/List;Z)[B
    .locals 5
    .param p2, "isQuiet"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 288
    .local p1, "objectKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 289
    .local v0, "xmlBody":Ljava/lang/StringBuffer;
    const-string v1, "<Delete>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    if-eqz p2, :cond_0

    .line 291
    const-string v1, "<Quiet>true</Quiet>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 293
    :cond_0
    const-string v1, "<Quiet>false</Quiet>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 296
    .local v2, "key":Ljava/lang/String;
    const-string v3, "<Object>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    const-string v3, "<Key>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "</Key>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    const-string v3, "</Object>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_1

    .line 300
    :cond_1
    const-string v1, "</Delete>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 302
    .local v1, "binaryData":[B
    array-length v2, v1

    int-to-long v2, v2

    .line 303
    .local v2, "length":J
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 304
    .local v4, "inStream":Ljava/io/InputStream;
    invoke-virtual {p0, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setContent(Ljava/io/InputStream;)V

    .line 305
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setContentLength(J)V

    .line 306
    return-object v1
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getContent()Ljava/io/InputStream;
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/alibaba/sdk/android/oss/internal/HttpMessage;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentLength()J
    .locals 2

    .line 28
    invoke-super {p0}, Lcom/alibaba/sdk/android/oss/internal/HttpMessage;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCredentialProvider()Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    return-object v0
.end method

.method public getEndpoint()Ljava/net/URI;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->endpoint:Ljava/net/URI;

    return-object v0
.end method

.method public bridge synthetic getHeaders()Ljava/util/Map;
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/alibaba/sdk/android/oss/internal/HttpMessage;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIpWithHeader()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->ipWithHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->method:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    return-object v0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->objectKey:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getService()Ljava/net/URI;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->service:Ljava/net/URI;

    return-object v0
.end method

.method public bridge synthetic getStringBody()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/alibaba/sdk/android/oss/internal/HttpMessage;->getStringBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploadData()[B
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->uploadData:[B

    return-object v0
.end method

.method public getUploadFilePath()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->uploadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadUri()Landroid/net/Uri;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->uploadUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isAuthorizationRequired()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isAuthorizationRequired:Z

    return v0
.end method

.method public isCheckCRC64()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->checkCRC64:Z

    return v0
.end method

.method public isCustomPathPrefixEnable()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->customPathPrefixEnable:Z

    return v0
.end method

.method public isHttpDnsEnable()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->httpDnsEnable:Z

    return v0
.end method

.method public isInCustomCnameExcludeList()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isInCustomCnameExcludeList:Z

    return v0
.end method

.method public isPathStyleAccessEnable()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->pathStyleAccessEnable:Z

    return v0
.end method

.method public putBucketLifecycleRequestBodyMarshall(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 242
    .local p1, "lifecycleRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 243
    .local v0, "xmlBody":Ljava/lang/StringBuffer;
    const-string v1, "<LifecycleConfiguration>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;

    .line 245
    .local v2, "rule":Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;
    const-string v3, "<Rule>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<ID>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</ID>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<Prefix>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</Prefix>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<Status>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getStatus()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Enabled"

    goto :goto_1

    :cond_2
    const-string v4, "Disabled"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</Status>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getDays()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<Days>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getDays()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</Days>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 255
    :cond_3
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getExpireDate()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<Date>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getExpireDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</Date>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    :cond_4
    :goto_2
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getMultipartDays()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<AbortMultipartUpload><Days>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getMultipartDays()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</Days></AbortMultipartUpload>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 261
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getMultipartExpireDate()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<AbortMultipartUpload><Date>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getMultipartDays()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</Date></AbortMultipartUpload>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    :cond_6
    :goto_3
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getIADays()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<Transition><Days>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getIADays()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</Days><StorageClass>IA</StorageClass></Transition>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 267
    :cond_7
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getIAExpireDate()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<Transition><Date>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getIAExpireDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</Date><StorageClass>IA</StorageClass></Transition>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 269
    :cond_8
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getArchiveDays()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<Transition><Days>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getArchiveDays()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</Days><StorageClass>Archive</StorageClass></Transition>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 271
    :cond_9
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getArchiveExpireDate()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<Transition><Date>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;->getArchiveExpireDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</Date><StorageClass>Archive</StorageClass></Transition>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    :cond_a
    :goto_4
    const-string v3, "</Rule>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    .end local v2    # "rule":Lcom/alibaba/sdk/android/oss/model/BucketLifecycleRule;
    goto/16 :goto_0

    .line 278
    :cond_b
    const-string v1, "</LifecycleConfiguration>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 281
    .local v1, "binaryData":[B
    array-length v2, v1

    int-to-long v2, v2

    .line 282
    .local v2, "length":J
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 283
    .local v4, "inStream":Ljava/io/InputStream;
    invoke-virtual {p0, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setContent(Ljava/io/InputStream;)V

    .line 284
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setContentLength(J)V

    .line 285
    return-void
.end method

.method public putBucketLoggingRequestBodyMarshall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "targetBucketName"    # Ljava/lang/String;
    .param p2, "targetPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 223
    .local v0, "xmlBody":Ljava/lang/StringBuffer;
    const-string v1, "<BucketLoggingStatus>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    if-eqz p1, :cond_1

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<LoggingEnabled><TargetBucket>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</TargetBucket>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    if-eqz p2, :cond_0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<TargetPrefix>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</TargetPrefix>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    :cond_0
    const-string v1, "</LoggingEnabled>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    :cond_1
    const-string v1, "</BucketLoggingStatus>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 235
    .local v1, "binaryData":[B
    array-length v2, v1

    int-to-long v2, v2

    .line 236
    .local v2, "length":J
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 237
    .local v4, "inStream":Ljava/io/InputStream;
    invoke-virtual {p0, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setContent(Ljava/io/InputStream;)V

    .line 238
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setContentLength(J)V

    .line 239
    return-void
.end method

.method public putBucketRefererRequestBodyMarshall(Ljava/util/ArrayList;Z)V
    .locals 5
    .param p2, "allowEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 202
    .local p1, "referers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 203
    .local v0, "xmlBody":Ljava/lang/StringBuffer;
    const-string v1, "<RefererConfiguration>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<AllowEmptyReferer>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v2, "true"

    goto :goto_0

    :cond_0
    const-string v2, "false"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</AllowEmptyReferer>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 206
    const-string v1, "<RefererList>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    .local v2, "referer":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<Referer>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</Referer>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    .end local v2    # "referer":Ljava/lang/String;
    goto :goto_1

    .line 210
    :cond_1
    const-string v1, "</RefererList>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    :cond_2
    const-string v1, "</RefererConfiguration>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 215
    .local v1, "binaryData":[B
    array-length v2, v1

    int-to-long v2, v2

    .line 216
    .local v2, "length":J
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 217
    .local v4, "inStream":Ljava/io/InputStream;
    invoke-virtual {p0, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setContent(Ljava/io/InputStream;)V

    .line 218
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setContentLength(J)V

    .line 219
    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->bucketName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setCheckCRC64(Z)V
    .locals 0
    .param p1, "checkCRC64"    # Z

    .line 158
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->checkCRC64:Z

    .line 159
    return-void
.end method

.method public bridge synthetic setContent(Ljava/io/InputStream;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/HttpMessage;->setContent(Ljava/io/InputStream;)V

    return-void
.end method

.method public bridge synthetic setContentLength(J)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/HttpMessage;->setContentLength(J)V

    return-void
.end method

.method public setCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V
    .locals 0
    .param p1, "credentialProvider"    # Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    .line 62
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    .line 63
    return-void
.end method

.method public setCustomPathPrefixEnable(Z)V
    .locals 0
    .param p1, "customPathPrefixEnable"    # Z

    .line 182
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->customPathPrefixEnable:Z

    .line 183
    return-void
.end method

.method public setEndpoint(Ljava/net/URI;)V
    .locals 0
    .param p1, "endpoint"    # Ljava/net/URI;

    .line 78
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->endpoint:Ljava/net/URI;

    .line 79
    return-void
.end method

.method public bridge synthetic setHeaders(Ljava/util/Map;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/HttpMessage;->setHeaders(Ljava/util/Map;)V

    return-void
.end method

.method public setHttpDnsEnable(Z)V
    .locals 0
    .param p1, "httpDnsEnable"    # Z

    .line 86
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->httpDnsEnable:Z

    .line 87
    return-void
.end method

.method public setIpWithHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipWithHeader"    # Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->ipWithHeader:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setIsAuthorizationRequired(Z)V
    .locals 0
    .param p1, "isAuthorizationRequired"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isAuthorizationRequired:Z

    .line 143
    return-void
.end method

.method public setIsInCustomCnameExcludeList(Z)V
    .locals 0
    .param p1, "isInExcludeCnameList"    # Z

    .line 150
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isInCustomCnameExcludeList:Z

    .line 151
    return-void
.end method

.method public setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V
    .locals 0
    .param p1, "method"    # Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    .line 54
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->method:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    .line 55
    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectKey"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->objectKey:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->parameters:Ljava/util/Map;

    .line 111
    return-void
.end method

.method public setPathStyleAccessEnable(Z)V
    .locals 0
    .param p1, "pathStyleAccessEnable"    # Z

    .line 174
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->pathStyleAccessEnable:Z

    .line 175
    return-void
.end method

.method public setService(Ljava/net/URI;)V
    .locals 0
    .param p1, "service"    # Ljava/net/URI;

    .line 70
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->service:Ljava/net/URI;

    .line 71
    return-void
.end method

.method public bridge synthetic setStringBody(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/HttpMessage;->setStringBody(Ljava/lang/String;)V

    return-void
.end method

.method public setUploadData([B)V
    .locals 0
    .param p1, "uploadData"    # [B

    .line 126
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->uploadData:[B

    .line 127
    return-void
.end method

.method public setUploadFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadFilePath"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->uploadFilePath:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setUploadUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uploadUri"    # Landroid/net/Uri;

    .line 134
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->uploadUri:Landroid/net/Uri;

    .line 135
    return-void
.end method
