.class public Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester;
.super Ljava/lang/Object;
.source "HttpRequester.java"


# instance fields
.field private final http:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester;->http:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 3
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->config()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficeStaFlagInterceptor;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficeStaFlagInterceptor;-><init>()V

    .line 4
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->addInterceptor(Lokhttp3/Interceptor;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    const/4 v1, 0x2

    .line 5
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->retryCount(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->applicationContext(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->enableTrafficStats()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object p1

    .line 9
    invoke-virtual {p2}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->getConnectTimeout()I

    move-result v0

    if-lez v0, :cond_0

    .line 10
    invoke-virtual {p2}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->getConnectTimeout()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->connectTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->getDnsTimeout()I

    move-result v0

    if-lez v0, :cond_1

    .line 13
    invoke-virtual {p2}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->getDnsTimeout()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->dnsTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    .line 15
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->getRetryCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 16
    invoke-virtual {p2}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->getRetryCount()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->retryCount(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    .line 19
    :cond_2
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->apply()V

    return-void
.end method


# virtual methods
.method public cancelAsync()V
    .locals 0

    return-void
.end method

.method public request(Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;Lcom/xiaopeng/aicabin/logic/net/http/HttpCallback;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester;->http:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    new-array p1, v1, [Ljava/lang/Object;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "NetRequester"

    const-string v0, "Http module is null"

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->getParams()Ljava/util/Map;

    move-result-object v3

    .line 10
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->getMethod()Lcom/xiaopeng/aicabin/logic/net/http/Method;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_3

    if-eq v4, v1, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->get(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 24
    :goto_1
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 25
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->uid(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 28
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->isNeedAuthorization()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 29
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    .line 33
    :cond_5
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 34
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    goto :goto_2

    .line 36
    :cond_6
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->buildWithSecretKey(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    .line 39
    :goto_2
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    goto :goto_3

    .line 43
    :cond_7
    new-instance p1, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester$a;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester$a;-><init>(Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester;Lcom/xiaopeng/aicabin/logic/net/http/HttpCallback;)V

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    return-void
.end method
