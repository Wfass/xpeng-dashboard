.class final Lalv$a;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lalv;

.field private final b:Lalo;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Lalv$a;

.field private final g:I


# direct methods
.method private constructor <init>(Lalv;Lalo;IIILalv$a;Lalp;)V
    .locals 5

    .line 414
    iput-object p1, p0, Lalv$a;->a:Lalv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p2, p0, Lalv$a;->b:Lalo;

    .line 416
    iput p3, p0, Lalv$a;->c:I

    .line 417
    sget-object v0, Lalo;->BYTE:Lalo;

    if-eq p2, v0, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p6, Lalv$a;->d:I

    goto :goto_1

    :cond_1
    :goto_0
    move v0, p4

    :goto_1
    iput v0, p0, Lalv$a;->d:I

    .line 419
    iput p5, p0, Lalv$a;->e:I

    .line 420
    iput-object p6, p0, Lalv$a;->f:Lalv$a;

    const/4 v0, 0x0

    if-eqz p6, :cond_2

    .line 422
    iget v1, p6, Lalv$a;->g:I

    goto :goto_2

    :cond_2
    move v1, v0

    .line 424
    :goto_2
    sget-object v2, Lalo;->BYTE:Lalo;

    const/4 v3, 0x1

    if-ne p2, v2, :cond_3

    if-nez p6, :cond_3

    iget v2, p0, Lalv$a;->d:I

    if-nez v2, :cond_4

    :cond_3
    if-eqz p6, :cond_5

    iget v2, p0, Lalv$a;->d:I

    iget v4, p6, Lalv$a;->d:I

    if-eq v2, v4, :cond_5

    :cond_4
    move v0, v3

    :cond_5
    const/4 v2, 0x4

    if-eqz p6, :cond_6

    .line 428
    iget-object p6, p6, Lalv$a;->b:Lalo;

    if-ne p2, p6, :cond_6

    if-eqz v0, :cond_7

    .line 429
    :cond_6
    invoke-virtual {p2, p7}, Lalo;->a(Lalp;)I

    move-result p6

    add-int/2addr p6, v2

    add-int/2addr v1, p6

    .line 431
    :cond_7
    sget-object p6, Lalv$1;->b:[I

    invoke-virtual {p2}, Lalo;->ordinal()I

    move-result p2

    aget p2, p6, p2

    if-eq p2, v3, :cond_e

    const/4 p6, 0x2

    if-eq p2, p6, :cond_c

    const/4 p7, 0x3

    if-eq p2, p7, :cond_9

    if-eq p2, v2, :cond_8

    goto :goto_5

    .line 442
    :cond_8
    invoke-static {p1}, Lalv;->b(Lalv;)Lalh;

    move-result-object p2

    invoke-static {p1}, Lalv;->a(Lalv;)Ljava/lang/String;

    move-result-object p1

    add-int/2addr p5, p3

    invoke-virtual {p1, p3, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p4}, Lalh;->a(Ljava/lang/String;I)[B

    move-result-object p1

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr v1, p1

    if-eqz v0, :cond_f

    add-int/lit8 v1, v1, 0xc

    goto :goto_5

    :cond_9
    if-ne p5, v3, :cond_a

    goto :goto_3

    :cond_a
    if-ne p5, p6, :cond_b

    const/4 v2, 0x7

    goto :goto_3

    :cond_b
    const/16 v2, 0xa

    :goto_3
    add-int/2addr v1, v2

    goto :goto_5

    :cond_c
    if-ne p5, v3, :cond_d

    const/4 p1, 0x6

    goto :goto_4

    :cond_d
    const/16 p1, 0xb

    :goto_4
    add-int/2addr v1, p1

    goto :goto_5

    :cond_e
    add-int/lit8 v1, v1, 0xd

    .line 449
    :cond_f
    :goto_5
    iput v1, p0, Lalv$a;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lalv;Lalo;IIILalv$a;Lalp;Lalv$1;)V
    .locals 0

    .line 405
    invoke-direct/range {p0 .. p7}, Lalv$a;-><init>(Lalv;Lalo;IIILalv$a;Lalp;)V

    return-void
.end method

.method static synthetic a(Lalv$a;)I
    .locals 0

    .line 405
    iget p0, p0, Lalv$a;->e:I

    return p0
.end method

.method static synthetic b(Lalv$a;)I
    .locals 0

    .line 405
    iget p0, p0, Lalv$a;->d:I

    return p0
.end method

.method static synthetic c(Lalv$a;)Lalo;
    .locals 0

    .line 405
    iget-object p0, p0, Lalv$a;->b:Lalo;

    return-object p0
.end method

.method static synthetic d(Lalv$a;)I
    .locals 0

    .line 405
    iget p0, p0, Lalv$a;->g:I

    return p0
.end method

.method static synthetic e(Lalv$a;)Lalv$a;
    .locals 0

    .line 405
    iget-object p0, p0, Lalv$a;->f:Lalv$a;

    return-object p0
.end method

.method static synthetic f(Lalv$a;)I
    .locals 0

    .line 405
    iget p0, p0, Lalv$a;->c:I

    return p0
.end method
