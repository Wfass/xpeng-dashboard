.class public final Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;
.super Ljava/lang/Object;
.source "TokenRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$GetTokenCallback;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$Holder;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;
    }
.end annotation


# static fields
.field private static final BLOCKING_TIME_INTERVAL:J = 0x36ee80L

.field private static final EMPTY_BODY:Ljava/lang/String; = "{}"

.field private static final RESPONSE_NO_CERTIFICATE:J = 0xa7de9eL

.field private static final TAG:Ljava/lang/String; = "NetChannel-TokenRetriever"


# instance fields
.field private mBlockingTime:J

.field private final mCallbacks:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;

.field private volatile mRetrieving:Z

.field private volatile mToken:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->mToken:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    .line 59
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->mCallbacks:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->mBlockingTime:J

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$1;

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;
    .param p1, "x1"    # Z

    .line 29
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->mRetrieving:Z

    return p1
.end method

.method static synthetic access$302(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;J)J
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;
    .param p1, "x1"    # J

    .line 29
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->mBlockingTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;
    .param p1, "x1"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->callFailureCallbacks(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->mToken:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    return-object v0
.end method

.method static synthetic access$502(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;
    .param p1, "x1"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->mToken:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    return-object p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;
    .param p1, "x1"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->callSuccessCallbacks(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->mCallbacks:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;

    return-object v0
.end method

.method private callFailureCallbacks(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V
    .locals 1
    .param p1, "exception"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;

    .line 178
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$2;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method private callSuccessCallbacks(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
    .locals 1
    .param p1, "token"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    .line 169
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;
    .locals 1

    .line 64
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    return-object v0
.end method

.method private getNewTokenFromServer(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 95
    .local v0, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->TOKEN_URL_V5:Ljava/lang/String;

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    .line 96
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$GetTokenCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$GetTokenCallback;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$1;)V

    .line 97
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 98
    return-void
.end method


# virtual methods
.method public clearToken()V
    .locals 2

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->mToken:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    .line 89
    const-string v0, "NetChannel-TokenRetriever"

    const-string v1, "Clear the existing token!"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public getTokenWithCallback(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;

    .line 68
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->mBlockingTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->mBlockingTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 69
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v1, 0x301

    const-wide/32 v2, 0xa7de9e

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;->onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 70
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->mToken:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->mToken:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->stillFresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->mToken:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;->onSuccess(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->mCallbacks:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;->add(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;)V

    .line 77
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->mRetrieving:Z

    if-nez v0, :cond_2

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->mRetrieving:Z

    .line 79
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->getNewTokenFromServer(Landroid/content/Context;)V

    .line 82
    :cond_2
    :goto_0
    return-void
.end method
