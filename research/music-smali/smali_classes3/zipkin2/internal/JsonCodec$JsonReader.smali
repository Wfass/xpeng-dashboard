.class public final Lzipkin2/internal/JsonCodec$JsonReader;
.super Ljava/lang/Object;
.source "JsonCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/JsonCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonReader"
.end annotation


# instance fields
.field final a:Lzipkin2/internal/gson/stream/JsonReader;


# direct methods
.method constructor <init>([B)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lzipkin2/internal/gson/stream/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object p1, Lzipkin2/internal/JsonCodec;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lzipkin2/internal/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lzipkin2/internal/JsonCodec$JsonReader;->a:Lzipkin2/internal/gson/stream/JsonReader;

    return-void
.end method


# virtual methods
.method public beginArray()V
    .locals 1

    .line 55
    iget-object v0, p0, Lzipkin2/internal/JsonCodec$JsonReader;->a:Lzipkin2/internal/gson/stream/JsonReader;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/JsonReader;->beginArray()V

    return-void
.end method

.method public beginObject()V
    .locals 1

    .line 67
    iget-object v0, p0, Lzipkin2/internal/JsonCodec$JsonReader;->a:Lzipkin2/internal/gson/stream/JsonReader;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/JsonReader;->beginObject()V

    return-void
.end method

.method public endArray()V
    .locals 1

    .line 63
    iget-object v0, p0, Lzipkin2/internal/JsonCodec$JsonReader;->a:Lzipkin2/internal/gson/stream/JsonReader;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/JsonReader;->endArray()V

    return-void
.end method

.method public endObject()V
    .locals 1

    .line 71
    iget-object v0, p0, Lzipkin2/internal/JsonCodec$JsonReader;->a:Lzipkin2/internal/gson/stream/JsonReader;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lzipkin2/internal/JsonCodec$JsonReader;->a:Lzipkin2/internal/gson/stream/JsonReader;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lzipkin2/internal/JsonCodec$JsonReader;->a:Lzipkin2/internal/gson/stream/JsonReader;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextBoolean()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lzipkin2/internal/JsonCodec$JsonReader;->a:Lzipkin2/internal/gson/stream/JsonReader;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public nextInt()I
    .locals 1

    .line 99
    iget-object v0, p0, Lzipkin2/internal/JsonCodec$JsonReader;->a:Lzipkin2/internal/gson/stream/JsonReader;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/JsonReader;->nextInt()I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 2

    .line 87
    iget-object v0, p0, Lzipkin2/internal/JsonCodec$JsonReader;->a:Lzipkin2/internal/gson/stream/JsonReader;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/JsonReader;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lzipkin2/internal/JsonCodec$JsonReader;->a:Lzipkin2/internal/gson/stream/JsonReader;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lzipkin2/internal/JsonCodec$JsonReader;->a:Lzipkin2/internal/gson/stream/JsonReader;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public peekBoolean()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lzipkin2/internal/JsonCodec$JsonReader;->a:Lzipkin2/internal/gson/stream/JsonReader;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/JsonReader;->peek()Lzipkin2/internal/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lzipkin2/internal/gson/stream/JsonToken;->BOOLEAN:Lzipkin2/internal/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peekNull()Z
    .locals 2

    .line 111
    iget-object v0, p0, Lzipkin2/internal/JsonCodec$JsonReader;->a:Lzipkin2/internal/gson/stream/JsonReader;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/JsonReader;->peek()Lzipkin2/internal/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lzipkin2/internal/gson/stream/JsonToken;->NULL:Lzipkin2/internal/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peekString()Z
    .locals 2

    .line 103
    iget-object v0, p0, Lzipkin2/internal/JsonCodec$JsonReader;->a:Lzipkin2/internal/gson/stream/JsonReader;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/JsonReader;->peek()Lzipkin2/internal/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lzipkin2/internal/gson/stream/JsonToken;->STRING:Lzipkin2/internal/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public skipValue()V
    .locals 1

    .line 83
    iget-object v0, p0, Lzipkin2/internal/JsonCodec$JsonReader;->a:Lzipkin2/internal/gson/stream/JsonReader;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/JsonReader;->skipValue()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lzipkin2/internal/JsonCodec$JsonReader;->a:Lzipkin2/internal/gson/stream/JsonReader;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/JsonReader;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
