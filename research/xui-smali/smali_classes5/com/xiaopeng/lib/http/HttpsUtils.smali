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

.field private static sIsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/lib/http/HttpsUtils;->sIsInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lokhttp3/OkHttpClient;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 44
    invoke-static {p0}, Lcom/xiaopeng/lib/http/HttpsUtils;->buildOkHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static buildBody(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
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
    .local p0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 171
    .local v0, "post_param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sData"

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/http/Security;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 174
    .end local v0    # "post_param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static buildBodyWithAllToken(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
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
    .local p0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 207
    .local v0, "post_param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sData"

    sget-object v2, Lcom/xiaopeng/lib/http/Security;->TOKEN_ALL:[Ljava/lang/String;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/http/Security;->buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 210
    .end local v0    # "post_param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static buildBodyWithToken(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
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
    .local p0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 189
    .local v0, "post_param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sData"

    sget-object v2, Lcom/xiaopeng/lib/http/Security;->TOKEN_AC:[Ljava/lang/String;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/http/Security;->buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 192
    .end local v0    # "post_param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static buildOkHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;

    const-string v1, "HttpsUtils"

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "loggingInterceptor":Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;
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

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 73
    invoke-static {}, Lcom/xiaopeng/lib/http/tls/SSLHelper;->getConnectionSpecs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lokhttp3/ConnectionPool;

    invoke-direct {v2}, Lokhttp3/ConnectionPool;-><init>()V

    .line 74
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 76
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/lib/http/tls/HostNameVerifier;->INSTANCE:Lcom/xiaopeng/lib/http/tls/HostNameVerifier;

    .line 77
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 71
    return-object v1
.end method

.method public static decodeBody(Lcom/xiaopeng/lib/http/server/ServerBean;)Ljava/lang/String;
    .locals 5
    .param p0, "bean"    # Lcom/xiaopeng/lib/http/server/ServerBean;

    .line 223
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/lib/http/server/ServerBean;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/xiaopeng/lib/http/server/ServerBean;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "sData"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "data":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    const-string v3, "HttpsUtils"

    const-string v4, "sData is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-object v0

    .line 235
    :cond_1
    invoke-static {v2}, Lcom/xiaopeng/lib/http/Security;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 236
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "data":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 240
    .end local v1    # "e":Lorg/json/JSONException;
    return-object v0

    .line 224
    :cond_2
    :goto_0
    const-string v1, "HttpsUtils"

    const-string v2, "decodeBody bean is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-object v0
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

    .line 243
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
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/SSLHelper;->getTLS2SocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/app/Application;Z)Z
    .locals 4
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "needSecurity"    # Z

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

    .line 97
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/xiaopeng/lib/http/Security;->isInitSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    invoke-static {p0}, Lcom/xiaopeng/lib/http/Security;->init(Landroid/content/Context;)V

    .line 99
    invoke-static {}, Lcom/xiaopeng/lib/http/Security;->isInitSuccessWithoutIndiv()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    const-string v1, "HttpsUtils"

    const-string v2, "!Security.isInitSuccessWithoutIndiv, return false!"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-boolean v1, Lcom/xiaopeng/lib/http/HttpsUtils;->sIsInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    .line 105
    :cond_1
    :try_start_2
    const-class v1, Lcom/xiaopeng/system/delegate/module/SystemDelegateModuleEntry;

    new-instance v3, Lcom/xiaopeng/system/delegate/module/SystemDelegateModuleEntry;

    invoke-direct {v3, p0}, Lcom/xiaopeng/system/delegate/module/SystemDelegateModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 106
    invoke-static {p0}, Lcom/xiaopeng/lib/http/HttpsUtils;->initOkHttpClient(Landroid/app/Application;)V

    .line 108
    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/SSLHelper;->getX509TrustManager(Landroid/content/Context;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    if-nez v1, :cond_2

    .line 109
    const-string v1, "HttpsUtils"

    const-string v2, "KeyManager init fail, return false!"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-boolean v1, Lcom/xiaopeng/lib/http/HttpsUtils;->sIsInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v1

    .line 113
    :cond_2
    :try_start_3
    sput-boolean v2, Lcom/xiaopeng/lib/http/HttpsUtils;->sIsInitialized:Z

    .line 114
    sget-boolean v1, Lcom/xiaopeng/lib/http/HttpsUtils;->sIsInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return v1

    .line 91
    .end local p0    # "application":Landroid/app/Application;
    .end local p1    # "needSecurity":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static initOkHttpClient(Landroid/app/Application;)V
    .locals 3
    .param p0, "application"    # Landroid/app/Application;

    .line 129
    const-string v0, "HttpsUtils"

    const-string v1, "start to initOkHttpClient!!!"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-static {p0}, Lcom/xiaopeng/lib/http/HttpsUtils;->registerBroadcast(Landroid/content/Context;)V

    .line 131
    invoke-static {p0}, Lcom/xiaopeng/lib/http/HttpsUtils;->buildOkHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 132
    .local v0, "okHttpClient":Lokhttp3/OkHttpClient;
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v1

    .line 133
    invoke-virtual {v1, p0}, Lcom/lzy/okgo/OkGo;->init(Landroid/app/Application;)Lcom/lzy/okgo/OkGo;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v0}, Lcom/lzy/okgo/OkGo;->setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/lzy/okgo/OkGo;

    .line 135
    const-string v1, "HttpsUtils"

    const-string v2, "finish initOkHttpClient!!!"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
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
    .param p0, "context"    # Landroid/content/Context;

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.xiaopeng.action.CLIENT_SSL_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 142
    new-instance v1, Lcom/xiaopeng/lib/http/HttpsUtils$1;

    invoke-direct {v1}, Lcom/xiaopeng/lib/http/HttpsUtils$1;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    return-void
.end method

.method public static setHttpInitEventListener(Lcom/xiaopeng/lib/HttpInitEventListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/xiaopeng/lib/HttpInitEventListener;

    .line 269
    invoke-static {p0}, Lcom/xiaopeng/lib/InitEventHolder;->setProxy(Lcom/xiaopeng/lib/HttpInitEventListener;)V

    .line 270
    return-void
.end method

.method public static setSSLSocketFactoryWrapper(Lcom/xiaopeng/lib/http/HttpsUtils$ISSLSocketFactoryWrapper;)V
    .locals 0
    .param p0, "wrapper"    # Lcom/xiaopeng/lib/http/HttpsUtils$ISSLSocketFactoryWrapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 261
    return-void
.end method

.method public static setSSLSocketWrapper(Lcom/xiaopeng/lib/http/tls/SSLHelper$ISSLSocketWrapper;)V
    .locals 0
    .param p0, "wrapper"    # Lcom/xiaopeng/lib/http/tls/SSLHelper$ISSLSocketWrapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 264
    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/SSLHelper;->setSSLSocketWrapper(Lcom/xiaopeng/lib/http/tls/SSLHelper$ISSLSocketWrapper;)V

    .line 265
    return-void
.end method
