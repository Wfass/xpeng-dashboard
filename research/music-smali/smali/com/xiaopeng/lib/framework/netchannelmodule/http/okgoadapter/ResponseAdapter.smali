.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;
.super Ljava/lang/Object;
.source "ResponseAdapter.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static volatile mEnableStat:Z


# instance fields
.field private mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

.field private mDomain:Ljava/lang/String;

.field private mInternalResponse:Lcom/lzy/okgo/model/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/model/Response<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRawResponse:Lokhttp3/Response;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/lzy/okgo/model/Response;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mInternalResponse:Lcom/lzy/okgo/model/Response;

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mRawResponse:Lokhttp3/Response;

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mRawResponse:Lokhttp3/Response;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->getDomain(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mDomain:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mRawResponse:Lokhttp3/Response;

    .line 30
    new-instance v0, Lcom/lzy/okgo/model/Response;

    invoke-direct {v0}, Lcom/lzy/okgo/model/Response;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mInternalResponse:Lcom/lzy/okgo/model/Response;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mInternalResponse:Lcom/lzy/okgo/model/Response;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/Response;->setRawResponse(Lokhttp3/Response;)V

    .line 32
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mRawResponse:Lokhttp3/Response;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->getDomain(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mDomain:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mDomain:Ljava/lang/String;

    return-object p0
.end method

.method public static enableStat(Z)V
    .locals 0

    .line 177
    sput-boolean p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mEnableStat:Z

    return-void
.end method

.method private getDomain(Lokhttp3/Response;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public body()Ljava/lang/String;
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mRawResponse:Lokhttp3/Response;

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mInternalResponse:Lcom/lzy/okgo/model/Response;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    sget-boolean v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mEnableStat:Z

    if-eqz v1, :cond_0

    .line 59
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mDomain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->addReceivedSize(Ljava/lang/String;J)V

    :cond_0
    return-object v0

    .line 64
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 69
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mRawResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 70
    sget-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mEnableStat:Z

    if-eqz v0, :cond_3

    .line 71
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mDomain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->addReceivedSize(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object v1
.end method

.method public byteStream()Ljava/io/InputStream;
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mRawResponse:Lokhttp3/Response;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    :try_start_0
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mRawResponse:Lokhttp3/Response;

    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;

    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->setStatisticCounter(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v0, v1

    :catch_1
    :goto_0
    return-object v0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public code()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mRawResponse:Lokhttp3/Response;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    return v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mInternalResponse:Lcom/lzy/okgo/model/Response;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->code()I

    move-result v0

    return v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mInternalResponse:Lcom/lzy/okgo/model/Response;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->getException()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getRawResponse()Lokhttp3/Response;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mRawResponse:Lokhttp3/Response;

    if-eqz v0, :cond_0

    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mInternalResponse:Lcom/lzy/okgo/model/Response;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->getRawResponse()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mRawResponse:Lokhttp3/Response;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 112
    :cond_0
    invoke-virtual {v0, p1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public headers()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->getRawResponse()Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mRawResponse:Lokhttp3/Response;

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->mInternalResponse:Lcom/lzy/okgo/model/Response;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
