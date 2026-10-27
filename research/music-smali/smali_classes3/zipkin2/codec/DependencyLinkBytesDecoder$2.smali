.class Lzipkin2/codec/DependencyLinkBytesDecoder$2;
.super Ljava/lang/Object;
.source "DependencyLinkBytesDecoder.java"

# interfaces
.implements Lzipkin2/internal/JsonCodec$JsonReaderAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/codec/DependencyLinkBytesDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzipkin2/internal/JsonCodec$JsonReaderAdapter<",
        "Lzipkin2/DependencyLink;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lzipkin2/codec/DependencyLinkBytesDecoder$2;->fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Lzipkin2/DependencyLink;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Lzipkin2/DependencyLink;
    .locals 3

    .line 61
    invoke-static {}, Lzipkin2/DependencyLink;->newBuilder()Lzipkin2/DependencyLink$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->beginObject()V

    .line 63
    :goto_0
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parent"

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/DependencyLink$Builder;->parent(Ljava/lang/String;)Lzipkin2/DependencyLink$Builder;

    goto :goto_0

    :cond_0
    const-string v2, "child"

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/DependencyLink$Builder;->child(Ljava/lang/String;)Lzipkin2/DependencyLink$Builder;

    goto :goto_0

    :cond_1
    const-string v2, "callCount"

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/DependencyLink$Builder;->callCount(J)Lzipkin2/DependencyLink$Builder;

    goto :goto_0

    :cond_2
    const-string v2, "errorCount"

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/DependencyLink$Builder;->errorCount(J)Lzipkin2/DependencyLink$Builder;

    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->endObject()V

    .line 78
    invoke-virtual {v0}, Lzipkin2/DependencyLink$Builder;->build()Lzipkin2/DependencyLink;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DependencyLink"

    return-object v0
.end method
