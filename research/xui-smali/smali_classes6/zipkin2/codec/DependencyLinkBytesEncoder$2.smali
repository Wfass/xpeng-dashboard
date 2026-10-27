.class Lzipkin2/codec/DependencyLinkBytesEncoder$2;
.super Ljava/lang/Object;
.source "DependencyLinkBytesEncoder.java"

# interfaces
.implements Lzipkin2/internal/Buffer$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/codec/DependencyLinkBytesEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzipkin2/internal/Buffer$Writer<",
        "Lzipkin2/DependencyLink;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic sizeInBytes(Ljava/lang/Object;)I
    .locals 0

    .line 44
    check-cast p1, Lzipkin2/DependencyLink;

    invoke-virtual {p0, p1}, Lzipkin2/codec/DependencyLinkBytesEncoder$2;->sizeInBytes(Lzipkin2/DependencyLink;)I

    move-result p1

    return p1
.end method

.method public sizeInBytes(Lzipkin2/DependencyLink;)I
    .locals 5
    .param p1, "value"    # Lzipkin2/DependencyLink;

    .line 46
    const/16 v0, 0x25

    .line 47
    .local v0, "sizeInBytes":I
    invoke-virtual {p1}, Lzipkin2/DependencyLink;->parent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzipkin2/internal/JsonEscaper;->jsonEscapedSizeInBytes(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    invoke-virtual {p1}, Lzipkin2/DependencyLink;->child()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzipkin2/internal/JsonEscaper;->jsonEscapedSizeInBytes(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    invoke-virtual {p1}, Lzipkin2/DependencyLink;->callCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Lzipkin2/internal/Buffer;->asciiSizeInBytes(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    invoke-virtual {p1}, Lzipkin2/DependencyLink;->errorCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 51
    add-int/lit8 v0, v0, 0xe

    .line 52
    invoke-virtual {p1}, Lzipkin2/DependencyLink;->errorCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Lzipkin2/internal/Buffer;->asciiSizeInBytes(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "DependencyLink"

    return-object v0
.end method

.method public bridge synthetic write(Ljava/lang/Object;Lzipkin2/internal/Buffer;)V
    .locals 0

    .line 44
    check-cast p1, Lzipkin2/DependencyLink;

    invoke-virtual {p0, p1, p2}, Lzipkin2/codec/DependencyLinkBytesEncoder$2;->write(Lzipkin2/DependencyLink;Lzipkin2/internal/Buffer;)V

    return-void
.end method

.method public write(Lzipkin2/DependencyLink;Lzipkin2/internal/Buffer;)V
    .locals 4
    .param p1, "value"    # Lzipkin2/DependencyLink;
    .param p2, "b"    # Lzipkin2/internal/Buffer;

    .line 58
    const-string/jumbo v0, "{\"parent\":\""

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/DependencyLink;->parent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzipkin2/internal/JsonEscaper;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 59
    const-string v0, "\",\"child\":\""

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/DependencyLink;->child()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzipkin2/internal/JsonEscaper;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 60
    const-string v0, "\",\"callCount\":"

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/DependencyLink;->callCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/internal/Buffer;->writeAscii(J)Lzipkin2/internal/Buffer;

    .line 61
    invoke-virtual {p1}, Lzipkin2/DependencyLink;->errorCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 62
    const-string v0, ",\"errorCount\":"

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/DependencyLink;->errorCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/internal/Buffer;->writeAscii(J)Lzipkin2/internal/Buffer;

    .line 64
    :cond_0
    const/16 v0, 0x7d

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 65
    return-void
.end method
