.class public final Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;
.super Ljava/lang/Object;
.source "SecureTokenRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$CallbackList;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$GetTokenCallback;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$Holder;
    }
.end annotation


# static fields
.field private static final BLOCKING_TIME_INTERVAL:J = 0x36ee80L

.field private static final RESPONSE_NO_CERTIFICATE:J = 0xa7de9eL

.field private static final TAG:Ljava/lang/String; = "NetChannel-SecureTokenRetriever"

.field private static final VALID_TIME_INTERVAL:J = 0x36ee80L


# instance fields
.field private mBlockingTime:J

.field private final mCallbacks:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$CallbackList;

.field private volatile mRetrieving:Z

.field private volatile mToken:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

.field private final mTokenRequestBody:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mTokenRequestBody:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mToken:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    .line 46
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$CallbackList;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$CallbackList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mCallbacks:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$CallbackList;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mBlockingTime:J

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$1;

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;
    .param p1, "x1"    # Z

    .line 30
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mRetrieving:Z

    return p1
.end method

.method static synthetic access$302(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;J)J
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;
    .param p1, "x1"    # J

    .line 30
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mBlockingTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;
    .param p1, "x1"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->callFailureCallbacks(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mToken:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    return-object v0
.end method

.method static synthetic access$502(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;
    .param p1, "x1"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mToken:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    return-object p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->convertUtcDate2ValidTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;
    .param p1, "x1"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->callSuccessCallbacks(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$CallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mCallbacks:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$CallbackList;

    return-object v0
.end method

.method private callFailureCallbacks(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V
    .locals 1
    .param p1, "exception"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;

    .line 177
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$2;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method

.method private callSuccessCallbacks(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
    .locals 1
    .param p1, "token"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    .line 168
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method private convertUtcDate2ValidTime(Ljava/lang/String;)J
    .locals 8
    .param p1, "dateStr"    # Ljava/lang/String;

    .line 152
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 154
    .local v0, "pattern":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 157
    const-wide/16 v2, 0x0

    .line 159
    .local v2, "validTime":J
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v6, 0x36ee80

    sub-long v2, v4, v6

    .line 162
    goto :goto_0

    .line 160
    :catch_0
    move-exception v4

    .line 161
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "NetChannel-SecureTokenRetriever"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertUtcDate error! the error message---->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    return-wide v2
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;
    .locals 1

    .line 51
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    return-object v0
.end method

.method private getNewTokenFromServer(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;)V
    .locals 4
    .param p1, "policyType"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mTokenRequestBody:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;

    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;->setAppId(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mTokenRequestBody:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;->setPolicyType(Ljava/lang/String;)V

    .line 75
    const-string v0, "NetChannel-SecureTokenRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request token from server, the request body---->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mTokenRequestBody:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;

    invoke-virtual {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 78
    .local v0, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->SECURE_TOKEN_URL_V5:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mTokenRequestBody:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;

    invoke-virtual {v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    .line 79
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$GetTokenCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$GetTokenCallback;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$1;)V

    .line 80
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 81
    return-void
.end method


# virtual methods
.method public getTokenWithCallback(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;)V
    .locals 4
    .param p1, "policyType"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;
    .param p2, "callback"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;

    .line 56
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mBlockingTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mBlockingTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 57
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v1, 0x301

    const-wide/32 v2, 0xa7de9e

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;->onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 58
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mToken:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mToken:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->stillFresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mToken:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    invoke-interface {p2, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;->onSuccess(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mCallbacks:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$CallbackList;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$CallbackList;->add(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;)V

    .line 65
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mRetrieving:Z

    if-nez v0, :cond_2

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->mRetrieving:Z

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->getNewTokenFromServer(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;)V

    .line 70
    :cond_2
    :goto_0
    return-void
.end method
