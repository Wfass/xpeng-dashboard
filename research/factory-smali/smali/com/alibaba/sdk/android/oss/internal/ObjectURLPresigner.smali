.class public Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;
.super Ljava/lang/Object;
.source "ObjectURLPresigner.java"


# instance fields
.field private conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

.field private credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

.field private endpoint:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V
    .locals 0
    .param p1, "endpoint"    # Ljava/net/URI;
    .param p2, "credentialProvider"    # Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;
    .param p3, "conf"    # Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->endpoint:Ljava/net/URI;

    .line 38
    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    .line 39
    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    .line 40
    return-void
.end method

.method private buildCanonicalHost(Ljava/net/URI;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)Ljava/lang/String;
    .locals 8
    .param p1, "endpoint"    # Ljava/net/URI;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    .line 134
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "originHost":Ljava/lang/String;
    const/4 v1, 0x0

    .line 136
    .local v1, "portString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v3

    .line 139
    .local v3, "port":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 140
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 143
    :cond_0
    const/4 v4, 0x0

    .line 145
    .local v4, "isPathStyle":Z
    move-object v5, v0

    .line 146
    .local v5, "host":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 151
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isOssOriginHost(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getCustomCnameExcludeList()Ljava/util/List;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isInCustomCnameExcludeList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 155
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->isPathStyleAccessEnable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 156
    const/4 v4, 0x1

    goto :goto_0

    .line 158
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 162
    :cond_4
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isValidateIP(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_5

    .line 164
    const/4 v4, 0x1

    .line 168
    :cond_5
    goto :goto_0

    .line 166
    :catch_0
    move-exception v6

    .line 167
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_0
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->isCustomPathPrefixEnable()Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v2, :cond_7

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 176
    :cond_7
    if-eqz v4, :cond_8

    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 180
    :cond_8
    return-object v5
.end method


# virtual methods
.method public presignConstrainedURL(Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;)Ljava/lang/String;
    .locals 14
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "objectKey":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->getFixedSkewedTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getExpiration()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "expires":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v3

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    .line 49
    .local v3, "method":Lcom/alibaba/sdk/android/oss/common/HttpMethod;
    :goto_0
    new-instance v4, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    .line 50
    .local v4, "requestMessage":Lcom/alibaba/sdk/android/oss/internal/RequestMessage;
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->endpoint:Ljava/net/URI;

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    .line 51
    invoke-virtual {v4, v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    .line 52
    invoke-virtual {v4, v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v4, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Date"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 58
    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Content-Type"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getContentMD5()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getContentMD5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 61
    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Content-MD5"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getContentMD5()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getQueryParameter()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getQueryParameter()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 65
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getQueryParameter()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 66
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getProcess()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getProcess()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 71
    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v5

    const-string v6, "x-oss-process"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->getProcess()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_4
    const/4 v5, 0x0

    .line 76
    .local v5, "token":Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;
    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    instance-of v6, v6, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    if-eqz v6, :cond_6

    .line 77
    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    check-cast v6, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;->getValidFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    move-result-object v5

    .line 78
    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v6

    const-string v7, "security-token"

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getSecurityToken()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    if-eqz v5, :cond_5

    goto :goto_2

    .line 80
    :cond_5
    new-instance v6, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v7, "Can not get a federation token!"

    invoke-direct {v6, v7}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 82
    :cond_6
    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    instance-of v6, v6, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    if-eqz v6, :cond_7

    .line 83
    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    check-cast v6, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    move-result-object v5

    .line 84
    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v6

    const-string v7, "security-token"

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getSecurityToken()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_7
    :goto_2
    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->buildCanonicalString(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "contentToSign":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    instance-of v7, v7, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    instance-of v7, v7, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    if-eqz v7, :cond_8

    goto :goto_3

    .line 94
    :cond_8
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    instance-of v7, v7, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    if-eqz v7, :cond_9

    .line 95
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    check-cast v7, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->getAccessKeyId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    check-cast v8, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    .line 96
    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->getAccessKeySecret()Ljava/lang/String;

    move-result-object v8

    .line 95
    invoke-static {v7, v8, v6}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 97
    :cond_9
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    instance-of v7, v7, Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;

    if-eqz v7, :cond_a

    .line 98
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    check-cast v7, Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;

    invoke-virtual {v7, v6}, Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;->signContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 100
    :cond_a
    new-instance v7, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v8, "Unknown credentialProvider!"

    invoke-direct {v7, v8}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 93
    :cond_b
    :goto_3
    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getTempAK()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getTempSK()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 100
    .local v7, "signature":Ljava/lang/String;
    :goto_4
    nop

    .line 103
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, "accessKey":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v7, v9, v10

    .line 106
    iget-object v9, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->endpoint:Ljava/net/URI;

    iget-object v10, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {p0, v9, v0, v10}, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->buildCanonicalHost(Ljava/net/URI;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)Ljava/lang/String;

    move-result-object v9

    .line 108
    .local v9, "host":Ljava/lang/String;
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 109
    .local v10, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "Expires"

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v11, "OSSAccessKeyId"

    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v11, "Signature"

    invoke-interface {v10, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 113
    const-string v11, "utf-8"

    invoke-static {v10, v11}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->paramToQueryString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, "queryString":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->endpoint:Ljava/net/URI;

    invoke-virtual {v13}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "utf-8"

    invoke-static {v1, v13}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 118
    .local v12, "url":Ljava/lang/String;
    return-object v12
.end method

.method public presignConstrainedURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "expiredTimeInSeconds"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v0, "presignedUrlRequest":Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;
    invoke-virtual {v0, p3, p4}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->setExpiration(J)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->presignConstrainedURL(Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public presignPublicURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->endpoint:Ljava/net/URI;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->buildCanonicalHost(Ljava/net/URI;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "host":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->endpoint:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "utf-8"

    invoke-static {p2, v2}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
