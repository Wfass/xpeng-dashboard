.class final enum Lzipkin2/codec/Encoding$2;
.super Lzipkin2/codec/Encoding;
.source "Encoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/codec/Encoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzipkin2/codec/Encoding;-><init>(Ljava/lang/String;ILzipkin2/codec/Encoding$1;)V

    return-void
.end method


# virtual methods
.method public listSizeInBytes(I)I
    .locals 1
    .param p1, "encodedSizeInBytes"    # I

    .line 50
    const/4 v0, 0x5

    add-int/2addr v0, p1

    return v0
.end method

.method public listSizeInBytes(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)I"
        }
    .end annotation

    .line 55
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x5

    .line 56
    .local v0, "sizeInBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 57
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/2addr v0, v3

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_0
    return v0
.end method
