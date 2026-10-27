.class public Lnet/lingala/zip4j/a/b/b;
.super Ljava/lang/Object;
.source "ZipCryptoEngine.java"


# static fields
.field private static final alT:[I


# instance fields
.field private final keys:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 24
    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lnet/lingala/zip4j/a/b/b;->alT:[I

    .line 27
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 28
    nop

    .line 29
    move v3, v1

    move v4, v2

    :goto_1
    const/16 v5, 0x8

    if-ge v3, v5, :cond_1

    .line 30
    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 31
    ushr-int/lit8 v4, v4, 0x1

    const v5, -0x12477ce0

    xor-int/2addr v4, v5

    goto :goto_2

    .line 33
    :cond_0
    ushr-int/lit8 v4, v4, 0x1

    .line 29
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 36
    :cond_1
    sget-object v3, Lnet/lingala/zip4j/a/b/b;->alT:[I

    aput v4, v3, v2

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/lingala/zip4j/a/b/b;->keys:[I

    return-void
.end method

.method private a(IB)I
    .locals 2

    .line 58
    ushr-int/lit8 v0, p1, 0x8

    sget-object v1, Lnet/lingala/zip4j/a/b/b;->alT:[I

    xor-int/2addr p1, p2

    and-int/lit16 p1, p1, 0xff

    aget p1, v1, p1

    xor-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public a([C)V
    .locals 4

    .line 41
    iget-object v0, p0, Lnet/lingala/zip4j/a/b/b;->keys:[I

    const/4 v1, 0x0

    const v2, 0x12345678

    aput v2, v0, v1

    .line 42
    iget-object v0, p0, Lnet/lingala/zip4j/a/b/b;->keys:[I

    const/4 v2, 0x1

    const v3, 0x23456789

    aput v3, v0, v2

    .line 43
    iget-object v0, p0, Lnet/lingala/zip4j/a/b/b;->keys:[I

    const/4 v2, 0x2

    const v3, 0x34567890

    aput v3, v0, v2

    .line 44
    invoke-static {p1}, Lnet/lingala/zip4j/d/f;->b([C)[B

    move-result-object p1

    .line 45
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 46
    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lnet/lingala/zip4j/a/b/b;->d(B)V

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public d(B)V
    .locals 4

    .line 51
    iget-object v0, p0, Lnet/lingala/zip4j/a/b/b;->keys:[I

    iget-object v1, p0, Lnet/lingala/zip4j/a/b/b;->keys:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {p0, v1, p1}, Lnet/lingala/zip4j/a/b/b;->a(IB)I

    move-result p1

    aput p1, v0, v2

    .line 52
    iget-object p1, p0, Lnet/lingala/zip4j/a/b/b;->keys:[I

    const/4 v0, 0x1

    aget v1, p1, v0

    iget-object v3, p0, Lnet/lingala/zip4j/a/b/b;->keys:[I

    aget v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 53
    iget-object p1, p0, Lnet/lingala/zip4j/a/b/b;->keys:[I

    iget-object v1, p0, Lnet/lingala/zip4j/a/b/b;->keys:[I

    aget v1, v1, v0

    const v2, 0x8088405

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    aput v1, p1, v0

    .line 54
    iget-object p1, p0, Lnet/lingala/zip4j/a/b/b;->keys:[I

    iget-object v1, p0, Lnet/lingala/zip4j/a/b/b;->keys:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    iget-object v3, p0, Lnet/lingala/zip4j/a/b/b;->keys:[I

    aget v0, v3, v0

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    invoke-direct {p0, v1, v0}, Lnet/lingala/zip4j/a/b/b;->a(IB)I

    move-result v0

    aput v0, p1, v2

    .line 55
    return-void
.end method

.method public su()B
    .locals 2

    .line 62
    iget-object v0, p0, Lnet/lingala/zip4j/a/b/b;->keys:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    or-int/2addr v0, v1

    .line 63
    xor-int/lit8 v1, v0, 0x1

    mul-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    return v0
.end method
