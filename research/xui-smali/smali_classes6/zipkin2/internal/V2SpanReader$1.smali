.class Lzipkin2/internal/V2SpanReader$1;
.super Ljava/lang/Object;
.source "V2SpanReader.java"

# interfaces
.implements Lzipkin2/internal/JsonCodec$JsonReaderAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/V2SpanReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzipkin2/internal/JsonCodec$JsonReaderAdapter<",
        "Lzipkin2/Endpoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1}, Lzipkin2/internal/V2SpanReader$1;->fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Lzipkin2/Endpoint;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Lzipkin2/Endpoint;
    .locals 4
    .param p1, "reader"    # Lzipkin2/internal/JsonCodec$JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-static {}, Lzipkin2/Endpoint;->newBuilder()Lzipkin2/Endpoint$Builder;

    move-result-object v0

    .line 112
    .local v0, "result":Lzipkin2/Endpoint$Builder;
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->beginObject()V

    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "readField":Z
    :goto_0
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 115
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->peekNull()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    .line 118
    goto :goto_0

    .line 120
    :cond_0
    const-string v3, "serviceName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lzipkin2/Endpoint$Builder;->serviceName(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;

    .line 122
    const/4 v1, 0x1

    goto :goto_2

    .line 123
    :cond_1
    const-string v3, "ipv4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "ipv6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 126
    :cond_2
    const-string v3, "port"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextInt()I

    move-result v3

    invoke-virtual {v0, v3}, Lzipkin2/Endpoint$Builder;->port(I)Lzipkin2/Endpoint$Builder;

    .line 128
    const/4 v1, 0x1

    goto :goto_2

    .line 130
    :cond_3
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    .end local v2    # "nextName":Ljava/lang/String;
    goto :goto_2

    .line 124
    .restart local v2    # "nextName":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lzipkin2/Endpoint$Builder;->parseIp(Ljava/lang/String;)Z

    .line 125
    const/4 v1, 0x1

    .line 132
    .end local v2    # "nextName":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 133
    :cond_5
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->endObject()V

    .line 134
    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lzipkin2/Endpoint$Builder;->build()Lzipkin2/Endpoint;

    move-result-object v2

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 138
    const-string v0, "Endpoint"

    return-object v0
.end method
