.class final Lcif;
.super Lcij;


# instance fields
.field private final a:Lcii;

.field private final b:[I

.field private final i:Lcik;

.field private final j:I

.field private final k:I

.field private l:I

.field private m:I


# direct methods
.method constructor <init>(IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcij;-><init>(IIIII)V

    const/4 p2, -0x1

    iput p2, p0, Lcif;->l:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcif;->k:I

    iget p2, p0, Lcif;->k:I

    iput p2, p0, Lcif;->m:I

    new-instance p2, Lcii;

    invoke-direct {p2, p1}, Lcii;-><init>(I)V

    iput-object p2, p0, Lcif;->a:Lcii;

    iget p1, p0, Lcif;->k:I

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcif;->b:[I

    new-instance p1, Lcik;

    add-int/lit8 p2, p4, -0x1

    invoke-direct {p1, p2}, Lcik;-><init>(I)V

    iput-object p1, p0, Lcif;->i:Lcik;

    if-lez p6, :cond_0

    goto :goto_0

    :cond_0
    div-int/lit8 p4, p4, 0x2

    add-int/lit8 p6, p4, 0x10

    :goto_0
    iput p6, p0, Lcif;->j:I

    return-void
.end method

.method private d(II)V
    .locals 12

    iget v0, p0, Lcif;->j:I

    iget v1, p0, Lcif;->l:I

    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    iget v6, p0, Lcif;->m:I

    sub-int/2addr v6, p2

    add-int/lit8 v7, v0, -0x1

    if-eqz v0, :cond_6

    iget v0, p0, Lcif;->k:I

    if-lt v6, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v8, p0, Lcif;->l:I

    sub-int v9, v8, v6

    if-le v6, v8, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    add-int/2addr v9, v0

    shl-int/lit8 v0, v9, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v9, p0, Lcif;->e:[B

    iget v10, p0, Lcif;->f:I

    add-int/2addr v10, v8

    sub-int/2addr v10, v6

    aget-byte v9, v9, v10

    iget-object v10, p0, Lcif;->e:[B

    iget v11, p0, Lcif;->f:I

    add-int/2addr v11, v8

    aget-byte v10, v10, v11

    if-ne v9, v10, :cond_4

    :cond_2
    add-int/lit8 v8, v8, 0x1

    if-ne v8, p1, :cond_3

    iget-object p1, p0, Lcif;->b:[I

    aget p2, p1, v0

    aput p2, p1, v1

    add-int/lit8 v0, v0, 0x1

    aget p2, p1, v0

    aput p2, p1, v2

    return-void

    :cond_3
    iget-object v9, p0, Lcif;->e:[B

    iget v10, p0, Lcif;->f:I

    add-int/2addr v10, v8

    sub-int/2addr v10, v6

    aget-byte v9, v9, v10

    iget-object v10, p0, Lcif;->e:[B

    iget v11, p0, Lcif;->f:I

    add-int/2addr v11, v8

    aget-byte v10, v10, v11

    if-eq v9, v10, :cond_2

    :cond_4
    iget-object v9, p0, Lcif;->e:[B

    iget v10, p0, Lcif;->f:I

    add-int/2addr v10, v8

    sub-int/2addr v10, v6

    aget-byte v6, v9, v10

    and-int/lit16 v6, v6, 0xff

    iget-object v9, p0, Lcif;->e:[B

    iget v10, p0, Lcif;->f:I

    add-int/2addr v10, v8

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    if-ge v6, v9, :cond_5

    iget-object v5, p0, Lcif;->b:[I

    aput p2, v5, v1

    add-int/lit8 v0, v0, 0x1

    aget p2, v5, v0

    move v1, v0

    move v5, v8

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcif;->b:[I

    aput p2, v4, v2

    aget p2, v4, v0

    move v2, v0

    move v4, v8

    :goto_2
    move v0, v7

    goto :goto_0

    :cond_6
    :goto_3
    iget-object p1, p0, Lcif;->b:[I

    aput v3, p1, v2

    aput v3, p1, v1

    return-void
.end method

.method private g()I
    .locals 3

    iget v0, p0, Lcif;->d:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcif;->c(II)I

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcif;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcif;->m:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcif;->k:I

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcif;->a:Lcii;

    invoke-virtual {v1, v2}, Lcii;->c(I)V

    iget-object v1, p0, Lcif;->b:[I

    invoke-static {v1, v2}, Lcif;->a([II)V

    iget v1, p0, Lcif;->m:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcif;->m:I

    :cond_0
    iget v1, p0, Lcif;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcif;->l:I

    iget v2, p0, Lcif;->k:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcif;->l:I

    :cond_1
    return v0
.end method


# virtual methods
.method public a()Lcik;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcif;->i:Lcik;

    const/4 v2, 0x0

    iput v2, v1, Lcik;->c:I

    iget v1, v0, Lcif;->c:I

    iget v3, v0, Lcif;->d:I

    invoke-direct/range {p0 .. p0}, Lcif;->g()I

    move-result v4

    if-ge v4, v1, :cond_1

    if-nez v4, :cond_0

    iget-object v1, v0, Lcif;->i:Lcik;

    return-object v1

    :cond_0
    if-le v3, v4, :cond_2

    move v3, v4

    goto :goto_0

    :cond_1
    move v4, v1

    :cond_2
    :goto_0
    iget-object v1, v0, Lcif;->a:Lcii;

    iget-object v5, v0, Lcif;->e:[B

    iget v6, v0, Lcif;->f:I

    invoke-virtual {v1, v5, v6}, Lcii;->a([BI)V

    iget v1, v0, Lcif;->m:I

    iget-object v5, v0, Lcif;->a:Lcii;

    invoke-virtual {v5}, Lcii;->a()I

    move-result v5

    sub-int/2addr v1, v5

    iget v5, v0, Lcif;->m:I

    iget-object v6, v0, Lcif;->a:Lcii;

    invoke-virtual {v6}, Lcii;->b()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lcif;->a:Lcii;

    invoke-virtual {v6}, Lcii;->c()I

    move-result v6

    iget-object v7, v0, Lcif;->a:Lcii;

    iget v8, v0, Lcif;->m:I

    invoke-virtual {v7, v8}, Lcii;->b(I)V

    iget v7, v0, Lcif;->k:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v1, v7, :cond_3

    iget-object v7, v0, Lcif;->e:[B

    iget v10, v0, Lcif;->f:I

    sub-int/2addr v10, v1

    aget-byte v7, v7, v10

    iget-object v10, v0, Lcif;->e:[B

    iget v11, v0, Lcif;->f:I

    aget-byte v10, v10, v11

    if-ne v7, v10, :cond_3

    iget-object v7, v0, Lcif;->i:Lcik;

    iget-object v7, v7, Lcik;->a:[I

    aput v8, v7, v2

    iget-object v7, v0, Lcif;->i:Lcik;

    iget-object v7, v7, Lcik;->b:[I

    add-int/lit8 v10, v1, -0x1

    aput v10, v7, v2

    iget-object v7, v0, Lcif;->i:Lcik;

    iput v9, v7, Lcik;->c:I

    goto :goto_1

    :cond_3
    move v8, v2

    :goto_1
    const/4 v7, 0x3

    if-eq v1, v5, :cond_4

    iget v10, v0, Lcif;->k:I

    if-ge v5, v10, :cond_4

    iget-object v10, v0, Lcif;->e:[B

    iget v11, v0, Lcif;->f:I

    sub-int/2addr v11, v5

    aget-byte v10, v10, v11

    iget-object v11, v0, Lcif;->e:[B

    iget v12, v0, Lcif;->f:I

    aget-byte v11, v11, v12

    if-ne v10, v11, :cond_4

    iget-object v1, v0, Lcif;->i:Lcik;

    iget-object v1, v1, Lcik;->b:[I

    iget-object v8, v0, Lcif;->i:Lcik;

    iget v10, v8, Lcik;->c:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v8, Lcik;->c:I

    add-int/lit8 v8, v5, -0x1

    aput v8, v1, v10

    move v1, v5

    move v8, v7

    :cond_4
    iget-object v5, v0, Lcif;->i:Lcik;

    iget v5, v5, Lcik;->c:I

    if-lez v5, :cond_6

    :goto_2
    if-ge v8, v4, :cond_5

    iget-object v5, v0, Lcif;->e:[B

    iget v10, v0, Lcif;->f:I

    add-int/2addr v10, v8

    sub-int/2addr v10, v1

    aget-byte v5, v5, v10

    iget-object v10, v0, Lcif;->e:[B

    iget v11, v0, Lcif;->f:I

    add-int/2addr v11, v8

    aget-byte v10, v10, v11

    if-ne v5, v10, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcif;->i:Lcik;

    iget-object v1, v1, Lcik;->a:[I

    iget-object v5, v0, Lcif;->i:Lcik;

    iget v5, v5, Lcik;->c:I

    sub-int/2addr v5, v9

    aput v8, v1, v5

    if-lt v8, v3, :cond_6

    invoke-direct {v0, v3, v6}, Lcif;->d(II)V

    :goto_3
    iget-object v1, v0, Lcif;->i:Lcik;

    return-object v1

    :cond_6
    if-ge v8, v7, :cond_7

    goto :goto_4

    :cond_7
    move v7, v8

    :goto_4
    iget v1, v0, Lcif;->j:I

    iget v5, v0, Lcif;->l:I

    shl-int/lit8 v8, v5, 0x1

    add-int/2addr v8, v9

    shl-int/2addr v5, v9

    move v10, v2

    move v11, v7

    move v7, v10

    :goto_5
    iget v12, v0, Lcif;->m:I

    sub-int/2addr v12, v6

    add-int/lit8 v13, v1, -0x1

    if-eqz v1, :cond_f

    iget v1, v0, Lcif;->k:I

    if-lt v12, v1, :cond_8

    goto/16 :goto_9

    :cond_8
    iget v14, v0, Lcif;->l:I

    sub-int v15, v14, v12

    if-le v12, v14, :cond_9

    goto :goto_6

    :cond_9
    move v1, v2

    :goto_6
    add-int/2addr v15, v1

    shl-int/lit8 v1, v15, 0x1

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget-object v15, v0, Lcif;->e:[B

    iget v2, v0, Lcif;->f:I

    add-int/2addr v2, v14

    sub-int/2addr v2, v12

    aget-byte v2, v15, v2

    iget-object v15, v0, Lcif;->e:[B

    iget v9, v0, Lcif;->f:I

    add-int/2addr v9, v14

    aget-byte v9, v15, v9

    if-ne v2, v9, :cond_d

    :cond_a
    const/4 v2, 0x1

    add-int/2addr v14, v2

    if-ge v14, v4, :cond_b

    iget-object v2, v0, Lcif;->e:[B

    iget v9, v0, Lcif;->f:I

    add-int/2addr v9, v14

    sub-int/2addr v9, v12

    aget-byte v2, v2, v9

    iget-object v9, v0, Lcif;->e:[B

    iget v15, v0, Lcif;->f:I

    add-int/2addr v15, v14

    aget-byte v9, v9, v15

    if-eq v2, v9, :cond_a

    :cond_b
    if-le v14, v11, :cond_d

    iget-object v2, v0, Lcif;->i:Lcik;

    iget-object v2, v2, Lcik;->a:[I

    iget-object v9, v0, Lcif;->i:Lcik;

    iget v9, v9, Lcik;->c:I

    aput v14, v2, v9

    iget-object v2, v0, Lcif;->i:Lcik;

    iget-object v2, v2, Lcik;->b:[I

    iget-object v9, v0, Lcif;->i:Lcik;

    iget v9, v9, Lcik;->c:I

    add-int/lit8 v11, v12, -0x1

    aput v11, v2, v9

    iget-object v2, v0, Lcif;->i:Lcik;

    iget v9, v2, Lcik;->c:I

    const/4 v15, 0x1

    add-int/2addr v9, v15

    iput v9, v2, Lcik;->c:I

    if-lt v14, v3, :cond_c

    iget-object v2, v0, Lcif;->b:[I

    aget v3, v2, v1

    aput v3, v2, v5

    add-int/2addr v1, v15

    aget v1, v2, v1

    aput v1, v2, v8

    goto/16 :goto_3

    :cond_c
    move v11, v14

    goto :goto_7

    :cond_d
    const/4 v15, 0x1

    :goto_7
    iget-object v2, v0, Lcif;->e:[B

    iget v9, v0, Lcif;->f:I

    add-int/2addr v9, v14

    sub-int/2addr v9, v12

    aget-byte v2, v2, v9

    and-int/lit16 v2, v2, 0xff

    iget-object v9, v0, Lcif;->e:[B

    iget v12, v0, Lcif;->f:I

    add-int/2addr v12, v14

    aget-byte v9, v9, v12

    and-int/lit16 v9, v9, 0xff

    if-ge v2, v9, :cond_e

    iget-object v2, v0, Lcif;->b:[I

    aput v6, v2, v5

    add-int/lit8 v1, v1, 0x1

    aget v2, v2, v1

    move v5, v1

    move v6, v2

    move v10, v14

    goto :goto_8

    :cond_e
    iget-object v2, v0, Lcif;->b:[I

    aput v6, v2, v8

    aget v2, v2, v1

    move v8, v1

    move v6, v2

    move v7, v14

    :goto_8
    move v1, v13

    move v9, v15

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_f
    :goto_9
    iget-object v1, v0, Lcif;->b:[I

    const/4 v2, 0x0

    aput v2, v1, v8

    aput v2, v1, v5

    goto/16 :goto_3
.end method

.method public a(I)V
    .locals 4

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_2

    iget p1, p0, Lcif;->d:I

    invoke-direct {p0}, Lcif;->g()I

    move-result v1

    if-ge v1, p1, :cond_1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move p1, v1

    :cond_1
    iget-object v1, p0, Lcif;->a:Lcii;

    iget-object v2, p0, Lcif;->e:[B

    iget v3, p0, Lcif;->f:I

    invoke-virtual {v1, v2, v3}, Lcii;->a([BI)V

    iget-object v1, p0, Lcif;->a:Lcii;

    invoke-virtual {v1}, Lcii;->c()I

    move-result v1

    iget-object v2, p0, Lcif;->a:Lcii;

    iget v3, p0, Lcif;->m:I

    invoke-virtual {v2, v3}, Lcii;->b(I)V

    invoke-direct {p0, p1, v1}, Lcif;->d(II)V

    :goto_1
    move p1, v0

    goto :goto_0

    :cond_2
    return-void
.end method
