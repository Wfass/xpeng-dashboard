.class final enum Lzipkin2/codec/Encoding$1;
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

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzipkin2/codec/Encoding;-><init>(Ljava/lang/String;ILzipkin2/codec/Encoding$1;)V

    return-void
.end method


# virtual methods
.method public listSizeInBytes(I)I
    .locals 1
    .param p1, "encodedSizeInBytes"    # I

    .line 24
    const/4 v0, 0x2

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

    .line 29
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x2

    .line 30
    .local v0, "sizeInBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 31
    add-int/lit8 v3, v1, 0x1

    .local v3, "i":I
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "i":I
    check-cast v1, [B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 32
    if-ge v3, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 30
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_0
    move v1, v3

    goto :goto_0

    .line 34
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    return v0
.end method
