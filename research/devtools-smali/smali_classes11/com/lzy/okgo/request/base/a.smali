.class public Lcom/lzy/okgo/request/base/a;
.super Lokhttp3/RequestBody;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/request/base/a$b;,
        Lcom/lzy/okgo/request/base/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lokhttp3/RequestBody;"
    }
.end annotation


# instance fields
.field private my:Lcom/lzy/okgo/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/b/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mz:Lcom/lzy/okgo/request/base/a$b;

.field private requestBody:Lokhttp3/RequestBody;


# direct methods
.method constructor <init>(Lokhttp3/RequestBody;Lcom/lzy/okgo/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/lzy/okgo/b/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/lzy/okgo/request/base/a;->requestBody:Lokhttp3/RequestBody;

    .line 50
    iput-object p2, p0, Lcom/lzy/okgo/request/base/a;->my:Lcom/lzy/okgo/b/b;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/lzy/okgo/request/base/a;)Lcom/lzy/okgo/request/base/a$b;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/lzy/okgo/request/base/a;->mz:Lcom/lzy/okgo/request/base/a$b;

    return-object p0
.end method

.method static synthetic a(Lcom/lzy/okgo/request/base/a;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/lzy/okgo/request/base/a;->b(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method static synthetic b(Lcom/lzy/okgo/request/base/a;)Lcom/lzy/okgo/b/b;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/lzy/okgo/request/base/a;->my:Lcom/lzy/okgo/b/b;

    return-object p0
.end method

.method private b(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 108
    new-instance v0, Lcom/lzy/okgo/request/base/a$1;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/request/base/a$1;-><init>(Lcom/lzy/okgo/request/base/a;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lcom/lzy/okgo/f/b;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/request/base/a$b;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/lzy/okgo/request/base/a;->mz:Lcom/lzy/okgo/request/base/a$b;

    .line 120
    return-void
.end method

.method public contentLength()J
    .locals 2

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/a;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-static {v0}, Lcom/lzy/okgo/f/d;->f(Ljava/lang/Throwable;)V

    .line 66
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/lzy/okgo/request/base/a;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/lzy/okgo/request/base/a$a;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/request/base/a$a;-><init>(Lcom/lzy/okgo/request/base/a;Lokio/Sink;)V

    .line 74
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/lzy/okgo/request/base/a;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 76
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    .line 77
    return-void
.end method
