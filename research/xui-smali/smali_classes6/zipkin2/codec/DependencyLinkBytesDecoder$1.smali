.class final enum Lzipkin2/codec/DependencyLinkBytesDecoder$1;
.super Lzipkin2/codec/DependencyLinkBytesDecoder;
.source "DependencyLinkBytesDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/codec/DependencyLinkBytesDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzipkin2/codec/DependencyLinkBytesDecoder;-><init>(Ljava/lang/String;ILzipkin2/codec/DependencyLinkBytesDecoder$1;)V

    return-void
.end method


# virtual methods
.method public decode([BLjava/util/Collection;)Z
    .locals 1
    .param p1, "link"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lzipkin2/DependencyLink;",
            ">;)Z"
        }
    .end annotation

    .line 35
    .local p2, "out":Ljava/util/Collection;, "Ljava/util/Collection<Lzipkin2/DependencyLink;>;"
    sget-object v0, Lzipkin2/codec/DependencyLinkBytesDecoder$1;->READER:Lzipkin2/internal/JsonCodec$JsonReaderAdapter;

    invoke-static {v0, p1, p2}, Lzipkin2/internal/JsonCodec;->read(Lzipkin2/internal/JsonCodec$JsonReaderAdapter;[BLjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decodeList([B)Ljava/util/List;
    .locals 2
    .param p1, "links"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lzipkin2/DependencyLink;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Lzipkin2/DependencyLink;>;"
    invoke-virtual {p0, p1, v0}, Lzipkin2/codec/DependencyLinkBytesDecoder$1;->decodeList([BLjava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 53
    :cond_0
    return-object v0
.end method

.method public decodeList([BLjava/util/Collection;)Z
    .locals 1
    .param p1, "links"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lzipkin2/DependencyLink;",
            ">;)Z"
        }
    .end annotation

    .line 46
    .local p2, "out":Ljava/util/Collection;, "Ljava/util/Collection<Lzipkin2/DependencyLink;>;"
    sget-object v0, Lzipkin2/codec/DependencyLinkBytesDecoder$1;->READER:Lzipkin2/internal/JsonCodec$JsonReaderAdapter;

    invoke-static {v0, p1, p2}, Lzipkin2/internal/JsonCodec;->readList(Lzipkin2/internal/JsonCodec$JsonReaderAdapter;[BLjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic decodeOne([B)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lzipkin2/codec/DependencyLinkBytesDecoder$1;->decodeOne([B)Lzipkin2/DependencyLink;

    move-result-object p1

    return-object p1
.end method

.method public decodeOne([B)Lzipkin2/DependencyLink;
    .locals 1
    .param p1, "link"    # [B
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 41
    sget-object v0, Lzipkin2/codec/DependencyLinkBytesDecoder$1;->READER:Lzipkin2/internal/JsonCodec$JsonReaderAdapter;

    invoke-static {v0, p1}, Lzipkin2/internal/JsonCodec;->readOne(Lzipkin2/internal/JsonCodec$JsonReaderAdapter;[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzipkin2/DependencyLink;

    return-object v0
.end method

.method public encoding()Lzipkin2/codec/Encoding;
    .locals 1

    .line 30
    sget-object v0, Lzipkin2/codec/Encoding;->JSON:Lzipkin2/codec/Encoding;

    return-object v0
.end method
