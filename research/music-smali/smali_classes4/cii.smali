.class final Lcii;
.super Lcig;


# instance fields
.field private final b:I

.field private final c:[I

.field private final d:[I

.field private final e:[I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcig;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [I

    iput-object v0, p0, Lcii;->c:[I

    const/high16 v0, 0x10000

    new-array v0, v0, [I

    iput-object v0, p0, Lcii;->d:[I

    const/4 v0, 0x0

    iput v0, p0, Lcii;->f:I

    iput v0, p0, Lcii;->g:I

    iput v0, p0, Lcii;->h:I

    invoke-static {p1}, Lcii;->a(I)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcii;->e:[I

    iget-object p1, p0, Lcii;->e:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcii;->b:I

    return-void
.end method

.method static a(I)I
    .locals 1

    add-int/lit8 p0, p0, -0x1

    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x1

    const v0, 0xffff

    or-int/2addr p0, v0

    const/high16 v0, 0x1000000

    if-le p0, v0, :cond_0

    ushr-int/lit8 p0, p0, 0x1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method a()I
    .locals 2

    iget-object v0, p0, Lcii;->c:[I

    iget v1, p0, Lcii;->f:I

    aget v0, v0, v1

    return v0
.end method

.method a([BI)V
    .locals 2

    sget-object v0, Lcii;->a:[I

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x3ff

    iput v1, p0, Lcii;->f:I

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v1, v0

    iput v1, p0, Lcii;->g:I

    sget-object v1, Lcii;->a:[I

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    aget p1, v1, p1

    shl-int/lit8 p1, p1, 0x5

    xor-int/2addr p1, v0

    iget p2, p0, Lcii;->b:I

    and-int/2addr p1, p2

    iput p1, p0, Lcii;->h:I

    return-void
.end method

.method b()I
    .locals 2

    iget-object v0, p0, Lcii;->d:[I

    iget v1, p0, Lcii;->g:I

    aget v0, v0, v1

    return v0
.end method

.method b(I)V
    .locals 2

    iget-object v0, p0, Lcii;->c:[I

    iget v1, p0, Lcii;->f:I

    aput p1, v0, v1

    iget-object v0, p0, Lcii;->d:[I

    iget v1, p0, Lcii;->g:I

    aput p1, v0, v1

    iget-object v0, p0, Lcii;->e:[I

    iget v1, p0, Lcii;->h:I

    aput p1, v0, v1

    return-void
.end method

.method c()I
    .locals 2

    iget-object v0, p0, Lcii;->e:[I

    iget v1, p0, Lcii;->h:I

    aget v0, v0, v1

    return v0
.end method

.method c(I)V
    .locals 1

    iget-object v0, p0, Lcii;->c:[I

    invoke-static {v0, p1}, Lcij;->a([II)V

    iget-object v0, p0, Lcii;->d:[I

    invoke-static {v0, p1}, Lcij;->a([II)V

    iget-object v0, p0, Lcii;->e:[I

    invoke-static {v0, p1}, Lcij;->a([II)V

    return-void
.end method
