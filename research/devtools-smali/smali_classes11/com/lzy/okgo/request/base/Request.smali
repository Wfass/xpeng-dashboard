.class public abstract Lcom/lzy/okgo/request/base/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/lzy/okgo/request/base/Request;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x638f96e7c9b0eb5cL


# instance fields
.field protected baseUrl:Ljava/lang/String;

.field protected cacheKey:Ljava/lang/String;

.field protected cacheMode:Lcom/lzy/okgo/cache/CacheMode;

.field protected cacheTime:J

.field protected transient client:Lokhttp3/OkHttpClient;

.field protected headers:Lcom/lzy/okgo/model/HttpHeaders;

.field protected transient mE:Lokhttp3/Request;

.field protected transient mF:Lcom/lzy/okgo/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/a/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected transient mG:Lcom/lzy/okgo/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/c/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected transient mH:Lcom/lzy/okgo/cache/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/cache/a/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected transient mI:Lcom/lzy/okgo/request/base/a$b;

.field protected transient my:Lcom/lzy/okgo/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/b/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected params:Lcom/lzy/okgo/model/HttpParams;

.field protected retryCount:I

.field protected transient tag:Ljava/lang/Object;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    .line 65
    new-instance v0, Lcom/lzy/okgo/model/HttpHeaders;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    .line 75
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->url:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->baseUrl:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/lzy/okgo/a;->cE()Lcom/lzy/okgo/a;

    move-result-object p1

    .line 79
    invoke-static {}, Lcom/lzy/okgo/model/HttpHeaders;->da()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Accept-Language"

    invoke-virtual {p0, v1, v0}, Lcom/lzy/okgo/request/base/Request;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 82
    :cond_0
    invoke-static {}, Lcom/lzy/okgo/model/HttpHeaders;->db()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "User-Agent"

    invoke-virtual {p0, v1, v0}, Lcom/lzy/okgo/request/base/Request;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/lzy/okgo/a;->cJ()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/lzy/okgo/a;->cJ()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/request/base/Request;->b(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/request/base/Request;

    .line 86
    :cond_2
    invoke-virtual {p1}, Lcom/lzy/okgo/a;->cK()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/lzy/okgo/a;->cK()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/request/base/Request;->c(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;

    .line 88
    :cond_3
    invoke-virtual {p1}, Lcom/lzy/okgo/a;->cG()I

    move-result v0

    iput v0, p0, Lcom/lzy/okgo/request/base/Request;->retryCount:I

    .line 89
    invoke-virtual {p1}, Lcom/lzy/okgo/a;->cH()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheMode:Lcom/lzy/okgo/cache/CacheMode;

    .line 90
    invoke-virtual {p1}, Lcom/lzy/okgo/a;->cI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheTime:J

    .line 91
    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheMode;",
            ")TR;"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->cacheMode:Lcom/lzy/okgo/cache/CacheMode;

    .line 133
    return-object p0
.end method

.method public abstract a(Lokhttp3/RequestBody;)Lokhttp3/Request;
.end method

.method public aP(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 146
    const-string v0, "cacheKey == null"

    invoke-static {p1, v0}, Lcom/lzy/okgo/f/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->cacheKey:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public aQ(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->aI(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public aR(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpParams;->remove(Ljava/lang/String;)V

    .line 247
    return-object p0
.end method

.method public b(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/HttpParams;",
            ")TR;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpParams;->a(Lcom/lzy/okgo/model/HttpParams;)V

    .line 187
    return-object p0
.end method

.method public varargs b(Ljava/lang/String;F[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F[Z)TR;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->a(Ljava/lang/String;F[Z)V

    .line 211
    return-object p0
.end method

.method public varargs b(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[Z)TR;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->a(Ljava/lang/String;I[Z)V

    .line 205
    return-object p0
.end method

.method public varargs b(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[Z)TR;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->a(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 199
    return-object p0
.end method

.method public varargs b(Ljava/lang/String;Z[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[Z)TR;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->a(Ljava/lang/String;Z[Z)V

    .line 235
    return-object p0
.end method

.method public varargs b(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[Z)TR;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->a(Ljava/util/Map;[Z)V

    .line 193
    return-object p0
.end method

.method public c(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/HttpHeaders;",
            ")TR;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->b(Lcom/lzy/okgo/model/HttpHeaders;)V

    .line 163
    return-object p0
.end method

.method public cG()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/lzy/okgo/request/base/Request;->retryCount:I

    return v0
.end method

.method public cH()Lcom/lzy/okgo/cache/CacheMode;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheMode:Lcom/lzy/okgo/cache/CacheMode;

    return-object v0
.end method

.method public cI()J
    .locals 2

    .line 309
    iget-wide v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheTime:J

    return-wide v0
.end method

.method public dd()Lokhttp3/Call;
    .locals 3

    .line 342
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->de()Lokhttp3/RequestBody;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    .line 344
    new-instance v1, Lcom/lzy/okgo/request/base/a;

    iget-object v2, p0, Lcom/lzy/okgo/request/base/Request;->my:Lcom/lzy/okgo/b/b;

    invoke-direct {v1, v0, v2}, Lcom/lzy/okgo/request/base/a;-><init>(Lokhttp3/RequestBody;Lcom/lzy/okgo/b/b;)V

    .line 345
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mI:Lcom/lzy/okgo/request/base/a$b;

    invoke-virtual {v1, v0}, Lcom/lzy/okgo/request/base/a;->a(Lcom/lzy/okgo/request/base/a$b;)V

    .line 346
    invoke-virtual {p0, v1}, Lcom/lzy/okgo/request/base/Request;->a(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mE:Lokhttp3/Request;

    .line 347
    goto :goto_0

    .line 348
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/request/base/Request;->a(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mE:Lokhttp3/Request;

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lzy/okgo/a;->cE()Lcom/lzy/okgo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/a;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lcom/lzy/okgo/request/base/Request;->mE:Lokhttp3/Request;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    return-object v0
.end method

.method protected abstract de()Lokhttp3/RequestBody;
.end method

.method public df()Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/HttpHeaders;->clear()V

    .line 181
    return-object p0
.end method

.method public dg()Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/HttpParams;->clear()V

    .line 253
    return-object p0
.end method

.method public dh()Lcom/lzy/okgo/model/HttpParams;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    return-object v0
.end method

.method public di()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public dj()Lcom/lzy/okgo/cache/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/cache/a/b<",
            "TT;>;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mH:Lcom/lzy/okgo/cache/a/b;

    return-object v0
.end method

.method public dk()Lokhttp3/Request;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mE:Lokhttp3/Request;

    return-object v0
.end method

.method public dl()Lcom/lzy/okgo/c/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/c/a<",
            "TT;>;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mG:Lcom/lzy/okgo/c/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->my:Lcom/lzy/okgo/b/b;

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mG:Lcom/lzy/okgo/c/a;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mG:Lcom/lzy/okgo/c/a;

    const-string v1, "converter == null, do you forget to call Request#converter(Converter<T>) ?"

    invoke-static {v0, v1}, Lcom/lzy/okgo/f/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mG:Lcom/lzy/okgo/c/a;

    return-object v0
.end method

.method public dm()Lcom/lzy/okgo/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/a/b<",
            "TT;>;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mF:Lcom/lzy/okgo/a/b;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lcom/lzy/okgo/a/a;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/a/a;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    return-object v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mF:Lcom/lzy/okgo/a/b;

    return-object v0
.end method

.method public execute()Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->dd()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/lzy/okgo/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/b/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 388
    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/lzy/okgo/f/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->my:Lcom/lzy/okgo/b/b;

    .line 391
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->dm()Lcom/lzy/okgo/a/b;

    move-result-object v0

    .line 392
    invoke-interface {v0, p1}, Lcom/lzy/okgo/a/b;->execute(Lcom/lzy/okgo/b/b;)V

    .line 393
    return-void
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->url:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->tag:Ljava/lang/Object;

    .line 96
    return-object p0
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-object p0
.end method
