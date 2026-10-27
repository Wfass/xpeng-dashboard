.class public abstract Lcom/lzy/okgo/request/base/BodyRequest;
.super Lcom/lzy/okgo/request/base/Request;
.source "BodyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/lzy/okgo/request/base/BodyRequest;",
        ">",
        "Lcom/lzy/okgo/request/base/Request<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x59a399aa9376760dL


# instance fields
.field protected bs:[B

.field protected content:Ljava/lang/String;

.field protected transient file:Ljava/io/File;

.field protected isMultipart:Z

.field protected isSpliceUrl:Z

.field protected transient mx:Lokhttp3/MediaType;

.field protected requestBody:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/lzy/okgo/request/base/Request;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isMultipart:Z

    .line 55
    iput-boolean p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isSpliceUrl:Z

    .line 60
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 229
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 230
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mx:Lokhttp3/MediaType;

    .line 234
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 225
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mx:Lokhttp3/MediaType;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mx:Lokhttp3/MediaType;

    invoke-virtual {v0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 226
    return-void
.end method


# virtual methods
.method public aO(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    .line 144
    sget-object p1, Lcom/lzy/okgo/model/HttpParams;->mo:Lokhttp3/MediaType;

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mx:Lokhttp3/MediaType;

    .line 145
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/io/File;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TR;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 80
    return-object p0
.end method

.method protected b(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 3

    .line 215
    :try_start_0
    const-string v0, "Content-Length"

    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    .line 216
    :catch_0
    move-exception p1

    .line 217
    invoke-static {p1}, Lcom/lzy/okgo/f/d;->f(Ljava/lang/Throwable;)V

    .line 219
    :goto_0
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 220
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-static {p1, v0}, Lcom/lzy/okgo/f/b;->a(Lokhttp3/Request$Builder;Lcom/lzy/okgo/model/HttpHeaders;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/io/File;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TR;"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->file:Ljava/io/File;

    .line 189
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lzy/okgo/f/b;->aS(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mx:Lokhttp3/MediaType;

    .line 190
    return-object p0
.end method

.method public de()Lokhttp3/RequestBody;
    .locals 2

    .line 204
    iget-boolean v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isSpliceUrl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    iget-object v1, v1, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lcom/lzy/okgo/f/b;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->url:Ljava/lang/String;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->requestBody:Lokhttp3/RequestBody;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->requestBody:Lokhttp3/RequestBody;

    return-object v0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mx:Lokhttp3/MediaType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mx:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->bs:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mx:Lokhttp3/MediaType;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mx:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->bs:[B

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->file:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mx:Lokhttp3/MediaType;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mx:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->file:Ljava/io/File;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    iget-boolean v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isMultipart:Z

    invoke-static {v0, v1}, Lcom/lzy/okgo/f/b;->a(Lcom/lzy/okgo/model/HttpParams;Z)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public y(Z)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TR;"
        }
    .end annotation

    .line 65
    iput-boolean p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isMultipart:Z

    .line 66
    return-object p0
.end method
