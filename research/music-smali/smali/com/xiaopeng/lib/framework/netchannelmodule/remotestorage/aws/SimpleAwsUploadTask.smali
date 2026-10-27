.class public Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;
.source "SimpleAwsUploadTask.java"


# static fields
.field private static final BUFFER_SIZE:J = 0x400L

.field private static final KEY_CALLBACK_BODY:Ljava/lang/String; = "callbackBody"

.field private static final KEY_CALLBACK_URL:Ljava/lang/String; = "callbackUrl"

.field private static final PRE_SIGN_URL:Ljava/lang/String; = "https://fra-callback-api.xiaopeng.com/xmartFileData"

.field private static final TAG:Ljava/lang/String; = "NetChannel-SimpleAwsUploadTask"

.field private static final XMART_OSSFILE_URL:Ljava/lang/String; = "https://fra-bd-callback.xiaopeng.com/oss/xmartData/xmartOssFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private UpdateUploadInfo(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->mCallbackParams:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->mCallbackParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->mCallbackParams:Ljava/util/Map;

    const-string v1, "callbackBody"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->mCallbackParams:Ljava/util/Map;

    const-string v2, "callbackUrl"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "https://fra-bd-callback.xiaopeng.com/oss/xmartData/xmartOssFile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 85
    :cond_2
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->mCallbackParams:Ljava/util/Map;

    .line 86
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;

    .line 87
    iget-object v1, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->model:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 88
    iget-object v1, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->app_id:Ljava/lang/String;

    iput-object v1, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->app_id:Ljava/lang/String;

    .line 90
    :cond_3
    iget-object v1, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->model:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 91
    iget-object v1, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->model:Ljava/lang/String;

    iput-object v1, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->model:Ljava/lang/String;

    .line 93
    :cond_4
    iget-object v1, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 94
    iget-object v1, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->type:Ljava/lang/String;

    iput-object v1, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->type:Ljava/lang/String;

    .line 96
    :cond_5
    iget-object v1, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 97
    iget-object v0, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->v:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->v:Ljava/lang/String;

    .line 99
    :cond_6
    iget-object v0, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->file:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->file:Ljava/lang/String;

    const-string v1, "fra-xp-log/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 100
    iget-object v0, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->file:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->file:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NetChannel-SimpleAwsUploadTask"

    .line 103
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->executeUploadTask(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->upload2AwsByNormal(Ljava/lang/String;)V

    return-void
.end method

.method private createSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "type"

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "81"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "v"

    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "2"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XP-Appid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "B638C588DCAD7C1A43E6FB"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/EncryptUtil;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private executeUploadTask(Ljava/lang/String;)V
    .locals 1

    .line 175
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$2;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendByIHttp(Lcom/google/gson/JsonObject;)V
    .locals 2

    .line 124
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 125
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "https://fra-callback-api.xiaopeng.com/xmartFileData"

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p1

    .line 126
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;)V

    .line 127
    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    return-void
.end method

.method private upload2AwsByNormal(Ljava/lang/String;)V
    .locals 2

    .line 187
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "application/octet-stream"

    .line 188
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 189
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->createProgressRequestBody(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 190
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 191
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 192
    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 194
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->createAwsUploadClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 196
    :try_start_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 197
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->doSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NetChannel-SimpleAwsUploadTask"

    const-string v1, "upload error!"

    .line 199
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v1, 0x401

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    :goto_0
    return-void
.end method

.method private wrapBody()Lcom/google/gson/JsonObject;
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->mRemoteObjectKey:Ljava/lang/String;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->createSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    new-instance v3, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;

    invoke-direct {v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->file(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->timestamp(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->sign(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;

    move-result-object v0

    .line 66
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->UpdateUploadInfo(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;)V

    .line 67
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->wrapJsonBody(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;)Lcom/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method private wrapJsonBody(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;)Lcom/google/gson/JsonObject;
    .locals 3

    .line 108
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 109
    iget-object v1, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->app_id:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v1, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->file:Ljava/lang/String;

    const-string v2, "file"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->model:Ljava/lang/String;

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->type:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->v:Ljava/lang/String;

    const-string v2, "v"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p1, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->sign:Ljava/lang/String;

    const-string v1, "sign"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->mCallbackParams:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 117
    new-instance p1, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->mCallbackParams:Ljava/util/Map;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 118
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "call_back"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;
    .locals 2

    .line 165
    invoke-super {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    .line 166
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->mLocalFileSize:J

    return-object p0

    .line 168
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v1, 0x201

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    throw v0
.end method

.method public createProgressRequestBody(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;
    .locals 1

    .line 205
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$3;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;Lokhttp3/MediaType;Ljava/io/File;)V

    return-object v0
.end method

.method public performRealTask()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->wrapBody()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->sendByIHttp(Lcom/google/gson/JsonObject;)V

    return-void
.end method
