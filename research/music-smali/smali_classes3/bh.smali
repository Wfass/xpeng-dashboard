.class public Lbh;
.super Lbn;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbh$a;
    }
.end annotation


# instance fields
.field private aB:I

.field private aC:I

.field private aD:I

.field private aE:I

.field private aF:I

.field private aG:I

.field private aH:F

.field private aI:F

.field private aJ:F

.field private aK:F

.field private aL:F

.field private aM:F

.field private aN:I

.field private aO:I

.field private aP:I

.field private aQ:I

.field private aR:I

.field private aS:I

.field private aT:I

.field private aU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbh$a;",
            ">;"
        }
    .end annotation
.end field

.field private aV:[Lbf;

.field private aW:[Lbf;

.field private aX:[I

.field private aY:[Lbf;

.field private aZ:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Lbn;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lbh;->aB:I

    .line 49
    iput v0, p0, Lbh;->aC:I

    .line 50
    iput v0, p0, Lbh;->aD:I

    .line 51
    iput v0, p0, Lbh;->aE:I

    .line 52
    iput v0, p0, Lbh;->aF:I

    .line 53
    iput v0, p0, Lbh;->aG:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 55
    iput v1, p0, Lbh;->aH:F

    .line 56
    iput v1, p0, Lbh;->aI:F

    .line 57
    iput v1, p0, Lbh;->aJ:F

    .line 58
    iput v1, p0, Lbh;->aK:F

    .line 59
    iput v1, p0, Lbh;->aL:F

    .line 60
    iput v1, p0, Lbh;->aM:F

    const/4 v1, 0x0

    .line 62
    iput v1, p0, Lbh;->aN:I

    .line 63
    iput v1, p0, Lbh;->aO:I

    const/4 v2, 0x2

    .line 65
    iput v2, p0, Lbh;->aP:I

    .line 66
    iput v2, p0, Lbh;->aQ:I

    .line 67
    iput v1, p0, Lbh;->aR:I

    .line 69
    iput v0, p0, Lbh;->aS:I

    .line 71
    iput v1, p0, Lbh;->aT:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbh;->aU:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lbh;->aV:[Lbf;

    .line 78
    iput-object v0, p0, Lbh;->aW:[Lbf;

    .line 79
    iput-object v0, p0, Lbh;->aX:[I

    .line 81
    iput v1, p0, Lbh;->aZ:I

    return-void
.end method

.method static synthetic a(Lbh;)I
    .locals 0

    .line 32
    iget p0, p0, Lbh;->aN:I

    return p0
.end method

.method static synthetic b(Lbh;)I
    .locals 0

    .line 32
    iget p0, p0, Lbh;->aO:I

    return p0
.end method

.method static synthetic c(Lbh;)I
    .locals 0

    .line 32
    iget p0, p0, Lbh;->aZ:I

    return p0
.end method

.method static synthetic d(Lbh;)[Lbf;
    .locals 0

    .line 32
    iget-object p0, p0, Lbh;->aY:[Lbf;

    return-object p0
.end method

.method static synthetic e(Lbh;)I
    .locals 0

    .line 32
    iget p0, p0, Lbh;->aC:I

    return p0
.end method

.method static synthetic f(Lbh;)I
    .locals 0

    .line 32
    iget p0, p0, Lbh;->aQ:I

    return p0
.end method

.method static synthetic g(Lbh;)I
    .locals 0

    .line 32
    iget p0, p0, Lbh;->aB:I

    return p0
.end method

.method private g(Z)V
    .locals 11

    .line 1293
    iget-object v0, p0, Lbh;->aX:[I

    if-eqz v0, :cond_15

    iget-object v0, p0, Lbh;->aW:[Lbf;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lbh;->aV:[Lbf;

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1299
    :goto_0
    iget v2, p0, Lbh;->aZ:I

    if-ge v1, v2, :cond_1

    .line 1300
    iget-object v2, p0, Lbh;->aY:[Lbf;

    aget-object v2, v2, v1

    .line 1301
    invoke-virtual {v2}, Lbf;->X()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1304
    :cond_1
    iget-object v1, p0, Lbh;->aX:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    .line 1305
    aget v1, v1, v3

    const/4 v4, 0x0

    .line 1308
    iget v5, p0, Lbh;->aH:F

    move-object v6, v4

    move v4, v0

    :goto_1
    const/16 v7, 0x8

    if-ge v4, v2, :cond_8

    if-eqz p1, :cond_2

    sub-int v5, v2, v4

    sub-int/2addr v5, v3

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1313
    iget v9, p0, Lbh;->aH:F

    sub-float/2addr v8, v9

    goto :goto_2

    :cond_2
    move v8, v5

    move v5, v4

    .line 1315
    :goto_2
    iget-object v9, p0, Lbh;->aW:[Lbf;

    aget-object v5, v9, v5

    if-eqz v5, :cond_7

    .line 1316
    invoke-virtual {v5}, Lbf;->B()I

    move-result v9

    if-ne v9, v7, :cond_3

    goto :goto_3

    :cond_3
    if-nez v4, :cond_4

    .line 1320
    iget-object v7, v5, Lbf;->A:Lbe;

    iget-object v9, p0, Lbh;->A:Lbe;

    invoke-virtual {p0}, Lbh;->f()I

    move-result v10

    invoke-virtual {v5, v7, v9, v10}, Lbf;->a(Lbe;Lbe;I)V

    .line 1321
    iget v7, p0, Lbh;->aB:I

    invoke-virtual {v5, v7}, Lbf;->v(I)V

    .line 1322
    invoke-virtual {v5, v8}, Lbf;->a(F)V

    :cond_4
    add-int/lit8 v7, v2, -0x1

    if-ne v4, v7, :cond_5

    .line 1325
    iget-object v7, v5, Lbf;->C:Lbe;

    iget-object v9, p0, Lbh;->C:Lbe;

    invoke-virtual {p0}, Lbh;->g()I

    move-result v10

    invoke-virtual {v5, v7, v9, v10}, Lbf;->a(Lbe;Lbe;I)V

    :cond_5
    if-lez v4, :cond_6

    if-eqz v6, :cond_6

    .line 1328
    iget-object v7, v5, Lbf;->A:Lbe;

    iget-object v9, v6, Lbf;->C:Lbe;

    iget v10, p0, Lbh;->aN:I

    invoke-virtual {v5, v7, v9, v10}, Lbf;->a(Lbe;Lbe;I)V

    .line 1329
    iget-object v7, v6, Lbf;->C:Lbe;

    iget-object v9, v5, Lbf;->A:Lbe;

    invoke-virtual {v6, v7, v9, v0}, Lbf;->a(Lbe;Lbe;I)V

    :cond_6
    move-object v6, v5

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_1

    :cond_8
    move p1, v0

    :goto_4
    if-ge p1, v1, :cond_e

    .line 1334
    iget-object v4, p0, Lbh;->aV:[Lbf;

    aget-object v4, v4, p1

    if-eqz v4, :cond_d

    .line 1335
    invoke-virtual {v4}, Lbf;->B()I

    move-result v5

    if-ne v5, v7, :cond_9

    goto :goto_5

    :cond_9
    if-nez p1, :cond_a

    .line 1339
    iget-object v5, v4, Lbf;->B:Lbe;

    iget-object v8, p0, Lbh;->B:Lbe;

    invoke-virtual {p0}, Lbh;->b()I

    move-result v9

    invoke-virtual {v4, v5, v8, v9}, Lbf;->a(Lbe;Lbe;I)V

    .line 1340
    iget v5, p0, Lbh;->aC:I

    invoke-virtual {v4, v5}, Lbf;->w(I)V

    .line 1341
    iget v5, p0, Lbh;->aI:F

    invoke-virtual {v4, v5}, Lbf;->b(F)V

    :cond_a
    add-int/lit8 v5, v1, -0x1

    if-ne p1, v5, :cond_b

    .line 1344
    iget-object v5, v4, Lbf;->D:Lbe;

    iget-object v8, p0, Lbh;->D:Lbe;

    invoke-virtual {p0}, Lbh;->c()I

    move-result v9

    invoke-virtual {v4, v5, v8, v9}, Lbf;->a(Lbe;Lbe;I)V

    :cond_b
    if-lez p1, :cond_c

    if-eqz v6, :cond_c

    .line 1347
    iget-object v5, v4, Lbf;->B:Lbe;

    iget-object v8, v6, Lbf;->D:Lbe;

    iget v9, p0, Lbh;->aO:I

    invoke-virtual {v4, v5, v8, v9}, Lbf;->a(Lbe;Lbe;I)V

    .line 1348
    iget-object v5, v6, Lbf;->D:Lbe;

    iget-object v8, v4, Lbf;->B:Lbe;

    invoke-virtual {v6, v5, v8, v0}, Lbf;->a(Lbe;Lbe;I)V

    :cond_c
    move-object v6, v4

    :cond_d
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_e
    move p1, v0

    :goto_6
    if-ge p1, v2, :cond_15

    move v4, v0

    :goto_7
    if-ge v4, v1, :cond_14

    mul-int v5, v4, v2

    add-int/2addr v5, p1

    .line 1356
    iget v6, p0, Lbh;->aT:I

    if-ne v6, v3, :cond_f

    mul-int v5, p1, v1

    add-int/2addr v5, v4

    .line 1359
    :cond_f
    iget-object v6, p0, Lbh;->aY:[Lbf;

    array-length v8, v6

    if-lt v5, v8, :cond_10

    goto :goto_8

    .line 1362
    :cond_10
    aget-object v5, v6, v5

    if-eqz v5, :cond_13

    .line 1363
    invoke-virtual {v5}, Lbf;->B()I

    move-result v6

    if-ne v6, v7, :cond_11

    goto :goto_8

    .line 1366
    :cond_11
    iget-object v6, p0, Lbh;->aW:[Lbf;

    aget-object v6, v6, p1

    .line 1367
    iget-object v8, p0, Lbh;->aV:[Lbf;

    aget-object v8, v8, v4

    if-eq v5, v6, :cond_12

    .line 1369
    iget-object v9, v5, Lbf;->A:Lbe;

    iget-object v10, v6, Lbf;->A:Lbe;

    invoke-virtual {v5, v9, v10, v0}, Lbf;->a(Lbe;Lbe;I)V

    .line 1370
    iget-object v9, v5, Lbf;->C:Lbe;

    iget-object v6, v6, Lbf;->C:Lbe;

    invoke-virtual {v5, v9, v6, v0}, Lbf;->a(Lbe;Lbe;I)V

    :cond_12
    if-eq v5, v8, :cond_13

    .line 1373
    iget-object v6, v5, Lbf;->B:Lbe;

    iget-object v9, v8, Lbf;->B:Lbe;

    invoke-virtual {v5, v6, v9, v0}, Lbf;->a(Lbe;Lbe;I)V

    .line 1374
    iget-object v6, v5, Lbf;->D:Lbe;

    iget-object v8, v8, Lbf;->D:Lbe;

    invoke-virtual {v5, v6, v8, v0}, Lbf;->a(Lbe;Lbe;I)V

    :cond_13
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_14
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_15
    :goto_9
    return-void
.end method

.method static synthetic h(Lbh;)F
    .locals 0

    .line 32
    iget p0, p0, Lbh;->aH:F

    return p0
.end method

.method static synthetic i(Lbh;)I
    .locals 0

    .line 32
    iget p0, p0, Lbh;->aD:I

    return p0
.end method

.method static synthetic j(Lbh;)F
    .locals 0

    .line 32
    iget p0, p0, Lbh;->aJ:F

    return p0
.end method

.method static synthetic k(Lbh;)I
    .locals 0

    .line 32
    iget p0, p0, Lbh;->aF:I

    return p0
.end method

.method static synthetic l(Lbh;)F
    .locals 0

    .line 32
    iget p0, p0, Lbh;->aL:F

    return p0
.end method

.method static synthetic m(Lbh;)F
    .locals 0

    .line 32
    iget p0, p0, Lbh;->aI:F

    return p0
.end method

.method static synthetic n(Lbh;)I
    .locals 0

    .line 32
    iget p0, p0, Lbh;->aE:I

    return p0
.end method

.method static synthetic o(Lbh;)F
    .locals 0

    .line 32
    iget p0, p0, Lbh;->aK:F

    return p0
.end method

.method static synthetic p(Lbh;)I
    .locals 0

    .line 32
    iget p0, p0, Lbh;->aG:I

    return p0
.end method

.method static synthetic q(Lbh;)F
    .locals 0

    .line 32
    iget p0, p0, Lbh;->aM:F

    return p0
.end method

.method static synthetic r(Lbh;)I
    .locals 0

    .line 32
    iget p0, p0, Lbh;->aP:I

    return p0
.end method


# virtual methods
.method public a(Laf;Z)V
    .locals 5

    .line 1392
    invoke-super {p0, p1, p2}, Lbn;->a(Laf;Z)V

    .line 1394
    invoke-virtual {p0}, Lbh;->A()Lbf;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lbh;->A()Lbf;

    move-result-object p1

    check-cast p1, Lbg;

    invoke-virtual {p1}, Lbg;->ae()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 1395
    :goto_0
    iget v1, p0, Lbh;->aR:I

    if-eqz v1, :cond_6

    if-eq v1, v0, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_5

    .line 1415
    :cond_1
    iget-object v1, p0, Lbh;->aU:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, p2

    :goto_1
    if-ge v2, v1, :cond_7

    .line 1417
    iget-object v3, p0, Lbh;->aU:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbh$a;

    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, p2

    .line 1418
    :goto_2
    invoke-virtual {v3, p1, v2, v4}, Lbh$a;->a(ZIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1411
    :cond_3
    invoke-direct {p0, p1}, Lbh;->g(Z)V

    goto :goto_5

    .line 1397
    :cond_4
    iget-object v1, p0, Lbh;->aU:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, p2

    :goto_3
    if-ge v2, v1, :cond_7

    .line 1399
    iget-object v3, p0, Lbh;->aU:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbh$a;

    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_5

    move v4, v0

    goto :goto_4

    :cond_5
    move v4, p2

    .line 1400
    :goto_4
    invoke-virtual {v3, p1, v2, v4}, Lbh$a;->a(ZIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1404
    :cond_6
    iget-object v1, p0, Lbh;->aU:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1405
    iget-object v1, p0, Lbh;->aU:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbh$a;

    .line 1406
    invoke-virtual {v1, p1, p2, v0}, Lbh$a;->a(ZIZ)V

    .line 1422
    :cond_7
    :goto_5
    invoke-virtual {p0, p2}, Lbh;->a(Z)V

    return-void
.end method

.method public a(Lbf;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbf;",
            "Ljava/util/HashMap<",
            "Lbf;",
            "Lbf;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-super {p0, p1, p2}, Lbn;->a(Lbf;Ljava/util/HashMap;)V

    .line 87
    check-cast p1, Lbh;

    .line 89
    iget p2, p1, Lbh;->aB:I

    iput p2, p0, Lbh;->aB:I

    .line 90
    iget p2, p1, Lbh;->aC:I

    iput p2, p0, Lbh;->aC:I

    .line 91
    iget p2, p1, Lbh;->aD:I

    iput p2, p0, Lbh;->aD:I

    .line 92
    iget p2, p1, Lbh;->aE:I

    iput p2, p0, Lbh;->aE:I

    .line 93
    iget p2, p1, Lbh;->aF:I

    iput p2, p0, Lbh;->aF:I

    .line 94
    iget p2, p1, Lbh;->aG:I

    iput p2, p0, Lbh;->aG:I

    .line 96
    iget p2, p1, Lbh;->aH:F

    iput p2, p0, Lbh;->aH:F

    .line 97
    iget p2, p1, Lbh;->aI:F

    iput p2, p0, Lbh;->aI:F

    .line 98
    iget p2, p1, Lbh;->aJ:F

    iput p2, p0, Lbh;->aJ:F

    .line 99
    iget p2, p1, Lbh;->aK:F

    iput p2, p0, Lbh;->aK:F

    .line 100
    iget p2, p1, Lbh;->aL:F

    iput p2, p0, Lbh;->aL:F

    .line 101
    iget p2, p1, Lbh;->aM:F

    iput p2, p0, Lbh;->aM:F

    .line 103
    iget p2, p1, Lbh;->aN:I

    iput p2, p0, Lbh;->aN:I

    .line 104
    iget p2, p1, Lbh;->aO:I

    iput p2, p0, Lbh;->aO:I

    .line 106
    iget p2, p1, Lbh;->aP:I

    iput p2, p0, Lbh;->aP:I

    .line 107
    iget p2, p1, Lbh;->aQ:I

    iput p2, p0, Lbh;->aQ:I

    .line 108
    iget p2, p1, Lbh;->aR:I

    iput p2, p0, Lbh;->aR:I

    .line 110
    iget p2, p1, Lbh;->aS:I

    iput p2, p0, Lbh;->aS:I

    .line 112
    iget p1, p1, Lbh;->aT:I

    iput p1, p0, Lbh;->aT:I

    return-void
.end method
