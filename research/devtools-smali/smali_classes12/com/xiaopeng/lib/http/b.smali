.class public Lcom/xiaopeng/lib/http/b;
.super Ljava/lang/Object;
.source "HttpsUtils.java"


# static fields
.field private static sIsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/lib/http/b;->sIsInitialized:Z

    return-void
.end method

.method public static T(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 58
    invoke-static {p0}, Lcom/xiaopeng/lib/http/c/e;->T(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    return-object p0
.end method

.method private static U(Landroid/content/Context;)Lokhttp3/OkHttpClient;
    .locals 3

    .line 62
    new-instance v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;

    const-string v1, "HttpsUtils"

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->pj()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "userdebug"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->UX:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->UZ:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->a(Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;)V

    .line 67
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->a(Ljava/util/logging/Level;)V

    .line 69
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 70
    invoke-static {p0}, Lcom/xiaopeng/lib/http/c/e;->T(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {p0}, Lcom/xiaopeng/lib/http/c/e;->am(Landroid/content/Context;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 71
    invoke-static {}, Lcom/xiaopeng/lib/http/c/e;->getConnectionSpecs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    new-instance v1, Lokhttp3/ConnectionPool;

    invoke-direct {v1}, Lokhttp3/ConnectionPool;-><init>()V

    .line 72
    invoke-virtual {p0, v1}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 73
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    const-wide/16 v0, 0x1e

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 74
    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v0, Lcom/xiaopeng/lib/http/c/b;->Vi:Lcom/xiaopeng/lib/http/c/b;

    .line 75
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    .line 69
    return-object p0
.end method

.method public static a(Lcom/xiaopeng/lib/http/c/e$a;)V
    .locals 0
    .param p0    # Lcom/xiaopeng/lib/http/c/e$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 262
    invoke-static {p0}, Lcom/xiaopeng/lib/http/c/e;->a(Lcom/xiaopeng/lib/http/c/e$a;)V

    .line 263
    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Application;Z)Z
    .locals 3

    const-class v0, Lcom/xiaopeng/lib/http/b;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/http/b;->sIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 91
    monitor-exit v0

    return v2

    .line 94
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/xiaopeng/lib/security/b;->ap(Landroid/content/Context;)Z

    .line 95
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/xiaopeng/lib/http/Security;->es()Z

    move-result p1

    if-nez p1, :cond_1

    .line 96
    invoke-static {p0}, Lcom/xiaopeng/lib/http/Security;->init(Landroid/content/Context;)V

    .line 97
    invoke-static {}, Lcom/xiaopeng/lib/http/Security;->ob()Z

    move-result p1

    if-nez p1, :cond_1

    .line 98
    const-string p0, "HttpsUtils"

    const-string p1, "!Security.isInitSuccessWithoutIndiv, return false!"

    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-boolean p0, Lcom/xiaopeng/lib/http/b;->sIsInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    .line 103
    :cond_1
    :try_start_2
    const-class p1, Lcom/xiaopeng/system/delegate/module/a;

    new-instance v1, Lcom/xiaopeng/system/delegate/module/a;

    invoke-direct {v1, p0}, Lcom/xiaopeng/system/delegate/module/a;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 104
    invoke-static {p0}, Lcom/xiaopeng/lib/http/b;->c(Landroid/app/Application;)V

    .line 106
    invoke-static {p0}, Lcom/xiaopeng/lib/http/c/e;->am(Landroid/content/Context;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    if-nez p0, :cond_2

    .line 107
    const-string p0, "HttpsUtils"

    const-string p1, "KeyManager init fail, return false!"

    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-boolean p0, Lcom/xiaopeng/lib/http/b;->sIsInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return p0

    .line 111
    :cond_2
    :try_start_3
    sput-boolean v2, Lcom/xiaopeng/lib/http/b;->sIsInitialized:Z

    .line 112
    sget-boolean p0, Lcom/xiaopeng/lib/http/b;->sIsInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return p0

    .line 89
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static aj(Landroid/content/Context;)V
    .locals 2

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    const-string v1, "com.xiaopeng.action.CLIENT_SSL_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 140
    new-instance v1, Lcom/xiaopeng/lib/http/b$1;

    invoke-direct {v1}, Lcom/xiaopeng/lib/http/b$1;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    return-void
.end method

.method static synthetic ak(Landroid/content/Context;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/xiaopeng/lib/http/b;->U(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/app/Application;)V
    .locals 2

    .line 127
    const-string v0, "HttpsUtils"

    const-string v1, "start to initOkHttpClient!!!"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-static {p0}, Lcom/xiaopeng/lib/http/b;->aj(Landroid/content/Context;)V

    .line 129
    invoke-static {p0}, Lcom/xiaopeng/lib/http/b;->U(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 130
    invoke-static {}, Lcom/lzy/okgo/a;->cE()Lcom/lzy/okgo/a;

    move-result-object v1

    .line 131
    invoke-virtual {v1, p0}, Lcom/lzy/okgo/a;->b(Landroid/app/Application;)Lcom/lzy/okgo/a;

    move-result-object p0

    .line 132
    invoke-virtual {p0, v0}, Lcom/lzy/okgo/a;->a(Lokhttp3/OkHttpClient;)Lcom/lzy/okgo/a;

    .line 133
    const-string p0, "HttpsUtils"

    const-string v0, "finish initOkHttpClient!!!"

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/http/b;

    monitor-enter v0

    .line 242
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/http/Security;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit v0

    return-void

    .line 241
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
