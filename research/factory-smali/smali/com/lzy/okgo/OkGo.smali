.class public Lcom/lzy/okgo/OkGo;
.super Ljava/lang/Object;
.source "OkGo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/OkGo$OkGoHolder;
    }
.end annotation


# static fields
.field public static final DEFAULT_MILLISECONDS:J = 0xea60L

.field public static REFRESH_TIME:J


# instance fields
.field private context:Landroid/app/Application;

.field private mCacheMode:Lcom/lzy/okgo/cache/CacheMode;

.field private mCacheTime:J

.field private mCommonHeaders:Lcom/lzy/okgo/model/HttpHeaders;

.field private mCommonParams:Lcom/lzy/okgo/model/HttpParams;

.field private mDelivery:Landroid/os/Handler;

.field private mRetryCount:I

.field private okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/lzy/okgo/OkGo;->REFRESH_TIME:J

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lzy/okgo/OkGo;->mDelivery:Landroid/os/Handler;

    .line 70
    const/4 v0, 0x3

    iput v0, p0, Lcom/lzy/okgo/OkGo;->mRetryCount:I

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lzy/okgo/OkGo;->mCacheTime:J

    .line 72
    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    iput-object v0, p0, Lcom/lzy/okgo/OkGo;->mCacheMode:Lcom/lzy/okgo/cache/CacheMode;

    .line 74
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 75
    .local v0, "builder":Lokhttp3/OkHttpClient$Builder;
    new-instance v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;

    const-string v2, "OkGo"

    invoke-direct {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "loggingInterceptor":Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;
    sget-object v2, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->setPrintLevel(Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;)V

    .line 77
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->setColorLevel(Ljava/util/logging/Level;)V

    .line 78
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 80
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 81
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 82
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 84
    invoke-static {}, Lcom/lzy/okgo/https/HttpsUtils;->getSslSocketFactory()Lcom/lzy/okgo/https/HttpsUtils$SSLParams;

    move-result-object v2

    .line 85
    .local v2, "sslParams":Lcom/lzy/okgo/https/HttpsUtils$SSLParams;
    iget-object v3, v2, Lcom/lzy/okgo/https/HttpsUtils$SSLParams;->sSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v4, v2, Lcom/lzy/okgo/https/HttpsUtils$SSLParams;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v3, v4}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 86
    sget-object v3, Lcom/lzy/okgo/https/HttpsUtils;->UnSafeHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 87
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    iput-object v3, p0, Lcom/lzy/okgo/OkGo;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/lzy/okgo/OkGo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lzy/okgo/OkGo$1;

    .line 55
    invoke-direct {p0}, Lcom/lzy/okgo/OkGo;-><init>()V

    return-void
.end method

.method public static cancelAll(Lokhttp3/OkHttpClient;)V
    .locals 2
    .param p0, "client"    # Lokhttp3/OkHttpClient;

    .line 272
    if-nez p0, :cond_0

    return-void

    .line 273
    :cond_0
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 274
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 275
    .end local v1    # "call":Lokhttp3/Call;
    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 277
    .restart local v1    # "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 278
    .end local v1    # "call":Lokhttp3/Call;
    goto :goto_1

    .line 279
    :cond_2
    return-void
.end method

.method public static cancelTag(Lokhttp3/OkHttpClient;Ljava/lang/Object;)V
    .locals 3
    .param p0, "client"    # Lokhttp3/OkHttpClient;
    .param p1, "tag"    # Ljava/lang/Object;

    .line 247
    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 248
    :cond_0
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 249
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 252
    .end local v1    # "call":Lokhttp3/Call;
    :cond_1
    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 254
    .restart local v1    # "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 257
    .end local v1    # "call":Lokhttp3/Call;
    :cond_3
    goto :goto_1

    .line 258
    :cond_4
    return-void

    .line 247
    :cond_5
    :goto_2
    return-void
.end method

.method public static delete(Ljava/lang/String;)Lcom/lzy/okgo/request/DeleteRequest;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/DeleteRequest<",
            "TT;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/lzy/okgo/request/DeleteRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/DeleteRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/GetRequest<",
            "TT;>;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/lzy/okgo/request/GetRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/GetRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/lzy/okgo/OkGo;
    .locals 1

    .line 91
    invoke-static {}, Lcom/lzy/okgo/OkGo$OkGoHolder;->access$000()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    return-object v0
.end method

.method public static head(Ljava/lang/String;)Lcom/lzy/okgo/request/HeadRequest;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/HeadRequest<",
            "TT;>;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/lzy/okgo/request/HeadRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/HeadRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static options(Ljava/lang/String;)Lcom/lzy/okgo/request/OptionsRequest;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/OptionsRequest<",
            "TT;>;"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/lzy/okgo/request/OptionsRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/OptionsRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static patch(Ljava/lang/String;)Lcom/lzy/okgo/request/PatchRequest;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/PatchRequest<",
            "TT;>;"
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/lzy/okgo/request/PatchRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/PatchRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/PostRequest<",
            "TT;>;"
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/lzy/okgo/request/PostRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/PostRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/lang/String;)Lcom/lzy/okgo/request/PutRequest;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/PutRequest<",
            "TT;>;"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/lzy/okgo/request/PutRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/PutRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static trace(Ljava/lang/String;)Lcom/lzy/okgo/request/TraceRequest;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/TraceRequest<",
            "TT;>;"
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/lzy/okgo/request/TraceRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/TraceRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addCommonHeaders(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/OkGo;
    .locals 1
    .param p1, "commonHeaders"    # Lcom/lzy/okgo/model/HttpHeaders;

    .line 225
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lzy/okgo/model/HttpHeaders;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->put(Lcom/lzy/okgo/model/HttpHeaders;)V

    .line 227
    return-object p0
.end method

.method public addCommonParams(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/OkGo;
    .locals 1
    .param p1, "commonParams"    # Lcom/lzy/okgo/model/HttpParams;

    .line 213
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonParams:Lcom/lzy/okgo/model/HttpParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonParams:Lcom/lzy/okgo/model/HttpParams;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonParams:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpParams;->put(Lcom/lzy/okgo/model/HttpParams;)V

    .line 215
    return-object p0
.end method

.method public cancelAll()V
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 263
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 264
    .end local v1    # "call":Lokhttp3/Call;
    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 266
    .restart local v1    # "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 267
    .end local v1    # "call":Lokhttp3/Call;
    goto :goto_1

    .line 268
    :cond_1
    return-void
.end method

.method public cancelTag(Ljava/lang/Object;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/Object;

    .line 232
    if-nez p1, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 234
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 237
    .end local v1    # "call":Lokhttp3/Call;
    :cond_1
    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {p0}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 239
    .restart local v1    # "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 242
    .end local v1    # "call":Lokhttp3/Call;
    :cond_3
    goto :goto_1

    .line 243
    :cond_4
    return-void
.end method

.method public getCacheMode()Lcom/lzy/okgo/cache/CacheMode;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCacheMode:Lcom/lzy/okgo/cache/CacheMode;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/lzy/okgo/OkGo;->mCacheTime:J

    return-wide v0
.end method

.method public getCommonHeaders()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    return-object v0
.end method

.method public getCommonParams()Lcom/lzy/okgo/model/HttpParams;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonParams:Lcom/lzy/okgo/model/HttpParams;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->context:Landroid/app/Application;

    const-string v1, "please call OkGo.getInstance().init() first in application!"

    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->context:Landroid/app/Application;

    return-object v0
.end method

.method public getCookieJar()Lcom/lzy/okgo/cookie/CookieJarImpl;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/cookie/CookieJarImpl;

    return-object v0
.end method

.method public getDelivery()Landroid/os/Handler;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mDelivery:Landroid/os/Handler;

    return-object v0
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->okHttpClient:Lokhttp3/OkHttpClient;

    const-string v1, "please call OkGo.getInstance().setOkHttpClient() first in application!"

    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/lzy/okgo/OkGo;->mRetryCount:I

    return v0
.end method

.method public init(Landroid/app/Application;)Lcom/lzy/okgo/OkGo;
    .locals 0
    .param p1, "app"    # Landroid/app/Application;

    .line 140
    iput-object p1, p0, Lcom/lzy/okgo/OkGo;->context:Landroid/app/Application;

    .line 141
    return-object p0
.end method

.method public setCacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/OkGo;
    .locals 0
    .param p1, "cacheMode"    # Lcom/lzy/okgo/cache/CacheMode;

    .line 185
    iput-object p1, p0, Lcom/lzy/okgo/OkGo;->mCacheMode:Lcom/lzy/okgo/cache/CacheMode;

    .line 186
    return-object p0
.end method

.method public setCacheTime(J)Lcom/lzy/okgo/OkGo;
    .locals 2
    .param p1, "cacheTime"    # J

    .line 196
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, -0x1

    .line 197
    :cond_0
    iput-wide p1, p0, Lcom/lzy/okgo/OkGo;->mCacheTime:J

    .line 198
    return-object p0
.end method

.method public setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/lzy/okgo/OkGo;
    .locals 1
    .param p1, "okHttpClient"    # Lokhttp3/OkHttpClient;

    .line 161
    const-string v0, "okHttpClient == null"

    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    iput-object p1, p0, Lcom/lzy/okgo/OkGo;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 163
    return-object p0
.end method

.method public setRetryCount(I)Lcom/lzy/okgo/OkGo;
    .locals 2
    .param p1, "retryCount"    # I

    .line 173
    if-ltz p1, :cond_0

    .line 174
    iput p1, p0, Lcom/lzy/okgo/OkGo;->mRetryCount:I

    .line 175
    return-object p0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "retryCount must > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
