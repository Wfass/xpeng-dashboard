.class public Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private colorLevel:Ljava/util/logging/Level;

.field private logger:Ljava/util/logging/Logger;

.field private volatile printLevel:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    .line 63
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->logger:Ljava/util/logging/Logger;

    .line 64
    return-void
.end method

.method private bodyToString(Lokhttp3/Request;)V
    .locals 6
    .param p1, "request"    # Lokhttp3/Request;

    .line 215
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 216
    .local v0, "copy":Lokhttp3/Request;
    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    .line 217
    .local v1, "body":Lokhttp3/RequestBody;
    if-nez v1, :cond_0

    return-void

    .line 218
    :cond_0
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 219
    .local v2, "buffer":Lokio/Buffer;
    invoke-virtual {v1, v2}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 220
    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    invoke-static {v3}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->getCharset(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 221
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

    invoke-direct {p0, v4}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0    # "copy":Lokhttp3/Request;
    .end local v1    # "body":Lokhttp3/RequestBody;
    .end local v2    # "buffer":Lokio/Buffer;
    .end local v3    # "charset":Ljava/nio/charset/Charset;
    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static getCharset(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "contentType"    # Lokhttp3/MediaType;

    .line 190
    if-eqz p0, :cond_0

    sget-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 191
    .local v0, "charset":Ljava/nio/charset/Charset;
    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 192
    :cond_1
    return-object v0
.end method

.method private static isPlaintext(Lokhttp3/MediaType;)Z
    .locals 4
    .param p0, "mediaType"    # Lokhttp3/MediaType;

    .line 200
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 201
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

    .line 202
    return v2

    .line 204
    :cond_1
    invoke-virtual {p0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "subtype":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 206
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 207
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

    .line 208
    :cond_2
    return v2

    .line 210
    :cond_3
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->colorLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private logForRequest(Lokhttp3/Request;Lokhttp3/Connection;)V
    .locals 12
    .param p1, "request"    # Lokhttp3/Request;
    .param p2, "connection"    # Lokhttp3/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 106
    .local v0, "logBody":Z
    :goto_0
    iget-object v1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v4, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v4, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->HEADERS:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    .line 107
    .local v1, "logHeaders":Z
    :goto_2
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    .line 108
    .local v4, "requestBody":Lokhttp3/RequestBody;
    if-eqz v4, :cond_3

    move v2, v3

    nop

    .line 109
    .local v2, "hasRequestBody":Z
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v3

    goto :goto_3

    :cond_4
    sget-object v3, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 112
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

    .line 113
    .local v5, "requestStartMessage":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 115
    if-eqz v1, :cond_a

    .line 116
    if-eqz v2, :cond_6

    .line 119
    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tContent-Type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 122
    :cond_5
    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tContent-Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 126
    :cond_6
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v6

    .line 127
    .local v6, "headers":Lokhttp3/Headers;
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    move-result v8

    .local v8, "count":I
    :goto_4
    if-ge v7, v8, :cond_8

    .line 128
    invoke-virtual {v6, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v9, "name":Ljava/lang/String;
    const-string v10, "Content-Type"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "Content-Length"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 131
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

    invoke-direct {p0, v10}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 127
    .end local v9    # "name":Ljava/lang/String;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 135
    .end local v7    # "i":I
    .end local v8    # "count":I
    :cond_8
    const-string v7, " "

    invoke-direct {p0, v7}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 136
    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 137
    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    invoke-static {v7}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->isPlaintext(Lokhttp3/MediaType;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 138
    invoke-direct {p0, p1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->bodyToString(Lokhttp3/Request;)V

    goto :goto_5

    .line 140
    :cond_9
    const-string v7, "\tbody: maybe [binary body], omitted!"

    invoke-direct {p0, v7}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
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

    .line 144
    :catch_0
    move-exception v5

    .line 145
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v5}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
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

    invoke-direct {p0, v5}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 148
    nop

    .line 149
    return-void

    .line 147
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

    invoke-direct {p0, v6}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    throw v5
.end method

.method private logForResponse(Lokhttp3/Response;J)Lokhttp3/Response;
    .locals 11
    .param p1, "response"    # Lokhttp3/Response;
    .param p2, "tookMs"    # J

    .line 152
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    .line 153
    .local v0, "builder":Lokhttp3/Response$Builder;
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    .line 154
    .local v1, "clone":Lokhttp3/Response;
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    .line 155
    .local v2, "responseBody":Lokhttp3/ResponseBody;
    iget-object v3, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v4, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    .line 156
    .local v3, "logBody":Z
    :goto_0
    iget-object v4, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v7, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-eq v4, v7, :cond_2

    iget-object v4, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v7, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->HEADERS:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-ne v4, v7, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v5, v6

    :goto_2
    move v4, v5

    .line 159
    .local v4, "logHeaders":Z
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<-- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms\uff09"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 160
    if-eqz v4, :cond_6

    .line 161
    invoke-virtual {v1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v5

    .line 162
    .local v5, "headers":Lokhttp3/Headers;
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    move-result v7

    .local v7, "count":I
    :goto_3
    if-ge v6, v7, :cond_3

    .line 163
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 162
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 165
    .end local v6    # "i":I
    .end local v7    # "count":I
    :cond_3
    const-string v6, " "

    invoke-direct {p0, v6}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 166
    if-eqz v3, :cond_6

    invoke-static {v1}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_6

    .line 167
    if-nez v2, :cond_4

    .line 184
    const-string v6, "<-- END HTTP"

    invoke-direct {p0, v6}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    return-object p1

    .line 169
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v6

    invoke-static {v6}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->isPlaintext(Lokhttp3/MediaType;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 170
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/lzy/okgo/utils/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 171
    .local v6, "bytes":[B
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    .line 172
    .local v7, "contentType":Lokhttp3/MediaType;
    new-instance v8, Ljava/lang/String;

    invoke-static {v7}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->getCharset(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 173
    .local v8, "body":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\tbody:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v9

    invoke-static {v9, v6}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;

    move-result-object v9

    move-object v2, v9

    .line 175
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    const-string v10, "<-- END HTTP"

    invoke-direct {p0, v10}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    return-object v9

    .line 177
    .end local v6    # "bytes":[B
    .end local v7    # "contentType":Lokhttp3/MediaType;
    .end local v8    # "body":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v6, "\tbody: maybe [binary body], omitted!"

    invoke-direct {p0, v6}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v5    # "headers":Lokhttp3/Headers;
    goto :goto_4

    .line 184
    :catchall_0
    move-exception v5

    goto :goto_5

    .line 181
    :catch_0
    move-exception v5

    .line 182
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v5}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_4
    const-string v5, "<-- END HTTP"

    invoke-direct {p0, v5}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 185
    nop

    .line 186
    return-object p1

    .line 184
    :goto_5
    const-string v6, "<-- END HTTP"

    invoke-direct {p0, v6}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 7
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 82
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v2, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-ne v1, v2, :cond_0

    .line 83
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    return-object v1

    .line 87
    :cond_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->logForRequest(Lokhttp3/Request;Lokhttp3/Connection;)V

    .line 90
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 93
    .local v1, "startNs":J
    :try_start_0
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .local v3, "response":Lokhttp3/Response;
    nop

    .line 96
    nop

    .line 98
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 101
    .local v4, "tookMs":J
    invoke-direct {p0, v3, v4, v5}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->logForResponse(Lokhttp3/Response;J)Lokhttp3/Response;

    move-result-object v6

    return-object v6

    .line 94
    .end local v3    # "response":Lokhttp3/Response;
    .end local v4    # "tookMs":J
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<-- HTTP FAILED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 96
    throw v3
.end method

.method public setColorLevel(Ljava/util/logging/Level;)V
    .locals 0
    .param p1, "level"    # Ljava/util/logging/Level;

    .line 72
    iput-object p1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->colorLevel:Ljava/util/logging/Level;

    .line 73
    return-void
.end method

.method public setPrintLevel(Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;)V
    .locals 2
    .param p1, "level"    # Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    .line 67
    iget-object v0, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-eqz v0, :cond_0

    .line 68
    iput-object p1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    .line 69
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "printLevel == null. Use Level.NONE instead."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
