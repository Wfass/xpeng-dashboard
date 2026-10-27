.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;
.super Ljava/lang/Object;
.source "ConfigImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetChannel.Http.ConfigImpl"

.field private static sLoggingInterceptor:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor; = null

.field private static sSetupSocketTrafficStatistic:Z = false

.field private static sTracingInterceptor:Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;


# instance fields
.field private mBuilder:Lokhttp3/OkHttpClient$Builder;

.field private mCurrentClient:Lokhttp3/OkHttpClient;

.field private mRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mCurrentClient:Lokhttp3/OkHttpClient;

    .line 46
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    .line 47
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->getRetryCount()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mRetryCount:I

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->enableHttpEventReport(Lokhttp3/OkHttpClient$Builder;)V

    return-void
.end method

.method private enableHttpEventReport(Lokhttp3/OkHttpClient$Builder;)V
    .locals 1

    .line 259
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->getEventListener()Lokhttp3/EventListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->eventListener(Lokhttp3/EventListener;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method

.method private enableHttpTrafficStatistic()V
    .locals 2

    .line 247
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    .line 253
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    return-void
.end method

.method public static getCurrentHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 41
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addInterceptor(Lokhttp3/Interceptor;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public applicationContext(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .locals 0

    .line 208
    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->setApplicationContext(Landroid/app/Application;)V

    .line 209
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->enableTrafficStats()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    return-object p0
.end method

.method public apply()V
    .locals 3

    .line 235
    const-class v0, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    new-instance v1, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/datalog/DataLogModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 238
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mRetryCount:I

    .line 239
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/OkGo;->setRetryCount(I)Lcom/lzy/okgo/OkGo;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    .line 240
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/OkGo;->setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/lzy/okgo/OkGo;

    return-void
.end method

.method public connectTimeout()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mCurrentClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v0

    return v0
.end method

.method public connectTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public disableTrafficStats()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    sget-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->sSetupSocketTrafficStatistic:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 174
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/CountingTLSSocketInstrument;->reset()V

    .line 175
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->reset()V

    .line 176
    sput-boolean v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->sSetupSocketTrafficStatistic:Z

    .line 178
    :cond_1
    invoke-static {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->enableStat(Z)V

    return-object p0
.end method

.method public dnsTimeout()I
    .locals 1

    .line 65
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->timeout()I

    move-result v0

    return v0
.end method

.method public dnsTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .locals 1

    .line 108
    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->timeout(I)V

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public enableLogging()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .locals 2

    .line 137
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->sLoggingInterceptor:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;

    const-string v1, "NetChannel.Http.ConfigImpl"

    invoke-direct {v0, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->sLoggingInterceptor:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;

    .line 139
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isEngVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BASIC:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->setPrintLevel(Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;)V

    .line 141
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->sLoggingInterceptor:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->setColorLevel(Ljava/util/logging/Level;)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->sLoggingInterceptor:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    return-object p0
.end method

.method public enableTracing()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .locals 2

    .line 184
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->sTracingInterceptor:Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->sTracingInterceptor:Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingInterceptor;

    .line 186
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    return-object p0
.end method

.method public enableTrafficStats()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .locals 2

    .line 155
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->enableHttpTrafficStatistic()V

    const/4 v0, 0x1

    .line 156
    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->enableStat(Z)V

    .line 158
    sget-boolean v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->sSetupSocketTrafficStatistic:Z

    if-nez v1, :cond_0

    .line 159
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->init()V

    .line 160
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->init()V

    .line 162
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/CountingTLSSocketInstrument;->initialize()V

    .line 163
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->initialize()V

    .line 164
    sput-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->sSetupSocketTrafficStatistic:Z

    :cond_0
    return-object p0
.end method

.method public readTimeout()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mCurrentClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v0

    return v0
.end method

.method public readTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public retryCount()I
    .locals 1

    .line 89
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->getRetryCount()I

    move-result v0

    return v0
.end method

.method public retryCount(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .locals 1

    if-ltz p1, :cond_1

    .line 223
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mRetryCount:I

    if-eq p1, v0, :cond_0

    .line 224
    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mRetryCount:I

    :cond_0
    return-object p0

    .line 220
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid retry count!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeTimeout()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mCurrentClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v0

    return v0
.end method

.method public writeTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method
