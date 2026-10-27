.class public Lcom/xiaopeng/lib/http/HttpsUtils;
.super Ljava/lang/Object;
.source "HttpsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/http/HttpsUtils$ISSLSocketFactoryWrapper;
    }
.end annotation


# static fields
.field private static final ACTION_BROADCAST_CLIENT_SSL_UPDATE:Ljava/lang/String; = "com.xiaopeng.action.CLIENT_SSL_UPDATE"

.field private static final TAG:Ljava/lang/String; = "HttpsUtils"

.field private static sIsInitialized:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/xiaopeng/lib/http/HttpsUtils;->buildOkHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static buildBody(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 170
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "sData"

    .line 171
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/lib/http/Security;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 175
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static buildBodyWithAllToken(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 206
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "sData"

    .line 207
    sget-object v2, Lcom/xiaopeng/lib/http/Security;->TOKEN_ALL:[Ljava/lang/String;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaopeng/lib/http/Security;->buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 211
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static buildBodyWithToken(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 188
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "sData"

    .line 189
    sget-object v2, Lcom/xiaopeng/lib/http/Security;->TOKEN_AC:[Ljava/lang/String;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaopeng/lib/http/Security;->buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 193
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static buildOkHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;

    const-string v1, "HttpsUtils"

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isEngVersion()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "userdebug"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->BASIC:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->BODY:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->setPrintLevel(Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;)V

    .line 69
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->setColorLevel(Ljava/util/logging/Level;)V

    .line 71
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 72
    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/SSLHelper;->getTLS2SocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/SSLHelper;->getX509TrustManager(Landroid/content/Context;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 73
    invoke-static {}, Lcom/xiaopeng/lib/http/tls/SSLHelper;->getConnectionSpecs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    new-instance v1, Lokhttp3/ConnectionPool;

    invoke-direct {v1}, Lokhttp3/ConnectionPool;-><init>()V

    .line 74
    invoke-virtual {p0, v1}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 75
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    const-wide/16 v0, 0x1e

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 76
    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v0, Lcom/xiaopeng/lib/http/tls/HostNameVerifier;->INSTANCE:Lcom/xiaopeng/lib/http/tls/HostNameVerifier;

    .line 77
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static decodeBody(Lcom/xiaopeng/lib/http/server/ServerBean;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    const-string v0, "HttpsUtils"

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/xiaopeng/lib/http/server/ServerBean;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/xiaopeng/lib/http/server/ServerBean;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "sData"

    .line 230
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 231
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "sData is null"

    .line 232
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 235
    :cond_1
    invoke-static {p0}, Lcom/xiaopeng/lib/http/Security;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 237
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1

    :cond_2
    :goto_0
    const-string p0, "decodeBody bean is null"

    .line 224
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/http/HttpsUtils;

    monitor-enter v0

    .line 244
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/http/Security;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getOkhttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 159
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static getTLS2SocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 60
    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/SSLHelper;->getTLS2SocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized init(Landroid/app/Application;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "application",
            "needSecurity"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/lib/http/HttpsUtils;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/http/HttpsUtils;->sIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 93
    monitor-exit v0

    return v2

    .line 96
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/xiaopeng/lib/security/SecurityCommon;->checkSystemUid(Landroid/content/Context;)Z

    if-eqz p1, :cond_1

    .line 97
    invoke-static {}, Lcom/xiaopeng/lib/http/Security;->isInitSuccess()Z

    move-result p1

    if-nez p1, :cond_1

    .line 98
    invoke-static {p0}, Lcom/xiaopeng/lib/http/Security;->init(Landroid/content/Context;)V

    .line 99
    invoke-static {}, Lcom/xiaopeng/lib/http/Security;->isInitSuccessWithoutIndiv()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "HttpsUtils"

    const-string p1, "!Security.isInitSuccessWithoutIndiv, return false!"

    .line 100
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-boolean p0, Lcom/xiaopeng/lib/http/HttpsUtils;->sIsInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    .line 105
    :cond_1
    :try_start_2
    const-class p1, Lcom/xiaopeng/system/delegate/module/SystemDelegateModuleEntry;

    new-instance v1, Lcom/xiaopeng/system/delegate/module/SystemDelegateModuleEntry;

    invoke-direct {v1, p0}, Lcom/xiaopeng/system/delegate/module/SystemDelegateModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 106
    invoke-static {p0}, Lcom/xiaopeng/lib/http/HttpsUtils;->initOkHttpClient(Landroid/app/Application;)V

    .line 108
    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/SSLHelper;->getX509TrustManager(Landroid/content/Context;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "HttpsUtils"

    const-string p1, "KeyManager init fail, return false!"

    .line 109
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-boolean p0, Lcom/xiaopeng/lib/http/HttpsUtils;->sIsInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return p0

    .line 113
    :cond_2
    :try_start_3
    sput-boolean v2, Lcom/xiaopeng/lib/http/HttpsUtils;->sIsInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static initOkHttpClient(Landroid/app/Application;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "application"
        }
    .end annotation

    const-string v0, "HttpsUtils"

    const-string v1, "start to initOkHttpClient!!!"

    .line 129
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-static {p0}, Lcom/xiaopeng/lib/http/HttpsUtils;->registerBroadcast(Landroid/content/Context;)V

    .line 131
    invoke-static {p0}, Lcom/xiaopeng/lib/http/HttpsUtils;->buildOkHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 132
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v2

    .line 133
    invoke-virtual {v2, p0}, Lcom/lzy/okgo/OkGo;->init(Landroid/app/Application;)Lcom/lzy/okgo/OkGo;

    move-result-object p0

    .line 134
    invoke-virtual {p0, v1}, Lcom/lzy/okgo/OkGo;->setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/lzy/okgo/OkGo;

    const-string p0, "finish initOkHttpClient!!!"

    .line 135
    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static isInitSuccess()Z
    .locals 1

    .line 125
    sget-boolean v0, Lcom/xiaopeng/lib/http/HttpsUtils;->sIsInitialized:Z

    return v0
.end method

.method private static registerBroadcast(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaopeng.action.CLIENT_SSL_UPDATE"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x7fffffff

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 142
    new-instance v1, Lcom/xiaopeng/lib/http/HttpsUtils$1;

    invoke-direct {v1}, Lcom/xiaopeng/lib/http/HttpsUtils$1;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static setHttpInitEventListener(Lcom/xiaopeng/lib/HttpInitEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 269
    invoke-static {p0}, Lcom/xiaopeng/lib/InitEventHolder;->setProxy(Lcom/xiaopeng/lib/HttpInitEventListener;)V

    return-void
.end method

.method public static setSSLSocketFactoryWrapper(Lcom/xiaopeng/lib/http/HttpsUtils$ISSLSocketFactoryWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapper"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setSSLSocketWrapper(Lcom/xiaopeng/lib/http/tls/SSLHelper$ISSLSocketWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapper"
        }
    .end annotation

    .line 264
    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/SSLHelper;->setSSLSocketWrapper(Lcom/xiaopeng/lib/http/tls/SSLHelper$ISSLSocketWrapper;)V

    return-void
.end method
