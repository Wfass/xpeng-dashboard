.class final enum Lzipkin2/reporter/BytesMessageEncoder$1;
.super Lzipkin2/reporter/BytesMessageEncoder;
.source "BytesMessageEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/reporter/BytesMessageEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lzipkin2/reporter/BytesMessageEncoder;-><init>(Ljava/lang/String;ILzipkin2/reporter/BytesMessageEncoder$1;)V

    return-void
.end method


# virtual methods
.method public encode(Ljava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 30
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/2addr v2, v3

    if-ge v4, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    move v3, v4

    goto :goto_0

    .line 34
    :cond_1
    new-array v2, v2, [B

    const/16 v3, 0x5b

    .line 36
    aput-byte v3, v2, v1

    const/4 v3, 0x1

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_3

    add-int/lit8 v5, v4, 0x1

    .line 38
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 39
    array-length v6, v4

    invoke-static {v4, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    array-length v4, v4

    add-int/2addr v3, v4

    if-ge v5, v0, :cond_2

    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0x2c

    .line 41
    aput-byte v6, v2, v3

    move v3, v4

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    const/16 p1, 0x5d

    .line 43
    aput-byte p1, v2, v3

    return-object v2
.end method
