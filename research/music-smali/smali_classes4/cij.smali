.class public abstract Lcij;
.super Ljava/lang/Object;


# static fields
.field static final g:Z

.field static h:Ljava/lang/Class;


# instance fields
.field private final a:I

.field private final b:I

.field final c:I

.field final d:I

.field final e:[B

.field f:I

.field private i:I

.field private j:Z

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcij;->h:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "cij"

    invoke-static {v0}, Lcij;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcij;->h:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcij;->g:Z

    return-void
.end method

.method constructor <init>(IIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcij;->f:I

    iput v0, p0, Lcij;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcij;->j:Z

    iput v0, p0, Lcij;->k:I

    iput v0, p0, Lcij;->l:I

    invoke-static {p1, p2, p3, p5}, Lcij;->a(IIII)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcij;->e:[B

    add-int/2addr p2, p1

    iput p2, p0, Lcij;->a:I

    add-int/2addr p3, p5

    iput p3, p0, Lcij;->b:I

    iput p5, p0, Lcij;->c:I

    iput p4, p0, Lcij;->d:I

    return-void
.end method

.method private static a(IIII)I
    .locals 0

    add-int/2addr p1, p0

    add-int/2addr p2, p3

    div-int/lit8 p0, p0, 0x2

    const/high16 p3, 0x40000

    add-int/2addr p0, p3

    const/high16 p3, 0x20000000

    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/2addr p1, p2

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(IIIIIII)Lcij;
    .locals 8

    const/4 v0, 0x4

    if-eq p5, v0, :cond_1

    const/16 v0, 0x14

    if-ne p5, v0, :cond_0

    new-instance p5, Lcif;

    move-object v1, p5

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcif;-><init>(IIIIII)V

    return-object p5

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p5, Lcih;

    move-object v0, p5

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcih;-><init>(IIIIII)V

    return-object p5
.end method

.method static a([II)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    if-gt v2, p1, :cond_0

    aput v0, p0, v1

    goto :goto_1

    :cond_0
    aget v2, p0, v1

    sub-int/2addr v2, p1

    aput v2, p0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static b(Ljava/lang/String;)Ljava/lang/Class;
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

.method private g()V
    .locals 4

    iget v0, p0, Lcij;->f:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcij;->a:I

    sub-int/2addr v0, v1

    and-int/lit8 v0, v0, -0x10

    iget v1, p0, Lcij;->k:I

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcij;->e:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcij;->f:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcij;->f:I

    iget v1, p0, Lcij;->i:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcij;->i:I

    iget v1, p0, Lcij;->k:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcij;->k:I

    return-void
.end method

.method private h()V
    .locals 3

    iget v0, p0, Lcij;->l:I

    if-lez v0, :cond_1

    iget v1, p0, Lcij;->f:I

    iget v2, p0, Lcij;->i:I

    if-ge v1, v2, :cond_1

    sub-int/2addr v1, v0

    iput v1, p0, Lcij;->f:I

    const/4 v1, 0x0

    iput v1, p0, Lcij;->l:I

    invoke-virtual {p0, v0}, Lcij;->a(I)V

    sget-boolean v1, Lcij;->g:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcij;->l:I

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 2

    iget-object v0, p0, Lcij;->e:[B

    iget v1, p0, Lcij;->f:I

    add-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public a(III)I
    .locals 4

    iget v0, p0, Lcij;->f:I

    add-int/2addr v0, p1

    sub-int p1, v0, p2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    iget-object v1, p0, Lcij;->e:[B

    add-int v2, v0, p2

    aget-byte v2, v1, v2

    add-int v3, p1, p2

    aget-byte v1, v1, v3

    if-ne v2, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public a([BII)I
    .locals 3

    sget-boolean v0, Lcij;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcij;->j:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lcij;->f:I

    iget-object v1, p0, Lcij;->e:[B

    array-length v1, v1

    iget v2, p0, Lcij;->b:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcij;->g()V

    :cond_2
    iget-object v0, p0, Lcij;->e:[B

    array-length v1, v0

    iget v2, p0, Lcij;->k:I

    sub-int/2addr v1, v2

    if-le p3, v1, :cond_3

    array-length p3, v0

    sub-int/2addr p3, v2

    :cond_3
    iget-object v0, p0, Lcij;->e:[B

    iget v1, p0, Lcij;->k:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcij;->k:I

    add-int/2addr p1, p3

    iput p1, p0, Lcij;->k:I

    iget p1, p0, Lcij;->k:I

    iget p2, p0, Lcij;->b:I

    if-lt p1, p2, :cond_4

    sub-int/2addr p1, p2

    iput p1, p0, Lcij;->i:I

    :cond_4
    invoke-direct {p0}, Lcij;->h()V

    return p3
.end method

.method public abstract a()Lcik;
.end method

.method public abstract a(I)V
.end method

.method public a(I[B)V
    .locals 3

    sget-boolean v0, Lcij;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcij;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    sget-boolean v0, Lcij;->g:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcij;->k:I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    array-length v0, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    array-length v0, p2

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcij;->e:[B

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lcij;->k:I

    add-int/2addr p2, p1

    iput p2, p0, Lcij;->k:I

    invoke-virtual {p0, p1}, Lcij;->a(I)V

    :cond_4
    return-void
.end method

.method public a(Ljava/io/OutputStream;II)V
    .locals 2

    iget-object v0, p0, Lcij;->e:[B

    iget v1, p0, Lcij;->f:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public a(Lcik;)Z
    .locals 5

    invoke-virtual {p0}, Lcij;->e()I

    move-result v0

    iget v1, p0, Lcij;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p1, Lcik;->c:I

    if-ge v2, v3, :cond_1

    iget-object v3, p1, Lcik;->b:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3, v0}, Lcij;->b(II)I

    move-result v3

    iget-object v4, p1, Lcik;->a:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public b(II)I
    .locals 4

    iget v0, p0, Lcij;->f:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v1, p0, Lcij;->e:[B

    iget v2, p0, Lcij;->f:I

    add-int/2addr v2, p1

    aget-byte v2, v1, v2

    add-int v3, v0, p1

    aget-byte v1, v1, v3

    if-ne v2, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lcij;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(I)Z
    .locals 1

    iget v0, p0, Lcij;->f:I

    sub-int/2addr v0, p1

    iget p1, p0, Lcij;->i:I

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(I)I
    .locals 2

    iget-object v0, p0, Lcij;->e:[B

    iget v1, p0, Lcij;->f:I

    sub-int/2addr v1, p1

    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method c(II)I
    .locals 2

    sget-boolean v0, Lcij;->g:Z

    if-nez v0, :cond_1

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lcij;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcij;->f:I

    iget v0, p0, Lcij;->k:I

    iget v1, p0, Lcij;->f:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_3

    if-lt v0, p2, :cond_2

    iget-boolean p1, p0, Lcij;->j:Z

    if-nez p1, :cond_3

    :cond_2
    iget p1, p0, Lcij;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcij;->l:I

    const/4 v0, 0x0

    :cond_3
    return v0
.end method

.method public c()V
    .locals 1

    iget v0, p0, Lcij;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcij;->i:I

    invoke-direct {p0}, Lcij;->h()V

    return-void
.end method

.method public d()V
    .locals 2

    iget v0, p0, Lcij;->k:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcij;->i:I

    iput-boolean v1, p0, Lcij;->j:Z

    invoke-direct {p0}, Lcij;->h()V

    return-void
.end method

.method public e()I
    .locals 2

    sget-boolean v0, Lcij;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcij;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcij;->k:I

    iget v1, p0, Lcij;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcij;->f:I

    return v0
.end method
