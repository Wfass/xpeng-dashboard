.class public Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private cacher:Lcom/xiaopeng/lib/http/logging/LogCacher;

.field private colorLevel:Ljava/util/logging/Level;

.field private volatile printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 43
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->NONE:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    .line 48
    new-instance v0, Lcom/xiaopeng/lib/http/logging/LogCacher;

    invoke-direct {v0}, Lcom/xiaopeng/lib/http/logging/LogCacher;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->cacher:Lcom/xiaopeng/lib/http/logging/LogCacher;

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->tag:Ljava/lang/String;

    return-void
.end method

.method private bodyToString(Lokhttp3/Request;Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "log"
        }
    .end annotation

    .line 220
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 223
    :cond_0
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 224
    invoke-virtual {p1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 225
    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->getCharset(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tbody:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 228
    iget-object p2, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->tag:Ljava/lang/String;

    const-string v0, "bodyToString error!"

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static getCharset(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentType"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 195
    sget-object v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    :goto_0
    if-nez p0, :cond_1

    .line 196
    sget-object p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    :cond_1
    return-object p0
.end method

.method private static isPlaintext(Lokhttp3/MediaType;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaType"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 209
    :cond_1
    invoke-virtual {p0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "x-www-form-urlencoded"

    .line 212
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "json"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method private logForRequest(Lokhttp3/Request;Lokhttp3/Connection;Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "connection",
            "log"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "--> END "

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    sget-object v2, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->BODY:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 102
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    sget-object v5, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->BODY:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    sget-object v5, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->HEADERS:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    if-ne v2, v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v3

    .line 103
    :goto_2
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    if-eqz p2, :cond_4

    .line 105
    invoke-interface {p2}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object p2

    goto :goto_4

    :cond_4
    sget-object p2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 108
    :goto_4
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-interface {p3, p2}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_a

    if-eqz v3, :cond_6

    .line 115
    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tContent-Type: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    .line 118
    :cond_5
    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long p2, v6, v8

    if-eqz p2, :cond_6

    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tContent-Length: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    .line 122
    :cond_6
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p2

    .line 123
    invoke-virtual {p2}, Lokhttp3/Headers;->size()I

    move-result v2

    :goto_5
    if-ge v4, v2, :cond_8

    .line 124
    invoke-virtual {p2, v4}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Content-Type"

    .line 126
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "Content-Length"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2, v4}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    const-string p2, " "

    .line 131
    invoke-interface {p3, p2}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_a

    if-eqz v3, :cond_a

    .line 133
    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->isPlaintext(Lokhttp3/MediaType;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 134
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->bodyToString(Lokhttp3/Request;Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;)V

    goto :goto_6

    :cond_9
    const-string p2, "\tbody: maybe [binary body], omitted!"

    .line 136
    invoke-interface {p3, p2}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_a
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :catchall_0
    move-exception p2

    goto :goto_8

    :catch_0
    move-exception p2

    .line 141
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->tag:Ljava/lang/String;

    const-string v2, "logForRequest error!"

    invoke-static {v1, v2, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    return-void

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    throw p2
.end method

.method private logForResponse(Lokhttp3/Response;JLcom/xiaopeng/lib/http/logging/LogCacher$ILog;)Lokhttp3/Response;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "tookMs",
            "log"
        }
    .end annotation

    const-string v0, "<-- END HTTP"

    .line 148
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    .line 151
    iget-object v3, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    sget-object v4, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->BODY:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    .line 152
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    sget-object v7, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->BODY:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    if-eq v4, v7, :cond_2

    iget-object v4, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    sget-object v7, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->HEADERS:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    if-ne v4, v7, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    .line 155
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v4

    .line 156
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<-- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "ms\uff09"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p2}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    .line 157
    invoke-interface {p4, v4}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->code(I)V

    if-eqz v5, :cond_a

    .line 159
    invoke-virtual {v1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p2

    .line 160
    invoke-virtual {p2}, Lokhttp3/Headers;->size()I

    move-result p3

    :goto_2
    if-ge v6, p3, :cond_3

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2, v6}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2, v6}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v5}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const-string p2, " "

    .line 163
    invoke-interface {p4, p2}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_a

    .line 164
    invoke-static {v1}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_a

    if-nez v2, :cond_4

    .line 189
    invoke-interface {p4, v0}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    return-object p1

    .line 167
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->isPlaintext(Lokhttp3/MediaType;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 168
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lcom/lzy/okgo/utils/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p2

    .line 169
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p3

    .line 170
    new-instance v1, Ljava/lang/String;

    invoke-static {p3}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->getCharset(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-direct {v1, p2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 171
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tbody:"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    const-string p3, "\"code\":"

    .line 172
    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_8

    const-string p3, "\"code\":0,"

    .line 173
    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "\"code\":0}"

    .line 174
    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "\"code\":200,"

    .line 175
    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "\"code\":200}"

    .line 176
    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    const/16 p3, 0x12b

    if-le v4, p3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, -0x1

    goto :goto_4

    :cond_7
    :goto_3
    const/16 v4, 0xc8

    .line 173
    :goto_4
    invoke-interface {p4, v4}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->code(I)V

    .line 179
    :cond_8
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p3

    invoke-static {p3, p2}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;

    move-result-object p2

    .line 180
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    invoke-interface {p4, v0}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    return-object p1

    :cond_9
    :try_start_2
    const-string p2, "\tbody: maybe [binary body], omitted!"

    .line 182
    invoke-interface {p4, p2}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p2

    .line 187
    :try_start_3
    iget-object p3, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->tag:Ljava/lang/String;

    const-string v1, "logForResponse error!"

    invoke-static {p3, v1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    :cond_a
    :goto_5
    invoke-interface {p4, v0}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    return-object p1

    :goto_6
    invoke-interface {p4, v0}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    sget-object v2, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->NONE:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    if-ne v1, v2, :cond_0

    .line 75
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->cacher:Lcom/xiaopeng/lib/http/logging/LogCacher;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/http/logging/LogCacher;->getLogger()Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;

    move-result-object v1

    .line 81
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->logForRequest(Lokhttp3/Request;Lokhttp3/Connection;Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;)V

    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 87
    :try_start_0
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 95
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->logForResponse(Lokhttp3/Response;JLcom/xiaopeng/lib/http/logging/LogCacher$ILog;)Lokhttp3/Response;

    move-result-object p1

    .line 96
    invoke-interface {v1}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->end()V

    return-object p1

    :catch_0
    move-exception p1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<-- HTTP FAILED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    .line 90
    throw p1
.end method

.method public setColorLevel(Ljava/util/logging/Level;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->colorLevel:Ljava/util/logging/Level;

    return-void
.end method

.method public setPrintLevel(Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    const-string v1, "printLevel == null. Use Level.NONE instead."

    .line 63
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    return-void
.end method
