.class public final Lalf;
.super Ljava/lang/Object;
.source "BitMatrix.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    .line 62
    iput p1, p0, Lalf;->a:I

    .line 63
    iput p2, p0, Lalf;->b:I

    add-int/lit8 p1, p1, 0x1f

    .line 64
    div-int/lit8 p1, p1, 0x20

    iput p1, p0, Lalf;->c:I

    .line 65
    iget p1, p0, Lalf;->c:I

    mul-int/2addr p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lalf;->d:[I

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both dimensions must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(III[I)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lalf;->a:I

    .line 70
    iput p2, p0, Lalf;->b:I

    .line 71
    iput p3, p0, Lalf;->c:I

    .line 72
    iput-object p4, p0, Lalf;->d:[I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lalf;->b:I

    iget v2, p0, Lalf;->a:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 523
    :goto_0
    iget v3, p0, Lalf;->b:I

    if-ge v2, v3, :cond_2

    move v3, v1

    .line 524
    :goto_1
    iget v4, p0, Lalf;->a:I

    if-ge v3, v4, :cond_1

    .line 525
    invoke-virtual {p0, v3, v2}, Lalf;->a(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p1

    goto :goto_2

    :cond_0
    move-object v4, p2

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 527
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 529
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 455
    iget v0, p0, Lalf;->a:I

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\n"

    .line 506
    invoke-direct {p0, p1, p2, v0}, Lalf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(IIII)V
    .locals 7

    if-ltz p2, :cond_4

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    if-lt p4, v0, :cond_3

    if-lt p3, v0, :cond_3

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    .line 249
    iget v1, p0, Lalf;->b:I

    if-gt p4, v1, :cond_2

    iget v1, p0, Lalf;->a:I

    if-gt p3, v1, :cond_2

    :goto_0
    if-ge p2, p4, :cond_1

    .line 253
    iget v1, p0, Lalf;->c:I

    mul-int/2addr v1, p2

    move v2, p1

    :goto_1
    if-ge v2, p3, :cond_0

    .line 255
    iget-object v3, p0, Lalf;->d:[I

    div-int/lit8 v4, v2, 0x20

    add-int/2addr v4, v1

    aget v5, v3, v4

    and-int/lit8 v6, v2, 0x1f

    shl-int v6, v0, v6

    or-int/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 250
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The region must fit inside the matrix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 245
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height and width must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Left and top must be nonnegative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)Z
    .locals 1

    .line 161
    iget v0, p0, Lalf;->c:I

    mul-int/2addr p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    .line 162
    iget-object v0, p0, Lalf;->d:[I

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

.method public b()I
    .locals 1

    .line 462
    iget v0, p0, Lalf;->b:I

    return v0
.end method

.method public c()Lalf;
    .locals 5

    .line 534
    new-instance v0, Lalf;

    iget v1, p0, Lalf;->a:I

    iget v2, p0, Lalf;->b:I

    iget v3, p0, Lalf;->c:I

    iget-object v4, p0, Lalf;->d:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {v0, v1, v2, v3, v4}, Lalf;-><init>(III[I)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lalf;->c()Lalf;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 474
    instance-of v0, p1, Lalf;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 477
    :cond_0
    check-cast p1, Lalf;

    .line 478
    iget v0, p0, Lalf;->a:I

    iget v2, p1, Lalf;->a:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lalf;->b:I

    iget v2, p1, Lalf;->b:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lalf;->c:I

    iget v2, p1, Lalf;->c:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lalf;->d:[I

    iget-object p1, p1, Lalf;->d:[I

    .line 479
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 484
    iget v0, p0, Lalf;->a:I

    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 486
    iget v0, p0, Lalf;->b:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 487
    iget v0, p0, Lalf;->c:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 488
    iget-object v0, p0, Lalf;->d:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "X "

    const-string v1, "  "

    .line 497
    invoke-virtual {p0, v0, v1}, Lalf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
