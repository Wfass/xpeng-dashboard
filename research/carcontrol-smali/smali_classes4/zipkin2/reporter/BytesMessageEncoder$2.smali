.class final enum Lzipkin2/reporter/BytesMessageEncoder$2;
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

    .line 57
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

    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 62
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_0
    new-array v3, v4, [B

    const/16 v4, 0xc

    .line 69
    aput-byte v4, v3, v2

    const/4 v4, 0x2

    ushr-int/lit8 v5, v0, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x1

    .line 70
    aput-byte v5, v3, v6

    const/4 v5, 0x3

    ushr-int/lit8 v6, v0, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 71
    aput-byte v6, v3, v4

    const/4 v4, 0x4

    ushr-int/lit8 v6, v0, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 72
    aput-byte v6, v3, v5

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    .line 73
    aput-byte v5, v3, v4

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 77
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 78
    array-length v6, v4

    invoke-static {v4, v2, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    array-length v4, v4

    add-int/2addr v1, v4

    move v4, v5

    goto :goto_1

    :cond_1
    return-object v3
.end method
