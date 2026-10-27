.class final Lcih;
.super Lcij;


# static fields
.field static final a:Z

.field static b:Ljava/lang/Class;


# instance fields
.field private final i:Lcii;

.field private final j:[I

.field private final k:Lcik;

.field private final l:I

.field private final m:I

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcih;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "cih"

    invoke-static {v0}, Lcih;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcih;->b:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcih;->a:Z

    return-void
.end method

.method constructor <init>(IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcij;-><init>(IIIII)V

    const/4 p2, -0x1

    iput p2, p0, Lcih;->n:I

    new-instance p2, Lcii;

    invoke-direct {p2, p1}, Lcii;-><init>(I)V

    iput-object p2, p0, Lcih;->i:Lcii;

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcih;->m:I

    iget p1, p0, Lcih;->m:I

    new-array p2, p1, [I

    iput-object p2, p0, Lcih;->j:[I

    iput p1, p0, Lcih;->o:I

    new-instance p1, Lcik;

    add-int/lit8 p2, p4, -0x1

    invoke-direct {p1, p2}, Lcik;-><init>(I)V

    iput-object p1, p0, Lcih;->k:Lcik;

    if-lez p6, :cond_0

    goto :goto_0

    :cond_0
    div-int/lit8 p4, p4, 0x4

    add-int/lit8 p6, p4, 0x4

    :goto_0
    iput p6, p0, Lcih;->l:I

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private g()I
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v0}, Lcih;->c(II)I

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcih;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcih;->o:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcih;->m:I

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcih;->i:Lcii;

    invoke-virtual {v1, v2}, Lcii;->c(I)V

    iget-object v1, p0, Lcih;->j:[I

    invoke-static {v1, v2}, Lcih;->a([II)V

    iget v1, p0, Lcih;->o:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcih;->o:I

    :cond_0
    iget v1, p0, Lcih;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcih;->n:I

    iget v2, p0, Lcih;->m:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcih;->n:I

    :cond_1
    return v0
.end method


# virtual methods
.method public a()Lcik;
    .locals 13

    iget-object v0, p0, Lcih;->k:Lcik;

    const/4 v1, 0x0

    iput v1, v0, Lcik;->c:I

    iget v0, p0, Lcih;->c:I

    iget v2, p0, Lcih;->d:I

    invoke-direct {p0}, Lcih;->g()I

    move-result v3

    if-ge v3, v0, :cond_1

    if-nez v3, :cond_0

    iget-object v0, p0, Lcih;->k:Lcik;

    return-object v0

    :cond_0
    if-le v2, v3, :cond_2

    move v2, v3

    goto :goto_0

    :cond_1
    move v3, v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcih;->i:Lcii;

    iget-object v4, p0, Lcih;->e:[B

    iget v5, p0, Lcih;->f:I

    invoke-virtual {v0, v4, v5}, Lcii;->a([BI)V

    iget v0, p0, Lcih;->o:I

    iget-object v4, p0, Lcih;->i:Lcii;

    invoke-virtual {v4}, Lcii;->a()I

    move-result v4

    sub-int/2addr v0, v4

    iget v4, p0, Lcih;->o:I

    iget-object v5, p0, Lcih;->i:Lcii;

    invoke-virtual {v5}, Lcii;->b()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcih;->i:Lcii;

    invoke-virtual {v5}, Lcii;->c()I

    move-result v5

    iget-object v6, p0, Lcih;->i:Lcii;

    iget v7, p0, Lcih;->o:I

    invoke-virtual {v6, v7}, Lcii;->b(I)V

    iget-object v6, p0, Lcih;->j:[I

    iget v7, p0, Lcih;->n:I

    aput v5, v6, v7

    iget v6, p0, Lcih;->m:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v0, v6, :cond_3

    iget-object v6, p0, Lcih;->e:[B

    iget v9, p0, Lcih;->f:I

    sub-int/2addr v9, v0

    aget-byte v6, v6, v9

    iget-object v9, p0, Lcih;->e:[B

    iget v10, p0, Lcih;->f:I

    aget-byte v9, v9, v10

    if-ne v6, v9, :cond_3

    iget-object v6, p0, Lcih;->k:Lcik;

    iget-object v6, v6, Lcik;->a:[I

    aput v7, v6, v1

    iget-object v6, p0, Lcih;->k:Lcik;

    iget-object v6, v6, Lcik;->b:[I

    add-int/lit8 v9, v0, -0x1

    aput v9, v6, v1

    iget-object v6, p0, Lcih;->k:Lcik;

    iput v8, v6, Lcik;->c:I

    goto :goto_1

    :cond_3
    move v7, v1

    :goto_1
    const/4 v6, 0x3

    if-eq v0, v4, :cond_4

    iget v9, p0, Lcih;->m:I

    if-ge v4, v9, :cond_4

    iget-object v9, p0, Lcih;->e:[B

    iget v10, p0, Lcih;->f:I

    sub-int/2addr v10, v4

    aget-byte v9, v9, v10

    iget-object v10, p0, Lcih;->e:[B

    iget v11, p0, Lcih;->f:I

    aget-byte v10, v10, v11

    if-ne v9, v10, :cond_4

    iget-object v0, p0, Lcih;->k:Lcik;

    iget-object v0, v0, Lcik;->b:[I

    iget-object v7, p0, Lcih;->k:Lcik;

    iget v9, v7, Lcik;->c:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v7, Lcik;->c:I

    add-int/lit8 v7, v4, -0x1

    aput v7, v0, v9

    move v0, v4

    move v7, v6

    :cond_4
    iget-object v4, p0, Lcih;->k:Lcik;

    iget v4, v4, Lcik;->c:I

    if-lez v4, :cond_6

    :goto_2
    if-ge v7, v3, :cond_5

    iget-object v4, p0, Lcih;->e:[B

    iget v9, p0, Lcih;->f:I

    add-int/2addr v9, v7

    sub-int/2addr v9, v0

    aget-byte v4, v4, v9

    iget-object v9, p0, Lcih;->e:[B

    iget v10, p0, Lcih;->f:I

    add-int/2addr v10, v7

    aget-byte v9, v9, v10

    if-ne v4, v9, :cond_5

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcih;->k:Lcik;

    iget-object v0, v0, Lcik;->a:[I

    iget-object v4, p0, Lcih;->k:Lcik;

    iget v4, v4, Lcik;->c:I

    sub-int/2addr v4, v8

    aput v7, v0, v4

    if-lt v7, v2, :cond_6

    iget-object v0, p0, Lcih;->k:Lcik;

    return-object v0

    :cond_6
    if-ge v7, v6, :cond_7

    goto :goto_3

    :cond_7
    move v6, v7

    :goto_3
    iget v0, p0, Lcih;->l:I

    :goto_4
    iget v4, p0, Lcih;->o:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    if-eqz v0, :cond_e

    iget v0, p0, Lcih;->m:I

    if-lt v4, v0, :cond_8

    goto/16 :goto_6

    :cond_8
    iget-object v7, p0, Lcih;->j:[I

    iget v9, p0, Lcih;->n:I

    sub-int v10, v9, v4

    if-le v4, v9, :cond_9

    goto :goto_5

    :cond_9
    move v0, v1

    :goto_5
    add-int/2addr v10, v0

    aget v0, v7, v10

    iget-object v7, p0, Lcih;->e:[B

    iget v9, p0, Lcih;->f:I

    add-int/2addr v9, v6

    sub-int/2addr v9, v4

    aget-byte v7, v7, v9

    iget-object v9, p0, Lcih;->e:[B

    iget v10, p0, Lcih;->f:I

    add-int/2addr v10, v6

    aget-byte v9, v9, v10

    if-ne v7, v9, :cond_d

    iget-object v7, p0, Lcih;->e:[B

    iget v9, p0, Lcih;->f:I

    sub-int/2addr v9, v4

    aget-byte v7, v7, v9

    iget-object v9, p0, Lcih;->e:[B

    iget v10, p0, Lcih;->f:I

    aget-byte v9, v9, v10

    if-ne v7, v9, :cond_d

    move v7, v1

    :cond_a
    add-int/2addr v7, v8

    if-ge v7, v3, :cond_b

    iget-object v9, p0, Lcih;->e:[B

    iget v10, p0, Lcih;->f:I

    add-int/2addr v10, v7

    sub-int/2addr v10, v4

    aget-byte v9, v9, v10

    iget-object v10, p0, Lcih;->e:[B

    iget v11, p0, Lcih;->f:I

    add-int/2addr v11, v7

    aget-byte v10, v10, v11

    if-eq v9, v10, :cond_a

    :cond_b
    if-le v7, v6, :cond_d

    iget-object v6, p0, Lcih;->k:Lcik;

    iget-object v6, v6, Lcik;->a:[I

    iget-object v9, p0, Lcih;->k:Lcik;

    iget v9, v9, Lcik;->c:I

    aput v7, v6, v9

    iget-object v6, p0, Lcih;->k:Lcik;

    iget-object v6, v6, Lcik;->b:[I

    iget-object v9, p0, Lcih;->k:Lcik;

    iget v9, v9, Lcik;->c:I

    add-int/lit8 v4, v4, -0x1

    aput v4, v6, v9

    iget-object v4, p0, Lcih;->k:Lcik;

    iget v6, v4, Lcik;->c:I

    add-int/2addr v6, v8

    iput v6, v4, Lcik;->c:I

    if-lt v7, v2, :cond_c

    iget-object v0, p0, Lcih;->k:Lcik;

    return-object v0

    :cond_c
    move v6, v7

    :cond_d
    move v12, v5

    move v5, v0

    move v0, v12

    goto :goto_4

    :cond_e
    :goto_6
    iget-object v0, p0, Lcih;->k:Lcik;

    return-object v0
.end method

.method public a(I)V
    .locals 3

    sget-boolean v0, Lcih;->a:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_3

    invoke-direct {p0}, Lcih;->g()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcih;->i:Lcii;

    iget-object v1, p0, Lcih;->e:[B

    iget v2, p0, Lcih;->f:I

    invoke-virtual {p1, v1, v2}, Lcii;->a([BI)V

    iget-object p1, p0, Lcih;->j:[I

    iget v1, p0, Lcih;->n:I

    iget-object v2, p0, Lcih;->i:Lcii;

    invoke-virtual {v2}, Lcii;->c()I

    move-result v2

    aput v2, p1, v1

    iget-object p1, p0, Lcih;->i:Lcii;

    iget v1, p0, Lcih;->o:I

    invoke-virtual {p1, v1}, Lcii;->b(I)V

    :cond_2
    move p1, v0

    goto :goto_0

    :cond_3
    return-void
.end method
