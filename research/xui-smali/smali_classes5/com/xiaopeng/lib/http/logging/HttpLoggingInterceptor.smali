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

    .line 43
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

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

    .line 59
    return-void
.end method

.method private bodyToString(Lokhttp3/Request;Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;)V
    .locals 6
    .param p1, "request"    # Lokhttp3/Request;
    .param p2, "log"    # Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;

    .line 220
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 221
    .local v0, "copy":Lokhttp3/Request;
    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    .line 222
    .local v1, "body":Lokhttp3/RequestBody;
    if-nez v1, :cond_0

    return-void

    .line 223
    :cond_0
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 224
    .local v2, "buffer":Lokio/Buffer;
    invoke-virtual {v1, v2}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 225
    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->getCharset(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 226
    .local v3, "charset":Ljava/nio/charset/Charset;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tbody:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v0    # "copy":Lokhttp3/Request;
    .end local v1    # "body":Lokhttp3/RequestBody;
    .end local v2    # "buffer":Lokio/Buffer;
    .end local v3    # "charset":Ljava/nio/charset/Charset;
    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->tag:Ljava/lang/String;

    const-string v2, "bodyToString error!"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static getCharset(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "contentType"    # Lokhttp3/MediaType;

    .line 195
    if-eqz p0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 196
    .local v0, "charset":Ljava/nio/charset/Charset;
    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 197
    :cond_1
    return-object v0
.end method

.method private static isPlaintext(Lokhttp3/MediaType;)Z
    .locals 4
    .param p0, "mediaType"    # Lokhttp3/MediaType;

    .line 205
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

    .line 207
    return v2

    .line 209
    :cond_1
    invoke-virtual {p0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "subtype":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 211
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 212
    const-string v3, "x-www-form-urlencoded"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "json"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "xml"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "html"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 213
    :cond_2
    return v2

    .line 215
    :cond_3
    return v0
.end method

.method private logForRequest(Lokhttp3/Request;Lokhttp3/Connection;Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;)V
    .locals 12
    .param p1, "request"    # Lokhttp3/Request;
    .param p2, "connection"    # Lokhttp3/Connection;
    .param p3, "log"    # Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    sget-object v1, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->BODY:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 102
    .local v0, "logBody":Z
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    sget-object v4, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->BODY:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    sget-object v4, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->HEADERS:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    .line 103
    .local v1, "logHeaders":Z
    :goto_2
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    .line 104
    .local v4, "requestBody":Lokhttp3/RequestBody;
    if-eqz v4, :cond_3

    move v2, v3

    nop

    .line 105
    .local v2, "hasRequestBody":Z
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v3

    goto :goto_3

    :cond_4
    sget-object v3, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 108
    .local v3, "protocol":Lokhttp3/Protocol;
    :goto_3
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "requestStartMessage":Ljava/lang/String;
    invoke-interface {p3, v5}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    .line 111
    if-eqz v1, :cond_a

    .line 112
    if-eqz v2, :cond_6

    .line 115
    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tContent-Type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    .line 118
    :cond_5
    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tContent-Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    .line 122
    :cond_6
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v6

    .line 123
    .local v6, "headers":Lokhttp3/Headers;
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    move-result v8

    .local v8, "count":I
    :goto_4
    if-ge v7, v8, :cond_8

    .line 124
    invoke-virtual {v6, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, "name":Ljava/lang/String;
    const-string v10, "Content-Type"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "Content-Length"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 127
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p3, v10}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    .line 123
    .end local v9    # "name":Ljava/lang/String;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 131
    .end local v7    # "i":I
    .end local v8    # "count":I
    :cond_8
    const-string v7, " "

    invoke-interface {p3, v7}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    .line 132
    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 133
    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->isPlaintext(Lokhttp3/MediaType;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 134
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->bodyToString(Lokhttp3/Request;Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;)V

    goto :goto_5

    .line 136
    :cond_9
    const-string v7, "\tbody: maybe [binary body], omitted!"

    invoke-interface {p3, v7}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v5    # "requestStartMessage":Ljava/lang/String;
    .end local v6    # "headers":Lokhttp3/Headers;
    :cond_a
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    :catchall_0
    move-exception v5

    goto :goto_7

    .line 140
    :catch_0
    move-exception v5

    .line 141
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v6, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->tag:Ljava/lang/String;

    const-string v7, "logForRequest error!"

    invoke-static {v6, v7, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .end local v5    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    const-string v6, "--> END "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    .line 144
    nop

    .line 145
    return-void

    .line 143
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--> END "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    throw v5
.end method

.method private logForResponse(Lokhttp3/Response;JLcom/xiaopeng/lib/http/logging/LogCacher$ILog;)Lokhttp3/Response;
    .locals 16
    .param p1, "response"    # Lokhttp3/Response;
    .param p2, "tookMs"    # J
    .param p4, "log"    # Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;

    move-object/from16 v1, p0

    .line 148
    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v3

    .line 149
    .local v3, "builder":Lokhttp3/Response$Builder;
    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v4

    .line 150
    .local v4, "clone":Lokhttp3/Response;
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    .line 151
    .local v5, "responseBody":Lokhttp3/ResponseBody;
    iget-object v0, v1, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    sget-object v6, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->BODY:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v0, v6, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    move v6, v0

    .line 152
    .local v6, "logBody":Z
    iget-object v0, v1, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    sget-object v9, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->BODY:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    if-eq v0, v9, :cond_2

    iget-object v0, v1, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    sget-object v9, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->HEADERS:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    if-ne v0, v9, :cond_1

    goto :goto_1

    :cond_1
    move v8, v7

    nop

    :cond_2
    :goto_1
    move v7, v8

    .line 155
    .local v7, "logHeaders":Z
    :try_start_0
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v0

    .line 156
    .local v0, "code":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<-- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide/from16 v9, p2

    :try_start_1
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "ms\uff09"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    .line 157
    invoke-interface {v2, v0}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->code(I)V

    .line 158
    if-eqz v7, :cond_a

    .line 159
    invoke-virtual {v4}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v8

    .line 160
    .local v8, "headers":Lokhttp3/Headers;
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-virtual {v8}, Lokhttp3/Headers;->size()I

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v12, "count":I
    :goto_2
    if-ge v11, v12, :cond_3

    .line 161
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\t"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 189
    .end local v0    # "code":I
    .end local v8    # "headers":Lokhttp3/Headers;
    .end local v11    # "i":I
    .end local v12    # "count":I
    :catchall_0
    move-exception v0

    move-object v15, v3

    goto/16 :goto_9

    .line 186
    :catch_0
    move-exception v0

    move-object v15, v3

    goto/16 :goto_7

    .line 163
    .restart local v0    # "code":I
    .restart local v8    # "headers":Lokhttp3/Headers;
    :cond_3
    :try_start_3
    const-string v11, " "

    invoke-interface {v2, v11}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    .line 164
    if-eqz v6, :cond_a

    invoke-static {v4}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v11, :cond_a

    .line 165
    if-nez v5, :cond_4

    .line 189
    const-string v11, "<-- END HTTP"

    invoke-interface {v2, v11}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    .line 165
    return-object p1

    .line 167
    :cond_4
    :try_start_4
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v11

    invoke-static {v11}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->isPlaintext(Lokhttp3/MediaType;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 168
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11}, Lcom/lzy/okgo/utils/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v11

    .line 169
    .local v11, "bytes":[B
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v12

    .line 170
    .local v12, "contentType":Lokhttp3/MediaType;
    new-instance v13, Ljava/lang/String;

    invoke-static {v12}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->getCharset(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v13, v11, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 171
    .local v13, "body":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v15, v3

    :try_start_5
    const-string v3, "\tbody:"

    .end local v3    # "builder":Lokhttp3/Response$Builder;
    .local v15, "builder":Lokhttp3/Response$Builder;
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    .line 172
    const-string v3, "\"code\":"

    invoke-virtual {v13, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 173
    const-string v3, "\"code\":0,"

    invoke-virtual {v13, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "\"code\":0}"

    .line 174
    invoke-virtual {v13, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "\"code\":200,"

    .line 175
    invoke-virtual {v13, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "\"code\":200}"

    .line 176
    invoke-virtual {v13, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const/16 v3, 0x12b

    if-le v0, v3, :cond_6

    .line 173
    move v3, v0

    goto :goto_4

    .line 176
    :cond_6
    const/4 v3, -0x1

    goto :goto_4

    :cond_7
    :goto_3
    const/16 v3, 0xc8

    .line 173
    :goto_4
    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->code(I)V

    .line 179
    :cond_8
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    invoke-static {v3, v11}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;

    move-result-object v3

    move-object v5, v3

    .line 180
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 189
    const-string v14, "<-- END HTTP"

    invoke-interface {v2, v14}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    .line 180
    return-object v3

    .line 182
    .end local v11    # "bytes":[B
    .end local v12    # "contentType":Lokhttp3/MediaType;
    .end local v13    # "body":Ljava/lang/String;
    .end local v15    # "builder":Lokhttp3/Response$Builder;
    .restart local v3    # "builder":Lokhttp3/Response$Builder;
    :cond_9
    move-object v15, v3

    .end local v3    # "builder":Lokhttp3/Response$Builder;
    .restart local v15    # "builder":Lokhttp3/Response$Builder;
    :try_start_6
    const-string v3, "\tbody: maybe [binary body], omitted!"

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .end local v0    # "code":I
    .end local v8    # "headers":Lokhttp3/Headers;
    goto :goto_8

    .line 186
    :catch_1
    move-exception v0

    goto :goto_7

    .line 189
    .end local v15    # "builder":Lokhttp3/Response$Builder;
    .restart local v3    # "builder":Lokhttp3/Response$Builder;
    :cond_a
    move-object v15, v3

    .end local v3    # "builder":Lokhttp3/Response$Builder;
    .restart local v15    # "builder":Lokhttp3/Response$Builder;
    goto :goto_8

    .end local v15    # "builder":Lokhttp3/Response$Builder;
    .restart local v3    # "builder":Lokhttp3/Response$Builder;
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 186
    :catch_2
    move-exception v0

    goto :goto_6

    .line 189
    :catchall_2
    move-exception v0

    move-wide/from16 v9, p2

    :goto_5
    move-object v15, v3

    .end local v3    # "builder":Lokhttp3/Response$Builder;
    .restart local v15    # "builder":Lokhttp3/Response$Builder;
    goto :goto_9

    .line 186
    .end local v15    # "builder":Lokhttp3/Response$Builder;
    .restart local v3    # "builder":Lokhttp3/Response$Builder;
    :catch_3
    move-exception v0

    move-wide/from16 v9, p2

    :goto_6
    move-object v15, v3

    .line 187
    .end local v3    # "builder":Lokhttp3/Response$Builder;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v15    # "builder":Lokhttp3/Response$Builder;
    :goto_7
    :try_start_7
    iget-object v3, v1, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->tag:Ljava/lang/String;

    const-string v8, "logForResponse error!"

    invoke-static {v3, v8, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    const-string v0, "<-- END HTTP"

    invoke-interface {v2, v0}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    .line 190
    nop

    .line 191
    return-object p1

    .line 189
    :catchall_3
    move-exception v0

    :goto_9
    const-string v3, "<-- END HTTP"

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 74
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    sget-object v2, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->NONE:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    if-ne v1, v2, :cond_0

    .line 75
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    return-object v1

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->cacher:Lcom/xiaopeng/lib/http/logging/LogCacher;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/http/logging/LogCacher;->getLogger()Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;

    move-result-object v1

    .line 81
    .local v1, "log":Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->logForRequest(Lokhttp3/Request;Lokhttp3/Connection;Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;)V

    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 87
    .local v2, "startNs":J
    :try_start_0
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v4, "response":Lokhttp3/Response;
    nop

    .line 90
    nop

    .line 92
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 95
    .local v5, "tookMs":J
    invoke-direct {p0, v4, v5, v6, v1}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->logForResponse(Lokhttp3/Response;JLcom/xiaopeng/lib/http/logging/LogCacher$ILog;)Lokhttp3/Response;

    move-result-object v7

    .line 96
    .local v7, "r":Lokhttp3/Response;
    invoke-interface {v1}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->end()V

    .line 97
    return-object v7

    .line 88
    .end local v4    # "response":Lokhttp3/Response;
    .end local v5    # "tookMs":J
    .end local v7    # "r":Lokhttp3/Response;
    :catch_0
    move-exception v4

    .line 89
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<-- HTTP FAILED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;->log(Ljava/lang/String;)V

    .line 90
    throw v4
.end method

.method public setColorLevel(Ljava/util/logging/Level;)V
    .locals 0
    .param p1, "level"    # Ljava/util/logging/Level;

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->colorLevel:Ljava/util/logging/Level;

    .line 69
    return-void
.end method

.method public setPrintLevel(Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;)V
    .locals 2
    .param p1, "level"    # Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    if-eqz v0, :cond_0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;->printLevel:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    .line 65
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "printLevel == null. Use Level.NONE instead."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
