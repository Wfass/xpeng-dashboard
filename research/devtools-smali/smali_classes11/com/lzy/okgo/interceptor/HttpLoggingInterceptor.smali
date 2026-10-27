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
.field private logger:Ljava/util/logging/Logger;

.field private volatile me:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

.field private mf:Ljava/util/logging/Level;


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

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->mg:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->me:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    .line 63
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->logger:Ljava/util/logging/Logger;

    .line 64
    return-void
.end method

.method private static a(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;
    .locals 1

    .line 190
    if-eqz p0, :cond_0

    sget-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 191
    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 192
    :cond_1
    return-object p0
.end method

.method private a(Lokhttp3/Response;J)Lokhttp3/Response;
    .locals 8

    .line 152
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->me:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v3, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->mj:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    .line 156
    move v2, v5

    goto :goto_0

    .line 155
    :cond_0
    nop

    .line 156
    move v2, v4

    :goto_0
    iget-object v3, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->me:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v6, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->mj:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-eq v3, v6, :cond_2

    iget-object v3, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->me:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v6, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->mi:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-ne v3, v6, :cond_1

    goto :goto_1

    .line 159
    :cond_1
    move v5, v4

    goto :goto_2

    .line 156
    :cond_2
    :goto_1
    nop

    .line 159
    :goto_2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<-- "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms\uff09"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 160
    if-eqz v5, :cond_6

    .line 161
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p2

    .line 162
    invoke-virtual {p2}, Lokhttp3/Headers;->size()I

    move-result p3

    :goto_3
    if-ge v4, p3, :cond_3

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 162
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 165
    :cond_3
    const-string p2, " "

    invoke-direct {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 166
    if-eqz v2, :cond_6

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_6

    .line 167
    if-nez v1, :cond_4

    .line 184
    const-string p2, "<-- END HTTP"

    invoke-direct {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    return-object p1

    .line 169
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->b(Lokhttp3/MediaType;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 170
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lcom/lzy/okgo/f/c;->b(Ljava/io/InputStream;)[B

    move-result-object p2

    .line 171
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p3

    .line 172
    new-instance v0, Ljava/lang/String;

    invoke-static {p3}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->a(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-direct {v0, p2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 173
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tbody:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p3

    invoke-static {p3, p2}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;

    move-result-object p2

    .line 175
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    const-string p1, "<-- END HTTP"

    invoke-direct {p0, p1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    return-object p2

    .line 177
    :cond_5
    :try_start_2
    const-string p2, "\tbody: maybe [binary body], omitted!"

    invoke-direct {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 184
    :catchall_0
    move-exception p1

    goto :goto_5

    .line 181
    :catch_0
    move-exception p2

    .line 182
    :try_start_3
    invoke-static {p2}, Lcom/lzy/okgo/f/d;->f(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    :cond_6
    :goto_4
    const-string p2, "<-- END HTTP"

    invoke-direct {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 185
    nop

    .line 186
    return-object p1

    .line 184
    :goto_5
    const-string p2, "<-- END HTTP"

    invoke-direct {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lokhttp3/Request;)V
    .locals 3

    .line 215
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p1

    .line 217
    if-nez p1, :cond_0

    return-void

    .line 218
    :cond_0
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 219
    invoke-virtual {p1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 220
    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object p1

    invoke-static {p1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->a(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tbody:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    goto :goto_0

    .line 222
    :catch_0
    move-exception p1

    .line 223
    invoke-static {p1}, Lcom/lzy/okgo/f/d;->f(Ljava/lang/Throwable;)V

    .line 225
    :goto_0
    return-void
.end method

.method private a(Lokhttp3/Request;Lokhttp3/Connection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->me:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->mj:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    move v0, v3

    goto :goto_0

    .line 105
    :cond_0
    nop

    .line 106
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->me:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v4, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->mj:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->me:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v4, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->mi:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-ne v1, v4, :cond_1

    goto :goto_1

    .line 107
    :cond_1
    move v1, v2

    goto :goto_2

    .line 106
    :cond_2
    :goto_1
    nop

    .line 107
    move v1, v3

    :goto_2
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    .line 108
    if-eqz v4, :cond_3

    goto :goto_3

    .line 109
    :cond_3
    move v3, v2

    :goto_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object p2

    goto :goto_4

    :cond_4
    sget-object p2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 112
    :goto_4
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

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 113
    invoke-direct {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 115
    if-eqz v1, :cond_a

    .line 116
    if-eqz v3, :cond_6

    .line 119
    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tContent-Type: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 122
    :cond_5
    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long p2, v5, v7

    if-eqz p2, :cond_6

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tContent-Length: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 126
    :cond_6
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p2

    .line 127
    invoke-virtual {p2}, Lokhttp3/Headers;->size()I

    move-result v1

    :goto_5
    if-ge v2, v1, :cond_8

    .line 128
    invoke-virtual {p2, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    .line 130
    const-string v6, "Content-Type"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "Content-Length"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 127
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 135
    :cond_8
    const-string p2, " "

    invoke-direct {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 136
    if-eqz v0, :cond_a

    if-eqz v3, :cond_a

    .line 137
    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->b(Lokhttp3/MediaType;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 138
    invoke-direct {p0, p1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->a(Lokhttp3/Request;)V

    goto :goto_6

    .line 140
    :cond_9
    const-string p2, "\tbody: maybe [binary body], omitted!"

    invoke-direct {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_a
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :catchall_0
    move-exception p2

    goto :goto_8

    .line 144
    :catch_0
    move-exception p2

    .line 145
    :try_start_1
    invoke-static {p2}, Lcom/lzy/okgo/f/d;->f(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    const-string v0, "--> END "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 148
    nop

    .line 149
    return-void

    .line 147
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--> END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    throw p2
.end method

.method private static b(Lokhttp3/MediaType;)Z
    .locals 4

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

    move-result-object p0

    .line 205
    if-eqz p0, :cond_3

    .line 206
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 207
    const-string v1, "x-www-form-urlencoded"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "json"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 208
    :cond_2
    return v2

    .line 210
    :cond_3
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->mf:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 77
    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->me:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-eqz v0, :cond_0

    .line 68
    iput-object p1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->me:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    .line 69
    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "printLevel == null. Use Level.NONE instead."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/util/logging/Level;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->mf:Ljava/util/logging/Level;

    .line 73
    return-void
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->me:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v2, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->mg:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-ne v1, v2, :cond_0

    .line 83
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->a(Lokhttp3/Request;Lokhttp3/Connection;)V

    .line 90
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 93
    :try_start_0
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    nop

    .line 98
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 101
    invoke-direct {p0, p1, v0, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->a(Lokhttp3/Response;J)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 94
    :catch_0
    move-exception p1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<-- HTTP FAILED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 96
    throw p1
.end method
