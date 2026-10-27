.class public Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;
.super Ljava/lang/Object;
.source "HttpRequestInfo.java"


# instance fields
.field private mAppSecret:Ljava/lang/String;

.field private mConnectTimeout:I

.field private mDnsTimeout:I

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mUid:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private method:Lcom/xiaopeng/aicabin/logic/net/http/Method;

.field private needAuthorization:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mParams:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mHeaders:Ljava/util/Map;

    .line 28
    sget-object v0, Lcom/xiaopeng/aicabin/logic/net/http/Method;->POST:Lcom/xiaopeng/aicabin/logic/net/http/Method;

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->method:Lcom/xiaopeng/aicabin/logic/net/http/Method;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->needAuthorization:Z

    return-void
.end method

.method public static final newBuilder()Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;

    invoke-direct {v0}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addHeaders(Ljava/util/Map;)Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addParams(Ljava/util/Map;)Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public appSecret(Ljava/lang/String;)Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mAppSecret:Ljava/lang/String;

    return-object p0
.end method

.method public connectTimeout(I)Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mConnectTimeout:I

    return-object p0
.end method

.method public dnsTimeout(I)Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mDnsTimeout:I

    return-object p0
.end method

.method public get()Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaopeng/aicabin/logic/net/http/Method;->GET:Lcom/xiaopeng/aicabin/logic/net/http/Method;

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->method:Lcom/xiaopeng/aicabin/logic/net/http/Method;

    return-object p0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mConnectTimeout:I

    return v0
.end method

.method public getDnsTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mDnsTimeout:I

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getMethod()Lcom/xiaopeng/aicabin/logic/net/http/Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->method:Lcom/xiaopeng/aicabin/logic/net/http/Method;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mParams:Ljava/util/Map;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mRetryCount:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedAuthorization()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->needAuthorization:Z

    return v0
.end method

.method public needAuthorization()Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->needAuthorization:Z

    return-object p0
.end method

.method public post()Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaopeng/aicabin/logic/net/http/Method;->POST:Lcom/xiaopeng/aicabin/logic/net/http/Method;

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->method:Lcom/xiaopeng/aicabin/logic/net/http/Method;

    return-object p0
.end method

.method public retryCount(I)Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mRetryCount:I

    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mUid:Ljava/lang/String;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->mUrl:Ljava/lang/String;

    return-object p0
.end method
