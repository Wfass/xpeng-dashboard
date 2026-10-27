.class public Lcom/lzy/okgo/a;
.super Ljava/lang/Object;
.source "OkGo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/a$a;
    }
.end annotation


# static fields
.field public static lj:J


# instance fields
.field private lk:Landroid/app/Application;

.field private ll:Landroid/os/Handler;

.field private lm:Lcom/lzy/okgo/model/HttpParams;

.field private ln:Lcom/lzy/okgo/model/HttpHeaders;

.field private lo:Lcom/lzy/okgo/cache/CacheMode;

.field private lp:J

.field private mRetryCount:I

.field private okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/lzy/okgo/a;->lj:J

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lzy/okgo/a;->ll:Landroid/os/Handler;

    .line 70
    const/4 v0, 0x3

    iput v0, p0, Lcom/lzy/okgo/a;->mRetryCount:I

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lzy/okgo/a;->lp:J

    .line 72
    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->lu:Lcom/lzy/okgo/cache/CacheMode;

    iput-object v0, p0, Lcom/lzy/okgo/a;->lo:Lcom/lzy/okgo/cache/CacheMode;

    .line 74
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 75
    new-instance v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;

    const-string v2, "OkGo"

    invoke-direct {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    .line 76
    sget-object v2, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->mj:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->a(Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;)V

    .line 77
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->a(Ljava/util/logging/Level;)V

    .line 78
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 80
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 81
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 82
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 84
    invoke-static {}, Lcom/lzy/okgo/e/a;->cZ()Lcom/lzy/okgo/e/a$a;

    move-result-object v1

    .line 85
    iget-object v2, v1, Lcom/lzy/okgo/e/a$a;->md:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, v1, Lcom/lzy/okgo/e/a$a;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v2, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 86
    sget-object v1, Lcom/lzy/okgo/e/a;->mc:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 87
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/a;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/lzy/okgo/a$1;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/lzy/okgo/a;-><init>()V

    return-void
.end method

.method public static cE()Lcom/lzy/okgo/a;
    .locals 1

    .line 91
    invoke-static {}, Lcom/lzy/okgo/a$a;->cL()Lcom/lzy/okgo/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lokhttp3/OkHttpClient;)Lcom/lzy/okgo/a;
    .locals 1

    .line 161
    const-string v0, "okHttpClient == null"

    invoke-static {p1, v0}, Lcom/lzy/okgo/f/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    iput-object p1, p0, Lcom/lzy/okgo/a;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 163
    return-object p0
.end method

.method public b(Landroid/app/Application;)Lcom/lzy/okgo/a;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/lzy/okgo/a;->lk:Landroid/app/Application;

    .line 141
    return-object p0
.end method

.method public bF(I)Lcom/lzy/okgo/a;
    .locals 1

    .line 173
    if-ltz p1, :cond_0

    .line 174
    iput p1, p0, Lcom/lzy/okgo/a;->mRetryCount:I

    .line 175
    return-object p0

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "retryCount must > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cF()Landroid/os/Handler;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/lzy/okgo/a;->ll:Landroid/os/Handler;

    return-object v0
.end method

.method public cG()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/lzy/okgo/a;->mRetryCount:I

    return v0
.end method

.method public cH()Lcom/lzy/okgo/cache/CacheMode;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/lzy/okgo/a;->lo:Lcom/lzy/okgo/cache/CacheMode;

    return-object v0
.end method

.method public cI()J
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/lzy/okgo/a;->lp:J

    return-wide v0
.end method

.method public cJ()Lcom/lzy/okgo/model/HttpParams;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/lzy/okgo/a;->lm:Lcom/lzy/okgo/model/HttpParams;

    return-object v0
.end method

.method public cK()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/lzy/okgo/a;->ln:Lcom/lzy/okgo/model/HttpHeaders;

    return-object v0
.end method

.method public cancelTag(Ljava/lang/Object;)V
    .locals 3

    .line 232
    if-nez p1, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okgo/a;->getOkHttpClient()Lokhttp3/OkHttpClient;

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
    :cond_1
    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {p0}, Lcom/lzy/okgo/a;->getOkHttpClient()Lokhttp3/OkHttpClient;

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
    :cond_3
    goto :goto_1

    .line 243
    :cond_4
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/lzy/okgo/a;->lk:Landroid/app/Application;

    const-string v1, "please call OkGo.getInstance().init() first in application!"

    invoke-static {v0, v1}, Lcom/lzy/okgo/f/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/lzy/okgo/a;->lk:Landroid/app/Application;

    return-object v0
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/lzy/okgo/a;->okHttpClient:Lokhttp3/OkHttpClient;

    const-string v1, "please call OkGo.getInstance().setOkHttpClient() first in application!"

    invoke-static {v0, v1}, Lcom/lzy/okgo/f/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/lzy/okgo/a;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method
