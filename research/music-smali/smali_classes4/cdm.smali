.class Lcdm;
.super Lcdi;
.source "LZMA2Decoder.java"


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    .line 31
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lchu;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Number;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcdi;-><init>([Ljava/lang/Class;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)I
    .locals 1

    .line 69
    instance-of v0, p1, Lchu;

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Lchu;

    invoke-virtual {p1}, Lchu;->a()I

    move-result p1

    return p1

    .line 72
    :cond_0
    invoke-direct {p0, p1}, Lcdm;->e(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private d(Ljava/lang/Object;)Lchu;
    .locals 1

    .line 90
    instance-of v0, p1, Lchu;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Lchu;

    return-object p1

    .line 93
    :cond_0
    new-instance v0, Lchu;

    invoke-direct {v0}, Lchu;-><init>()V

    .line 94
    invoke-direct {p0, p1}, Lcdm;->e(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lchu;->b(I)V

    return-object v0
.end method

.method private e(Ljava/lang/Object;)I
    .locals 1

    const/high16 v0, 0x800000

    .line 99
    invoke-static {p1, v0}, Lcdm;->a(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method


# virtual methods
.method a(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 1

    .line 48
    invoke-direct {p0, p2}, Lcdm;->d(Ljava/lang/Object;)Lchu;

    move-result-object p2

    .line 49
    new-instance v0, Lchs;

    invoke-direct {v0, p1}, Lchs;-><init>(Ljava/io/OutputStream;)V

    .line 50
    invoke-virtual {p2, v0}, Lchu;->a(Lchr;)Lchr;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/lang/Object;)[B
    .locals 2

    .line 55
    invoke-direct {p0, p1}, Lcdm;->c(Ljava/lang/Object;)I

    move-result p1

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v1, v0, 0x1e

    ushr-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x2

    const/4 v1, 0x1

    .line 58
    new-array v1, v1, [B

    rsub-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    int-to-byte p1, v0

    const/4 v0, 0x0

    aput-byte p1, v1, v0

    return-object v1
.end method
