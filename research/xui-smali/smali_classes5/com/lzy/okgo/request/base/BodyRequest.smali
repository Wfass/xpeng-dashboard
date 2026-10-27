.class public abstract Lcom/lzy/okgo/request/base/BodyRequest;
.super Lcom/lzy/okgo/request/base/Request;
.source "BodyRequest.java"

# interfaces
.implements Lcom/lzy/okgo/request/base/HasBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/lzy/okgo/request/base/BodyRequest;",
        ">",
        "Lcom/lzy/okgo/request/base/Request<",
        "TT;TR;>;",
        "Lcom/lzy/okgo/request/base/HasBody<",
        "TR;>;"
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

.field protected transient mediaType:Lokhttp3/MediaType;

.field protected requestBody:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 59
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-direct {p0, p1}, Lcom/lzy/okgo/request/base/Request;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isMultipart:Z

    .line 55
    iput-boolean v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isSpliceUrl:Z

    .line 60
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 229
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 230
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    .local v0, "mediaTypeString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 234
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 225
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    invoke-virtual {v0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 226
    return-void
.end method


# virtual methods
.method public addFileParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)TR;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->putFileParams(Ljava/lang/String;Ljava/util/List;)V

    .line 87
    return-object p0
.end method

.method public bridge synthetic addFileParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->addFileParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lzy/okgo/model/HttpParams$FileWrapper;",
            ">;)TR;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    .local p2, "fileWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/lzy/okgo/model/HttpParams$FileWrapper;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->putFileWrapperParams(Ljava/lang/String;Ljava/util/List;)V

    .line 94
    return-object p0
.end method

.method public bridge synthetic addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public generateRequestBody()Lokhttp3/RequestBody;
    .locals 2

    .line 204
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    iget-boolean v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isSpliceUrl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    iget-object v1, v1, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->createUrlFromParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

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

    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->bs:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->bs:[B

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->file:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->file:Ljava/io/File;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    iget-boolean v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isMultipart:Z

    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->generateMultipartRequestBody(Lcom/lzy/okgo/model/HttpParams;Z)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method protected generateRequestBuilder(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 3
    .param p1, "requestBody"    # Lokhttp3/RequestBody;

    .line 215
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    :try_start_0
    const-string v0, "Content-Length"

    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/request/base/BodyRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V

    .line 219
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 220
    .local v0, "requestBuilder":Lokhttp3/Request$Builder;
    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->appendHeaders(Lokhttp3/Request$Builder;Lcom/lzy/okgo/model/HttpHeaders;)Lokhttp3/Request$Builder;

    move-result-object v1

    return-object v1
.end method

.method public isMultipart(Z)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .param p1, "isMultipart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TR;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    iput-boolean p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isMultipart:Z

    .line 66
    return-object p0
.end method

.method public bridge synthetic isMultipart(Z)Ljava/lang/Object;
    .locals 0

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->isMultipart(Z)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public isSpliceUrl(Z)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .param p1, "isSpliceUrl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TR;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    iput-boolean p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isSpliceUrl:Z

    .line 73
    return-object p0
.end method

.method public bridge synthetic isSpliceUrl(Z)Ljava/lang/Object;
    .locals 0

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->isSpliceUrl(Z)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public params(Ljava/lang/String;Ljava/io/File;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TR;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;)V

    .line 80
    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 101
    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "contentType"    # Lokhttp3/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lokhttp3/MediaType;",
            ")TR;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)V

    .line 108
    return-object p0
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->params(Ljava/lang/String;Ljava/io/File;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/lzy/okgo/request/base/BodyRequest;->params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/Object;
    .locals 0

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lzy/okgo/request/base/BodyRequest;->params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upBytes([B)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .param p1, "bs"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TR;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->bs:[B

    .line 171
    sget-object v0, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_STREAM:Lokhttp3/MediaType;

    iput-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 172
    return-object p0
.end method

.method public upBytes([BLokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .param p1, "bs"    # [B
    .param p2, "mediaType"    # Lokhttp3/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lokhttp3/MediaType;",
            ")TR;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->bs:[B

    .line 180
    iput-object p2, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 181
    return-object p0
.end method

.method public bridge synthetic upBytes([B)Ljava/lang/Object;
    .locals 0

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upBytes([B)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upBytes([BLokhttp3/MediaType;)Ljava/lang/Object;
    .locals 0

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->upBytes([BLokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upFile(Ljava/io/File;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TR;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->file:Ljava/io/File;

    .line 189
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okgo/utils/HttpUtils;->guessMimeType(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 190
    return-object p0
.end method

.method public upFile(Ljava/io/File;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mediaType"    # Lokhttp3/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lokhttp3/MediaType;",
            ")TR;"
        }
    .end annotation

    .line 197
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->file:Ljava/io/File;

    .line 198
    iput-object p2, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 199
    return-object p0
.end method

.method public bridge synthetic upFile(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upFile(Ljava/io/File;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upFile(Ljava/io/File;Lokhttp3/MediaType;)Ljava/lang/Object;
    .locals 0

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->upFile(Ljava/io/File;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upJson(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    .line 144
    sget-object v0, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    iput-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 145
    return-object p0
.end method

.method public upJson(Lorg/json/JSONArray;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")TR;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    .line 162
    sget-object v0, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    iput-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 163
    return-object p0
.end method

.method public upJson(Lorg/json/JSONObject;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TR;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    .line 153
    sget-object v0, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    iput-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 154
    return-object p0
.end method

.method public bridge synthetic upJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upJson(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upJson(Lorg/json/JSONArray;)Ljava/lang/Object;
    .locals 0

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upJson(Lorg/json/JSONArray;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upJson(Lorg/json/JSONObject;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upRequestBody(Lokhttp3/RequestBody;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .param p1, "requestBody"    # Lokhttp3/RequestBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            ")TR;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->requestBody:Lokhttp3/RequestBody;

    .line 115
    return-object p0
.end method

.method public bridge synthetic upRequestBody(Lokhttp3/RequestBody;)Ljava/lang/Object;
    .locals 0

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upRequestBody(Lokhttp3/RequestBody;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upString(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

    iput-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 124
    return-object p0
.end method

.method public upString(Ljava/lang/String;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "mediaType"    # Lokhttp3/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/MediaType;",
            ")TR;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 136
    return-object p0
.end method

.method public bridge synthetic upString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upString(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upString(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/Object;
    .locals 0

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/base/BodyRequest;, "Lcom/lzy/okgo/request/base/BodyRequest<TT;TR;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->upString(Ljava/lang/String;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method
