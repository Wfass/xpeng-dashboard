.class Lcom/alibaba/sdk/android/oss/OSSImpl;
.super Ljava/lang/Object;
.source "OSSImpl.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/OSS;


# instance fields
.field private conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

.field private credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

.field private endpointURI:Ljava/net/URI;

.field private extensionRequestOperation:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

.field private internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "credentialProvider"    # Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;
    .param p3, "conf"    # Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    .line 153
    if-nez p3, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getDefaultConf()Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    .line 154
    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v0, v1, p2, v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;-><init>(Landroid/content/Context;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    .line 155
    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->extensionRequestOperation:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "endpoint"    # Ljava/lang/String;
    .param p3, "credentialProvider"    # Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;
    .param p4, "conf"    # Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->init(Landroid/content/Context;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    .line 120
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object p2, v0

    .line 121
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p2, v0

    .line 124
    :cond_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->endpointURI:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    nop

    .line 129
    if-eqz p3, :cond_4

    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 135
    .local v0, "hostIsIP":Ljava/lang/Boolean;
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->endpointURI:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isValidateIP(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 138
    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->endpointURI:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 141
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "endpoint should not be format with https://ip."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_2
    :goto_1
    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    .line 145
    if-nez p4, :cond_3

    invoke-static {}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getDefaultConf()Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, p4

    :goto_2
    iput-object v1, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    .line 147
    new-instance v1, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->endpointURI:Ljava/net/URI;

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v1, v2, v3, p3, v4}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;-><init>(Landroid/content/Context;Ljava/net/URI;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    iput-object v1, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    .line 148
    new-instance v1, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-direct {v1, v2}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;)V

    iput-object v1, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->extensionRequestOperation:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    .line 149
    return-void

    .line 130
    .end local v0    # "hostIsIP":Ljava/lang/Boolean;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CredentialProvider can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Endpoint must be a string like \'http://oss-cn-****.aliyuncs.com\',or your cname like \'http://image.cnamedomain.com\'!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;

    return-object v0
.end method

.method public abortResumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->extensionRequestOperation:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->abortResumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;)V

    .line 577
    return-void
.end method

.method public appendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;)Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->syncAppendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;)Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public asyncAbortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;",
            ">;"
        }
    .end annotation

    .line 463
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncAppendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;",
            ">;"
        }
    .end annotation

    .line 372
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->appendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncCompleteMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;"
        }
    .end annotation

    .line 450
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->completeMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncCopyObject(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;",
            ">;"
        }
    .end annotation

    .line 397
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->copyObject(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncCreateBucket(Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;",
            ">;"
        }
    .end annotation

    .line 174
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->createBucket(Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncDeleteBucket(Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;",
            ">;"
        }
    .end annotation

    .line 188
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->deleteBucket(Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncDeleteBucketLifecycle(Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleResult;",
            ">;"
        }
    .end annotation

    .line 299
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->deleteBucketLifecycle(Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncDeleteBucketLogging(Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingResult;",
            ">;"
        }
    .end annotation

    .line 249
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingRequest;Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->deleteBucketLogging(Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncDeleteMultipleObject(Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;",
            ">;"
        }
    .end annotation

    .line 359
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->deleteMultipleObject(Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncDeleteObject(Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;",
            ">;"
        }
    .end annotation

    .line 345
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->deleteObject(Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncGetBucketACL(Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;",
            ">;"
        }
    .end annotation

    .line 212
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getBucketACL(Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncGetBucketInfo(Lcom/alibaba/sdk/android/oss/model/GetBucketInfoRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GetBucketInfoRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketInfoRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketInfoRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;",
            ">;"
        }
    .end annotation

    .line 200
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/GetBucketInfoRequest;Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getBucketInfo(Lcom/alibaba/sdk/android/oss/model/GetBucketInfoRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncGetBucketLifecycle(Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;",
            ">;"
        }
    .end annotation

    .line 289
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleRequest;Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getBucketLifecycle(Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncGetBucketLogging(Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;",
            ">;"
        }
    .end annotation

    .line 269
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingRequest;Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getBucketLogging(Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncGetBucketReferer(Lcom/alibaba/sdk/android/oss/model/GetBucketRefererRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GetBucketRefererRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketRefererRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketRefererRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;",
            ">;"
        }
    .end annotation

    .line 239
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/GetBucketRefererRequest;Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getBucketReferer(Lcom/alibaba/sdk/android/oss/model/GetBucketRefererRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncGetObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
            ">;"
        }
    .end annotation

    .line 318
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncGetObjectACL(Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;",
            ">;"
        }
    .end annotation

    .line 331
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getObjectACL(Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncGetSymlink(Lcom/alibaba/sdk/android/oss/model/GetSymlinkRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GetSymlinkRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetSymlinkRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetSymlinkRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetSymlinkResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetSymlinkResult;",
            ">;"
        }
    .end annotation

    .line 616
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/GetSymlinkRequest;Lcom/alibaba/sdk/android/oss/model/GetSymlinkResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getSymlink(Lcom/alibaba/sdk/android/oss/model/GetSymlinkRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncHeadObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
            ">;"
        }
    .end annotation

    .line 384
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->headObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncImagePersist(Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ImagePersistResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ImagePersistResult;",
            ">;"
        }
    .end annotation

    .line 591
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;Lcom/alibaba/sdk/android/oss/model/ImagePersistResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->imageActionPersist(Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncInitMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;",
            ">;"
        }
    .end annotation

    .line 424
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncListBuckets(Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;",
            ">;"
        }
    .end annotation

    .line 161
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listBuckets(Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncListMultipartUploads(Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;",
            ">;"
        }
    .end annotation

    .line 488
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listMultipartUploads(Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncListObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;",
            ">;"
        }
    .end annotation

    .line 411
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncListParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsResult;",
            ">;"
        }
    .end annotation

    .line 476
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/model/ListPartsResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncMultipartUpload(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;"
        }
    .end annotation

    .line 506
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->extensionRequestOperation:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->multipartUpload(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncPutBucketLifecycle(Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleRequest;",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleResult;",
            ">;"
        }
    .end annotation

    .line 279
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleRequest;Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->putBucketLifecycle(Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncPutBucketLogging(Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingRequest;",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingResult;",
            ">;"
        }
    .end annotation

    .line 259
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingRequest;Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->putBucketLogging(Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncPutBucketReferer(Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketRefererResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketRefererResult;",
            ">;"
        }
    .end annotation

    .line 224
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;Lcom/alibaba/sdk/android/oss/model/PutBucketRefererResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->putBucketReferer(Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncPutObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
            ">;"
        }
    .end annotation

    .line 305
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/model/PutObjectResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->putObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncPutSymlink(Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;",
            "Lcom/alibaba/sdk/android/oss/model/PutSymlinkResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/PutSymlinkResult;",
            ">;"
        }
    .end annotation

    .line 606
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;Lcom/alibaba/sdk/android/oss/model/PutSymlinkResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->putSymlink(Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncRestoreObject(Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/RestoreObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/RestoreObjectResult;",
            ">;"
        }
    .end annotation

    .line 626
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;Lcom/alibaba/sdk/android/oss/model/RestoreObjectResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->restoreObject(Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncResumableDownload(Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ResumableDownloadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableDownloadResult;",
            ">;"
        }
    .end annotation

    .line 631
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;Lcom/alibaba/sdk/android/oss/model/ResumableDownloadResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->extensionRequestOperation:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->resumableDownload(Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncResumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;"
        }
    .end annotation

    .line 520
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->extensionRequestOperation:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->resumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncSequenceUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;"
        }
    .end annotation

    .line 534
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->extensionRequestOperation:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->sequenceUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncTriggerCallback(Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;",
            "Lcom/alibaba/sdk/android/oss/model/TriggerCallbackResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/TriggerCallbackResult;",
            ">;"
        }
    .end annotation

    .line 581
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;Lcom/alibaba/sdk/android/oss/model/TriggerCallbackResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->triggerCallback(Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public asyncUploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartResult;",
            ">;"
        }
    .end annotation

    .line 437
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;Lcom/alibaba/sdk/android/oss/model/UploadPartResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->uploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public completeMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->syncCompleteMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object v0

    return-object v0
.end method

.method public copyObject(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;)Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->copyObject(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;

    return-object v0
.end method

.method public createBucket(Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;)Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->createBucket(Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;

    return-object v0
.end method

.method public deleteBucket(Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;)Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->deleteBucket(Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;

    return-object v0
.end method

.method public deleteBucketLifecycle(Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;)Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->deleteBucketLifecycle(Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleResult;

    return-object v0
.end method

.method public deleteBucketLogging(Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingRequest;)Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->deleteBucketLogging(Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingResult;

    return-object v0
.end method

.method public deleteMultipleObject(Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;)Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->deleteMultipleObject(Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;

    return-object v0
.end method

.method public deleteObject(Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;)Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->deleteObject(Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;

    return-object v0
.end method

.method public doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->extensionRequestOperation:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBucketACL(Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;)Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getBucketACL(Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;

    return-object v0
.end method

.method public getBucketInfo(Lcom/alibaba/sdk/android/oss/model/GetBucketInfoRequest;)Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GetBucketInfoRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getBucketInfo(Lcom/alibaba/sdk/android/oss/model/GetBucketInfoRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;

    return-object v0
.end method

.method public getBucketLifecycle(Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleRequest;)Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getBucketLifecycle(Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;

    return-object v0
.end method

.method public getBucketLogging(Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingRequest;)Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getBucketLogging(Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;

    return-object v0
.end method

.method public getBucketReferer(Lcom/alibaba/sdk/android/oss/model/GetBucketRefererRequest;)Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GetBucketRefererRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getBucketReferer(Lcom/alibaba/sdk/android/oss/model/GetBucketRefererRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;

    return-object v0
.end method

.method public getObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;)Lcom/alibaba/sdk/android/oss/model/GetObjectResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    return-object v0
.end method

.method public getObjectACL(Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;)Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getObjectACL(Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;

    return-object v0
.end method

.method public getSymlink(Lcom/alibaba/sdk/android/oss/model/GetSymlinkRequest;)Lcom/alibaba/sdk/android/oss/model/GetSymlinkResult;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GetSymlinkRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->syncGetSymlink(Lcom/alibaba/sdk/android/oss/model/GetSymlinkRequest;)Lcom/alibaba/sdk/android/oss/model/GetSymlinkResult;

    move-result-object v0

    return-object v0
.end method

.method public headObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;)Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->headObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;

    return-object v0
.end method

.method public imagePersist(Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;)Lcom/alibaba/sdk/android/oss/model/ImagePersistResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->imageActionPersist(Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ImagePersistResult;

    return-object v0
.end method

.method public initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;

    return-object v0
.end method

.method public listBuckets(Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;)Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listBuckets(Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;

    return-object v0
.end method

.method public listMultipartUploads(Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;)Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listMultipartUploads(Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;

    return-object v0
.end method

.method public listObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;)Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;

    return-object v0
.end method

.method public listParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;)Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;

    return-object v0
.end method

.method public multipartUpload(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->extensionRequestOperation:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->multipartUpload(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    return-object v0
.end method

.method public presignConstrainedObjectURL(Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;)Ljava/lang/String;
    .locals 4
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    .line 547
    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->endpointURI:Ljava/net/URI;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;-><init>(Ljava/net/URI;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    .line 548
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->presignConstrainedURL(Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;)Ljava/lang/String;

    move-result-object v0

    .line 547
    return-object v0
.end method

.method public presignConstrainedObjectURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "expiredTimeInSeconds"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    .line 555
    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->endpointURI:Ljava/net/URI;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;-><init>(Ljava/net/URI;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    .line 556
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->presignConstrainedURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 555
    return-object v0
.end method

.method public presignPublicObjectURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;

    .line 562
    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->endpointURI:Ljava/net/URI;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;-><init>(Ljava/net/URI;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    .line 563
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->presignPublicURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    return-object v0
.end method

.method public putBucketLifecycle(Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleRequest;)Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->putBucketLifecycle(Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleResult;

    return-object v0
.end method

.method public putBucketLogging(Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingRequest;)Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->putBucketLogging(Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingResult;

    return-object v0
.end method

.method public putBucketReferer(Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;)Lcom/alibaba/sdk/android/oss/model/PutBucketRefererResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->putBucketReferer(Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/PutBucketRefererResult;

    return-object v0
.end method

.method public putObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;)Lcom/alibaba/sdk/android/oss/model/PutObjectResult;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->syncPutObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;)Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public putSymlink(Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;)Lcom/alibaba/sdk/android/oss/model/PutSymlinkResult;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->syncPutSymlink(Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;)Lcom/alibaba/sdk/android/oss/model/PutSymlinkResult;

    move-result-object v0

    return-object v0
.end method

.method public restoreObject(Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;)Lcom/alibaba/sdk/android/oss/model/RestoreObjectResult;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->syncRestoreObject(Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;)Lcom/alibaba/sdk/android/oss/model/RestoreObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public resumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;)Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->extensionRequestOperation:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->resumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    return-object v0
.end method

.method public sequenceUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;)Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->extensionRequestOperation:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->sequenceUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    return-object v0
.end method

.method public syncResumableDownload(Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;)Lcom/alibaba/sdk/android/oss/model/ResumableDownloadResult;
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->extensionRequestOperation:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->resumableDownload(Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadResult;

    return-object v0
.end method

.method public triggerCallback(Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;)Lcom/alibaba/sdk/android/oss/model/TriggerCallbackResult;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->asyncTriggerCallback(Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;)Lcom/alibaba/sdk/android/oss/model/TriggerCallbackResult;

    move-result-object v0

    return-object v0
.end method

.method public updateCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V
    .locals 1
    .param p1, "credentialProvider"    # Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    .line 498
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    .line 499
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->setCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    .line 500
    return-void
.end method

.method public uploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;)Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSImpl;->internalRequestOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->syncUploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;)Lcom/alibaba/sdk/android/oss/model/UploadPartResult;

    move-result-object v0

    return-object v0
.end method
