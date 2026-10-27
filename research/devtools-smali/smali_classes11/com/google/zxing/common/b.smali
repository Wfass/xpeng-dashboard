.class public final Lcom/google/zxing/common/b;
.super Ljava/lang/Object;
.source "BitMatrix.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final height:I

.field private final iI:[I

.field private final iJ:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    .line 52
    iput p1, p0, Lcom/google/zxing/common/b;->width:I

    .line 53
    iput p2, p0, Lcom/google/zxing/common/b;->height:I

    .line 54
    add-int/lit8 p1, p1, 0x1f

    div-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/zxing/common/b;->iJ:I

    .line 55
    iget p1, p0, Lcom/google/zxing/common/b;->iJ:I

    mul-int/2addr p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/zxing/common/b;->iI:[I

    .line 56
    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both dimensions must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(III[I)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/google/zxing/common/b;->width:I

    .line 60
    iput p2, p0, Lcom/google/zxing/common/b;->height:I

    .line 61
    iput p3, p0, Lcom/google/zxing/common/b;->iJ:I

    .line 62
    iput-object p4, p0, Lcom/google/zxing/common/b;->iI:[I

    .line 63
    return-void
.end method


# virtual methods
.method public b(IIII)V
    .locals 7

    .line 118
    if-ltz p2, :cond_4

    if-ltz p1, :cond_4

    .line 121
    const/4 v0, 0x1

    if-lt p4, v0, :cond_3

    if-lt p3, v0, :cond_3

    .line 124
    add-int/2addr p3, p1

    .line 125
    add-int/2addr p4, p2

    .line 126
    iget v1, p0, Lcom/google/zxing/common/b;->height:I

    if-gt p4, v1, :cond_2

    iget v1, p0, Lcom/google/zxing/common/b;->width:I

    if-gt p3, v1, :cond_2

    .line 129
    :goto_0
    if-ge p2, p4, :cond_1

    .line 130
    iget v1, p0, Lcom/google/zxing/common/b;->iJ:I

    mul-int/2addr v1, p2

    .line 131
    move v2, p1

    :goto_1
    if-ge v2, p3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/google/zxing/common/b;->iI:[I

    div-int/lit8 v4, v2, 0x20

    add-int/2addr v4, v1

    aget v5, v3, v4

    and-int/lit8 v6, v2, 0x1f

    shl-int v6, v0, v6

    or-int/2addr v5, v6

    aput v5, v3, v4

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 135
    :cond_1
    return-void

    .line 127
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The region must fit inside the matrix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height and width must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Left and top must be nonnegative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ck()Lcom/google/zxing/common/b;
    .locals 5

    .line 332
    new-instance v0, Lcom/google/zxing/common/b;

    iget v1, p0, Lcom/google/zxing/common/b;->width:I

    iget v2, p0, Lcom/google/zxing/common/b;->height:I

    iget v3, p0, Lcom/google/zxing/common/b;->iJ:I

    iget-object v4, p0, Lcom/google/zxing/common/b;->iI:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/b;-><init>(III[I)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/google/zxing/common/b;->ck()Lcom/google/zxing/common/b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 300
    instance-of v0, p1, Lcom/google/zxing/common/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 301
    return v1

    .line 303
    :cond_0
    check-cast p1, Lcom/google/zxing/common/b;

    .line 304
    iget v0, p0, Lcom/google/zxing/common/b;->width:I

    iget v2, p1, Lcom/google/zxing/common/b;->width:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/zxing/common/b;->height:I

    iget v2, p1, Lcom/google/zxing/common/b;->height:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/zxing/common/b;->iJ:I

    iget v2, p1, Lcom/google/zxing/common/b;->iJ:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/zxing/common/b;->iI:[I

    iget-object p1, p1, Lcom/google/zxing/common/b;->iI:[I

    .line 305
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    nop

    .line 304
    :cond_1
    return v1
.end method

.method public f(II)Z
    .locals 1

    .line 73
    iget v0, p0, Lcom/google/zxing/common/b;->iJ:I

    mul-int/2addr p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    .line 74
    iget-object v0, p0, Lcom/google/zxing/common/b;->iI:[I

    aget p2, v0, p2

    and-int/lit8 p1, p1, 0x1f

    ushr-int p1, p2, p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public hashCode()I
    .locals 3

    .line 310
    iget v0, p0, Lcom/google/zxing/common/b;->width:I

    .line 311
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/zxing/common/b;->width:I

    add-int/2addr v0, v2

    .line 312
    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/zxing/common/b;->height:I

    add-int/2addr v0, v2

    .line 313
    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/zxing/common/b;->iJ:I

    add-int/2addr v0, v2

    .line 314
    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/zxing/common/b;->iI:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    .line 315
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/common/b;->height:I

    iget v2, p0, Lcom/google/zxing/common/b;->width:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 321
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/google/zxing/common/b;->height:I

    if-ge v2, v3, :cond_2

    .line 322
    move v3, v1

    :goto_1
    iget v4, p0, Lcom/google/zxing/common/b;->width:I

    if-ge v3, v4, :cond_1

    .line 323
    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/b;->f(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "X "

    goto :goto_2

    :cond_0
    const-string v4, "  "

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 325
    :cond_1
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
