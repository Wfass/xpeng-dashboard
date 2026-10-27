.class public final Lcis;
.super Lcir;


# static fields
.field static final a:Z

.field static b:Ljava/lang/Class;

.field private static final c:[I


# instance fields
.field private d:J

.field private e:I

.field private f:I

.field private g:B

.field private final h:[B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcis;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "cis"

    invoke-static {v0}, Lcis;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcis;->b:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcis;->a:Z

    const/16 v0, 0x80

    new-array v0, v0, [I

    sput-object v0, Lcis;->c:[I

    const/16 v0, 0x8

    :goto_0
    const/16 v1, 0x800

    if-ge v0, v1, :cond_3

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_2

    mul-int/2addr v3, v3

    shl-int/lit8 v2, v2, 0x1

    :goto_2
    const/high16 v4, -0x10000

    and-int/2addr v4, v3

    if-eqz v4, :cond_1

    ushr-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v1, Lcis;->c:[I

    shr-int/lit8 v3, v0, 0x4

    rsub-int v2, v2, 0xa1

    aput v2, v1, v3

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_3
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcir;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcis;->h:[B

    invoke-virtual {p0}, Lcis;->a()V

    return-void
.end method

.method public static a(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static a(II)I
    .locals 1

    sget-boolean v0, Lcis;->a:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Lcis;->c:[I

    neg-int p1, p1

    and-int/lit16 p1, p1, 0x7ff

    xor-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x4

    aget p0, v0, p0

    return p0
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

.method public static b([SI)I
    .locals 4

    array-length v0, p0

    or-int/2addr p1, v0

    const/4 v0, 0x0

    :cond_0
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    ushr-int/2addr p1, v2

    aget-short v3, p0, p1

    invoke-static {v3, v1}, Lcis;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    if-ne p1, v2, :cond_0

    return v0
.end method

.method public static d([SI)I
    .locals 5

    array-length v0, p0

    or-int/2addr p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    :cond_0
    and-int/lit8 v3, p1, 0x1

    ushr-int/2addr p1, v0

    aget-short v4, p0, v2

    invoke-static {v4, v3}, Lcis;->a(II)I

    move-result v4

    add-int/2addr v1, v4

    shl-int/2addr v2, v0

    or-int/2addr v2, v3

    if-ne p1, v0, :cond_0

    return v1
.end method

.method private d()V
    .locals 5

    iget-wide v0, p0, Lcis;->d:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    if-nez v2, :cond_0

    const-wide v3, 0xff000000L

    cmp-long v0, v0, v3

    if-gez v0, :cond_2

    :cond_0
    iget-byte v0, p0, Lcis;->g:B

    :cond_1
    iget-object v1, p0, Lcis;->h:[B

    iget v3, p0, Lcis;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcis;->i:I

    add-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    const/16 v0, 0xff

    iget v1, p0, Lcis;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcis;->f:I

    if-nez v1, :cond_1

    iget-wide v0, p0, Lcis;->d:J

    const/16 v2, 0x18

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcis;->g:B

    :cond_2
    iget v0, p0, Lcis;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcis;->f:I

    iget-wide v0, p0, Lcis;->d:J

    const-wide/32 v2, 0xffffff

    and-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcis;->d:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcis;->d:J

    const/4 v0, -0x1

    iput v0, p0, Lcis;->e:I

    const/4 v0, 0x0

    iput-byte v0, p0, Lcis;->g:B

    const/4 v1, 0x1

    iput v1, p0, Lcis;->f:I

    iput v0, p0, Lcis;->i:I

    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 3

    iget-object v0, p0, Lcis;->h:[B

    iget v1, p0, Lcis;->i:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public a([SI)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    ushr-int/2addr v0, v1

    and-int v3, p2, v0

    invoke-virtual {p0, p1, v2, v3}, Lcis;->a([SII)V

    shl-int/2addr v2, v1

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x1

    :cond_1
    if-ne v0, v1, :cond_0

    return-void
.end method

.method public a([SII)V
    .locals 9

    aget-short v0, p1, p2

    iget v1, p0, Lcis;->e:I

    ushr-int/lit8 v2, v1, 0xb

    mul-int/2addr v2, v0

    if-nez p3, :cond_0

    iput v2, p0, Lcis;->e:I

    rsub-int p3, v0, 0x800

    ushr-int/lit8 p3, p3, 0x5

    add-int/2addr v0, p3

    int-to-short p3, v0

    aput-short p3, p1, p2

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcis;->d:J

    int-to-long v5, v2

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcis;->d:J

    sub-int/2addr v1, v2

    iput v1, p0, Lcis;->e:I

    ushr-int/lit8 p3, v0, 0x5

    sub-int/2addr v0, p3

    int-to-short p3, v0

    aput-short p3, p1, p2

    :goto_0
    iget p1, p0, Lcis;->e:I

    const/high16 p2, -0x1000000

    and-int/2addr p2, p1

    if-nez p2, :cond_1

    shl-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcis;->e:I

    invoke-direct {p0}, Lcis;->d()V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 2

    iget v0, p0, Lcis;->i:I

    iget v1, p0, Lcis;->f:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public b(II)V
    .locals 5

    :cond_0
    iget v0, p0, Lcis;->e:I

    ushr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcis;->e:I

    iget-wide v0, p0, Lcis;->d:J

    iget v2, p0, Lcis;->e:I

    add-int/lit8 p2, p2, -0x1

    ushr-int v3, p1, p2

    and-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v3, v3, 0x0

    and-int/2addr v3, v2

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcis;->d:J

    const/high16 v0, -0x1000000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    shl-int/lit8 v0, v2, 0x8

    iput v0, p0, Lcis;->e:I

    invoke-direct {p0}, Lcis;->d()V

    :cond_1
    if-nez p2, :cond_0

    return-void
.end method

.method public c()I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcis;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcis;->i:I

    return v0
.end method

.method public c([SI)V
    .locals 3

    array-length v0, p1

    or-int/2addr p2, v0

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    and-int/lit8 v2, p2, 0x1

    ushr-int/2addr p2, v0

    invoke-virtual {p0, p1, v1, v2}, Lcis;->a([SII)V

    shl-int/2addr v1, v0

    or-int/2addr v1, v2

    if-ne p2, v0, :cond_0

    return-void
.end method
