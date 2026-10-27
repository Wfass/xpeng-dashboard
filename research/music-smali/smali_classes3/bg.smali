.class public Lbg;
.super Lbo;
.source "ConstraintWidgetContainer.java"


# static fields
.field static aT:I


# instance fields
.field a:Lbq;

.field public aA:Lag;

.field protected aB:Laf;

.field aC:I

.field aD:I

.field aE:I

.field aF:I

.field public aG:I

.field public aH:I

.field aI:[Lbd;

.field aJ:[Lbd;

.field public aK:Z

.field public aL:Z

.field public aM:Z

.field public aN:I

.field public aO:I

.field public aP:Z

.field aQ:I

.field aR:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lbf;",
            ">;"
        }
    .end annotation
.end field

.field public aS:Lbq$a;

.field private aV:I

.field private aW:Z

.field private aX:I

.field private aY:Z

.field private aZ:Z

.field public ay:Lbt;

.field protected az:Lbq$b;

.field private ba:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lbe;",
            ">;"
        }
    .end annotation
.end field

.field private bb:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lbe;",
            ">;"
        }
    .end annotation
.end field

.field private bc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lbe;",
            ">;"
        }
    .end annotation
.end field

.field private bd:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lbe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 179
    invoke-direct {p0}, Lbo;-><init>()V

    .line 48
    new-instance v0, Lbq;

    invoke-direct {v0, p0}, Lbq;-><init>(Lbg;)V

    iput-object v0, p0, Lbg;->a:Lbq;

    .line 54
    new-instance v0, Lbt;

    invoke-direct {v0, p0}, Lbt;-><init>(Lbg;)V

    iput-object v0, p0, Lbg;->ay:Lbt;

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lbg;->az:Lbq$b;

    const/4 v1, 0x0

    .line 139
    iput-boolean v1, p0, Lbg;->aW:Z

    .line 147
    new-instance v2, Laf;

    invoke-direct {v2}, Laf;-><init>()V

    iput-object v2, p0, Lbg;->aB:Laf;

    .line 154
    iput v1, p0, Lbg;->aG:I

    .line 155
    iput v1, p0, Lbg;->aH:I

    const/4 v2, 0x4

    .line 157
    new-array v3, v2, [Lbd;

    iput-object v3, p0, Lbg;->aI:[Lbd;

    .line 158
    new-array v2, v2, [Lbd;

    iput-object v2, p0, Lbg;->aJ:[Lbd;

    .line 160
    iput-boolean v1, p0, Lbg;->aK:Z

    .line 161
    iput-boolean v1, p0, Lbg;->aL:Z

    .line 162
    iput-boolean v1, p0, Lbg;->aM:Z

    .line 163
    iput v1, p0, Lbg;->aN:I

    .line 164
    iput v1, p0, Lbg;->aO:I

    const/16 v2, 0x101

    .line 166
    iput v2, p0, Lbg;->aX:I

    .line 167
    iput-boolean v1, p0, Lbg;->aP:Z

    .line 169
    iput-boolean v1, p0, Lbg;->aY:Z

    .line 170
    iput-boolean v1, p0, Lbg;->aZ:Z

    .line 273
    iput v1, p0, Lbg;->aQ:I

    .line 275
    iput-object v0, p0, Lbg;->ba:Ljava/lang/ref/WeakReference;

    .line 276
    iput-object v0, p0, Lbg;->bb:Ljava/lang/ref/WeakReference;

    .line 277
    iput-object v0, p0, Lbg;->bc:Ljava/lang/ref/WeakReference;

    .line 278
    iput-object v0, p0, Lbg;->bd:Ljava/lang/ref/WeakReference;

    .line 320
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbg;->aR:Ljava/util/HashSet;

    .line 518
    new-instance v0, Lbq$a;

    invoke-direct {v0}, Lbq$a;-><init>()V

    iput-object v0, p0, Lbg;->aS:Lbq$a;

    return-void
.end method

.method private a(Lbe;Laj;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lbg;->aB:Laf;

    invoke-virtual {v0, p1}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object p1

    .line 311
    iget-object v0, p0, Lbg;->aB:Laf;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Laf;->a(Laj;Laj;II)V

    return-void
.end method

.method public static a(ILbf;Lbq$b;Lbq$a;I)Z
    .locals 5

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    .line 527
    :cond_0
    invoke-virtual {p1}, Lbf;->B()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    instance-of v0, p1, Lbi;

    if-nez v0, :cond_13

    instance-of v0, p1, Lbb;

    if-eqz v0, :cond_1

    goto/16 :goto_8

    .line 538
    :cond_1
    invoke-virtual {p1}, Lbf;->Y()Lbf$a;

    move-result-object v0

    iput-object v0, p3, Lbq$a;->d:Lbf$a;

    .line 539
    invoke-virtual {p1}, Lbf;->Z()Lbf$a;

    move-result-object v0

    iput-object v0, p3, Lbq$a;->e:Lbf$a;

    .line 540
    invoke-virtual {p1}, Lbf;->F()I

    move-result v0

    iput v0, p3, Lbq$a;->f:I

    .line 541
    invoke-virtual {p1}, Lbf;->G()I

    move-result v0

    iput v0, p3, Lbq$a;->g:I

    .line 542
    iput-boolean p0, p3, Lbq$a;->l:Z

    .line 543
    iput p4, p3, Lbq$a;->m:I

    .line 545
    iget-object p4, p3, Lbq$a;->d:Lbf$a;

    sget-object v0, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    const/4 v1, 0x1

    if-ne p4, v0, :cond_2

    move p4, v1

    goto :goto_0

    :cond_2
    move p4, p0

    .line 546
    :goto_0
    iget-object v0, p3, Lbq$a;->e:Lbf$a;

    sget-object v2, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v2, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, p0

    :goto_1
    const/4 v2, 0x0

    if-eqz p4, :cond_4

    .line 548
    iget v3, p1, Lbf;->O:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, p0

    :goto_2
    if-eqz v0, :cond_5

    .line 549
    iget v4, p1, Lbf;->O:F

    cmpl-float v2, v4, v2

    if-lez v2, :cond_5

    move v2, v1

    goto :goto_3

    :cond_5
    move v2, p0

    :goto_3
    if-eqz p4, :cond_7

    .line 551
    invoke-virtual {p1, p0}, Lbf;->g(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p1, Lbf;->n:I

    if-nez v4, :cond_7

    if-nez v3, :cond_7

    .line 555
    sget-object p4, Lbf$a;->WRAP_CONTENT:Lbf$a;

    iput-object p4, p3, Lbq$a;->d:Lbf$a;

    if-eqz v0, :cond_6

    .line 556
    iget p4, p1, Lbf;->o:I

    if-nez p4, :cond_6

    .line 558
    sget-object p4, Lbf$a;->FIXED:Lbf$a;

    iput-object p4, p3, Lbq$a;->d:Lbf$a;

    :cond_6
    move p4, p0

    :cond_7
    if-eqz v0, :cond_9

    .line 562
    invoke-virtual {p1, v1}, Lbf;->g(I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p1, Lbf;->o:I

    if-nez v4, :cond_9

    if-nez v2, :cond_9

    .line 566
    sget-object v0, Lbf$a;->WRAP_CONTENT:Lbf$a;

    iput-object v0, p3, Lbq$a;->e:Lbf$a;

    if-eqz p4, :cond_8

    .line 567
    iget v0, p1, Lbf;->n:I

    if-nez v0, :cond_8

    .line 569
    sget-object v0, Lbf$a;->FIXED:Lbf$a;

    iput-object v0, p3, Lbq$a;->e:Lbf$a;

    :cond_8
    move v0, p0

    .line 573
    :cond_9
    invoke-virtual {p1}, Lbf;->d()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 575
    sget-object p4, Lbf$a;->FIXED:Lbf$a;

    iput-object p4, p3, Lbq$a;->d:Lbf$a;

    move p4, p0

    .line 577
    :cond_a
    invoke-virtual {p1}, Lbf;->e()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 579
    sget-object v0, Lbf$a;->FIXED:Lbf$a;

    iput-object v0, p3, Lbq$a;->e:Lbf$a;

    move v0, p0

    :cond_b
    const/4 v4, 0x4

    if-eqz v3, :cond_e

    .line 583
    iget-object v3, p1, Lbf;->p:[I

    aget p0, v3, p0

    if-ne p0, v4, :cond_c

    .line 584
    sget-object p0, Lbf$a;->FIXED:Lbf$a;

    iput-object p0, p3, Lbq$a;->d:Lbf$a;

    goto :goto_5

    :cond_c
    if-nez v0, :cond_e

    .line 588
    iget-object p0, p3, Lbq$a;->e:Lbf$a;

    sget-object v0, Lbf$a;->FIXED:Lbf$a;

    if-ne p0, v0, :cond_d

    .line 589
    iget p0, p3, Lbq$a;->g:I

    goto :goto_4

    .line 591
    :cond_d
    sget-object p0, Lbf$a;->WRAP_CONTENT:Lbf$a;

    iput-object p0, p3, Lbq$a;->d:Lbf$a;

    .line 592
    invoke-interface {p2, p1, p3}, Lbq$b;->a(Lbf;Lbq$a;)V

    .line 593
    iget p0, p3, Lbq$a;->i:I

    .line 595
    :goto_4
    sget-object v0, Lbf$a;->FIXED:Lbf$a;

    iput-object v0, p3, Lbq$a;->d:Lbf$a;

    .line 598
    invoke-virtual {p1}, Lbf;->S()F

    move-result v0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    iput p0, p3, Lbq$a;->f:I

    :cond_e
    :goto_5
    if-eqz v2, :cond_12

    .line 605
    iget-object p0, p1, Lbf;->p:[I

    aget p0, p0, v1

    if-ne p0, v4, :cond_f

    .line 606
    sget-object p0, Lbf$a;->FIXED:Lbf$a;

    iput-object p0, p3, Lbq$a;->e:Lbf$a;

    goto :goto_7

    :cond_f
    if-nez p4, :cond_12

    .line 610
    iget-object p0, p3, Lbq$a;->d:Lbf$a;

    sget-object p4, Lbf$a;->FIXED:Lbf$a;

    if-ne p0, p4, :cond_10

    .line 611
    iget p0, p3, Lbq$a;->f:I

    goto :goto_6

    .line 613
    :cond_10
    sget-object p0, Lbf$a;->WRAP_CONTENT:Lbf$a;

    iput-object p0, p3, Lbq$a;->e:Lbf$a;

    .line 614
    invoke-interface {p2, p1, p3}, Lbq$b;->a(Lbf;Lbq$a;)V

    .line 615
    iget p0, p3, Lbq$a;->h:I

    .line 617
    :goto_6
    sget-object p4, Lbf$a;->FIXED:Lbf$a;

    iput-object p4, p3, Lbq$a;->e:Lbf$a;

    .line 618
    invoke-virtual {p1}, Lbf;->T()I

    move-result p4

    const/4 v0, -0x1

    if-ne p4, v0, :cond_11

    int-to-float p0, p0

    .line 621
    invoke-virtual {p1}, Lbf;->S()F

    move-result p4

    div-float/2addr p0, p4

    float-to-int p0, p0

    iput p0, p3, Lbq$a;->g:I

    goto :goto_7

    .line 624
    :cond_11
    invoke-virtual {p1}, Lbf;->S()F

    move-result p4

    int-to-float p0, p0

    mul-float/2addr p4, p0

    float-to-int p0, p4

    iput p0, p3, Lbq$a;->g:I

    .line 632
    :cond_12
    :goto_7
    invoke-interface {p2, p1, p3}, Lbq$b;->a(Lbf;Lbq$a;)V

    .line 633
    iget p0, p3, Lbq$a;->h:I

    invoke-virtual {p1, p0}, Lbf;->q(I)V

    .line 634
    iget p0, p3, Lbq$a;->i:I

    invoke-virtual {p1, p0}, Lbf;->r(I)V

    .line 635
    iget-boolean p0, p3, Lbq$a;->k:Z

    invoke-virtual {p1, p0}, Lbf;->c(Z)V

    .line 636
    iget p0, p3, Lbq$a;->j:I

    invoke-virtual {p1, p0}, Lbf;->u(I)V

    .line 637
    sget p0, Lbq$a;->a:I

    iput p0, p3, Lbq$a;->m:I

    .line 643
    iget-boolean p0, p3, Lbq$a;->l:Z

    return p0

    .line 533
    :cond_13
    :goto_8
    iput p0, p3, Lbq$a;->h:I

    .line 534
    iput p0, p3, Lbq$a;->i:I

    return p0
.end method

.method private ak()V
    .locals 1

    const/4 v0, 0x0

    .line 1048
    iput v0, p0, Lbg;->aG:I

    .line 1049
    iput v0, p0, Lbg;->aH:I

    return-void
.end method

.method private b(Lbe;Laj;)V
    .locals 3

    .line 315
    iget-object v0, p0, Lbg;->aB:Laf;

    invoke-virtual {v0, p1}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object p1

    .line 317
    iget-object v0, p0, Lbg;->aB:Laf;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, p2, p1, v2, v1}, Laf;->a(Laj;Laj;II)V

    return-void
.end method

.method private d(Lbf;)V
    .locals 5

    .line 1074
    iget v0, p0, Lbg;->aG:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lbg;->aJ:[Lbd;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 1075
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 1076
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbd;

    iput-object v0, p0, Lbg;->aJ:[Lbd;

    .line 1078
    :cond_0
    iget-object v0, p0, Lbg;->aJ:[Lbd;

    iget v1, p0, Lbg;->aG:I

    new-instance v2, Lbd;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lbg;->ae()Z

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Lbd;-><init>(Lbf;IZ)V

    aput-object v2, v0, v1

    .line 1079
    iget p1, p0, Lbg;->aG:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lbg;->aG:I

    return-void
.end method

.method private e(Lbf;)V
    .locals 5

    .line 1089
    iget v0, p0, Lbg;->aH:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lbg;->aI:[Lbd;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 1090
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    .line 1091
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbd;

    iput-object v0, p0, Lbg;->aI:[Lbd;

    .line 1093
    :cond_0
    iget-object v0, p0, Lbg;->aI:[Lbd;

    iget v2, p0, Lbg;->aH:I

    new-instance v3, Lbd;

    invoke-virtual {p0}, Lbg;->ae()Z

    move-result v4

    invoke-direct {v3, p1, v1, v4}, Lbd;-><init>(Lbf;IZ)V

    aput-object v3, v0, v2

    .line 1094
    iget p1, p0, Lbg;->aH:I

    add-int/2addr p1, v1

    iput p1, p0, Lbg;->aH:I

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0

    .line 1102
    iput p1, p0, Lbg;->aV:I

    return-void
.end method

.method public a(IIIIIIIII)J
    .locals 12

    move-object v11, p0

    move/from16 v3, p8

    .line 118
    iput v3, v11, Lbg;->aC:I

    move/from16 v4, p9

    .line 119
    iput v4, v11, Lbg;->aD:I

    .line 120
    iget-object v0, v11, Lbg;->a:Lbq;

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lbq;->a(Lbg;IIIIIIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .line 215
    iput p1, p0, Lbg;->aX:I

    .line 216
    iget-object p1, p0, Lbg;->aB:Laf;

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Lbg;->b(I)Z

    move-result p1

    sput-boolean p1, Laf;->a:Z

    return-void
.end method

.method public a(Lag;)V
    .locals 1

    .line 143
    iput-object p1, p0, Lbg;->aA:Lag;

    .line 144
    iget-object v0, p0, Lbg;->aB:Laf;

    invoke-virtual {v0, p1}, Laf;->a(Lag;)V

    return-void
.end method

.method a(Lbe;)V
    .locals 2

    .line 281
    iget-object v0, p0, Lbg;->ba:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p1}, Lbe;->d()I

    move-result v0

    iget-object v1, p0, Lbg;->ba:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbe;

    invoke-virtual {v1}, Lbe;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbg;->ba:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method a(Lbf;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 1061
    invoke-direct {p0, p1}, Lbg;->d(Lbf;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1063
    invoke-direct {p0, p1}, Lbg;->e(Lbf;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lbq$b;)V
    .locals 1

    .line 131
    iput-object p1, p0, Lbg;->az:Lbq$b;

    .line 132
    iget-object v0, p0, Lbg;->ay:Lbt;

    invoke-virtual {v0, p1}, Lbt;->a(Lbq$b;)V

    return-void
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbg;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  actualWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbg;->M:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 1109
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  actualHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lbg;->N:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    invoke-virtual {p0}, Lbg;->ai()Ljava/util/ArrayList;

    move-result-object v0

    .line 1114
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbf;

    .line 1115
    invoke-virtual {v1, p1}, Lbf;->a(Ljava/lang/StringBuilder;)V

    const-string v1, ",\n"

    .line 1116
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "}"

    .line 1118
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(ZZ)V
    .locals 3

    .line 473
    invoke-super {p0, p1, p2}, Lbo;->a(ZZ)V

    .line 474
    iget-object v0, p0, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 476
    iget-object v2, p0, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbf;

    .line 477
    invoke-virtual {v2, p1, p2}, Lbf;->a(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Laf;[Z)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 456
    aput-boolean v0, p2, v1

    const/16 p2, 0x40

    .line 457
    invoke-virtual {p0, p2}, Lbg;->b(I)Z

    move-result p2

    .line 458
    invoke-virtual {p0, p1, p2}, Lbg;->b(Laf;Z)V

    .line 459
    iget-object v1, p0, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 462
    iget-object v3, p0, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbf;

    .line 463
    invoke-virtual {v3, p1, p2}, Lbf;->b(Laf;Z)V

    .line 464
    invoke-virtual {v3}, Lbf;->y()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public a(Z)Z
    .locals 1

    .line 73
    iget-object v0, p0, Lbg;->ay:Lbt;

    invoke-virtual {v0, p1}, Lbt;->a(Z)Z

    move-result p1

    return p1
.end method

.method public a(ZI)Z
    .locals 1

    .line 96
    iget-object v0, p0, Lbg;->ay:Lbt;

    invoke-virtual {v0, p1, p2}, Lbt;->a(ZI)Z

    move-result p1

    return p1
.end method

.method public ad()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lbg;->aZ:Z

    return v0
.end method

.method public ae()Z
    .locals 1

    .line 511
    iget-boolean v0, p0, Lbg;->aW:Z

    return v0
.end method

.method public af()V
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 660
    iput v2, v1, Lbg;->Q:I

    .line 661
    iput v2, v1, Lbg;->R:I

    .line 663
    iput-boolean v2, v1, Lbg;->aY:Z

    .line 664
    iput-boolean v2, v1, Lbg;->aZ:Z

    .line 665
    iget-object v0, v1, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 667
    invoke-virtual/range {p0 .. p0}, Lbg;->F()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 668
    invoke-virtual/range {p0 .. p0}, Lbg;->G()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 669
    iget-object v5, v1, Lbg;->K:[Lbf$a;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    .line 670
    iget-object v7, v1, Lbg;->K:[Lbf$a;

    aget-object v7, v7, v2

    .line 677
    iget-object v8, v1, Lbg;->aA:Lag;

    if-eqz v8, :cond_0

    .line 678
    iget-wide v9, v8, Lag;->D:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v8, Lag;->D:J

    .line 689
    :cond_0
    iget v8, v1, Lbg;->aV:I

    if-nez v8, :cond_3

    iget v8, v1, Lbg;->aX:I

    invoke-static {v8, v6}, Lbl;->a(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 693
    invoke-virtual/range {p0 .. p0}, Lbg;->g()Lbq$b;

    move-result-object v8

    invoke-static {v1, v8}, Lbw;->a(Lbg;Lbq$b;)V

    move v8, v2

    :goto_0
    if-ge v8, v3, :cond_3

    .line 698
    iget-object v9, v1, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbf;

    .line 719
    invoke-virtual {v9}, Lbf;->t()Z

    move-result v10

    if-eqz v10, :cond_2

    instance-of v10, v9, Lbi;

    if-nez v10, :cond_2

    instance-of v10, v9, Lbb;

    if-nez v10, :cond_2

    instance-of v10, v9, Lbn;

    if-nez v10, :cond_2

    .line 723
    invoke-virtual {v9}, Lbf;->p()Z

    move-result v10

    if-nez v10, :cond_2

    .line 724
    invoke-virtual {v9, v2}, Lbf;->x(I)Lbf$a;

    move-result-object v10

    .line 725
    invoke-virtual {v9, v6}, Lbf;->x(I)Lbf$a;

    move-result-object v11

    .line 727
    sget-object v12, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v10, v12, :cond_1

    iget v10, v9, Lbf;->n:I

    if-eq v10, v6, :cond_1

    sget-object v10, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v11, v10, :cond_1

    iget v10, v9, Lbf;->o:I

    if-eq v10, v6, :cond_1

    move v10, v6

    goto :goto_1

    :cond_1
    move v10, v2

    :goto_1
    if-nez v10, :cond_2

    .line 732
    new-instance v10, Lbq$a;

    invoke-direct {v10}, Lbq$a;-><init>()V

    .line 733
    iget-object v11, v1, Lbg;->az:Lbq$b;

    sget v12, Lbq$a;->a:I

    invoke-static {v2, v9, v11, v10, v12}, Lbg;->a(ILbf;Lbq$b;Lbq$a;I)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x2

    if-le v3, v8, :cond_9

    .line 747
    sget-object v9, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-eq v7, v9, :cond_4

    sget-object v9, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v5, v9, :cond_9

    :cond_4
    iget v9, v1, Lbg;->aX:I

    const/16 v10, 0x400

    .line 749
    invoke-static {v9, v10}, Lbl;->a(II)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 750
    invoke-virtual/range {p0 .. p0}, Lbg;->g()Lbq$b;

    move-result-object v9

    invoke-static {v1, v9}, Lbx;->a(Lbg;Lbq$b;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 751
    sget-object v9, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v7, v9, :cond_6

    .line 752
    invoke-virtual/range {p0 .. p0}, Lbg;->F()I

    move-result v9

    if-ge v0, v9, :cond_5

    if-lez v0, :cond_5

    .line 756
    invoke-virtual {v1, v0}, Lbg;->q(I)V

    .line 757
    iput-boolean v6, v1, Lbg;->aY:Z

    goto :goto_2

    .line 759
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lbg;->F()I

    move-result v0

    .line 762
    :cond_6
    :goto_2
    sget-object v9, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v5, v9, :cond_8

    .line 763
    invoke-virtual/range {p0 .. p0}, Lbg;->G()I

    move-result v9

    if-ge v4, v9, :cond_7

    if-lez v4, :cond_7

    .line 767
    invoke-virtual {v1, v4}, Lbg;->r(I)V

    .line 768
    iput-boolean v6, v1, Lbg;->aZ:Z

    goto :goto_3

    .line 770
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lbg;->G()I

    move-result v4

    :cond_8
    :goto_3
    move v9, v4

    move v4, v0

    move v0, v6

    goto :goto_4

    :cond_9
    move v9, v4

    move v4, v0

    move v0, v2

    :goto_4
    const/16 v10, 0x40

    .line 781
    invoke-virtual {v1, v10}, Lbg;->b(I)Z

    move-result v11

    if-nez v11, :cond_b

    const/16 v11, 0x80

    invoke-virtual {v1, v11}, Lbg;->b(I)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_5

    :cond_a
    move v11, v2

    goto :goto_6

    :cond_b
    :goto_5
    move v11, v6

    .line 783
    :goto_6
    iget-object v12, v1, Lbg;->aB:Laf;

    iput-boolean v2, v12, Laf;->j:Z

    .line 784
    iput-boolean v2, v12, Laf;->k:Z

    .line 786
    iget v13, v1, Lbg;->aX:I

    if-eqz v13, :cond_c

    if-eqz v11, :cond_c

    .line 788
    iput-boolean v6, v12, Laf;->k:Z

    .line 792
    :cond_c
    iget-object v11, v1, Lbg;->aU:Ljava/util/ArrayList;

    .line 793
    invoke-virtual/range {p0 .. p0}, Lbg;->Y()Lbf$a;

    move-result-object v12

    sget-object v13, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-eq v12, v13, :cond_e

    invoke-virtual/range {p0 .. p0}, Lbg;->Z()Lbf$a;

    move-result-object v12

    sget-object v13, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v12, v13, :cond_d

    goto :goto_7

    :cond_d
    move v12, v2

    goto :goto_8

    :cond_e
    :goto_7
    move v12, v6

    .line 796
    :goto_8
    invoke-direct/range {p0 .. p0}, Lbg;->ak()V

    move v13, v2

    :goto_9
    if-ge v13, v3, :cond_10

    .line 802
    iget-object v14, v1, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lbf;

    .line 803
    instance-of v15, v14, Lbo;

    if-eqz v15, :cond_f

    .line 804
    check-cast v14, Lbo;

    invoke-virtual {v14}, Lbo;->af()V

    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 807
    :cond_10
    invoke-virtual {v1, v10}, Lbg;->b(I)Z

    move-result v10

    move v14, v0

    move v0, v2

    move v13, v6

    :goto_a
    if-eqz v13, :cond_22

    add-int/lit8 v15, v0, 0x1

    .line 814
    :try_start_0
    iget-object v0, v1, Lbg;->aB:Laf;

    invoke-virtual {v0}, Laf;->b()V

    .line 815
    invoke-direct/range {p0 .. p0}, Lbg;->ak()V

    .line 829
    iget-object v0, v1, Lbg;->aB:Laf;

    invoke-virtual {v1, v0}, Lbg;->a(Laf;)V

    move v0, v2

    :goto_b
    if-ge v0, v3, :cond_11

    .line 831
    iget-object v6, v1, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbf;

    .line 832
    iget-object v2, v1, Lbg;->aB:Laf;

    invoke-virtual {v6, v2}, Lbf;->a(Laf;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto :goto_b

    .line 835
    :cond_11
    iget-object v0, v1, Lbg;->aB:Laf;

    invoke-virtual {v1, v0}, Lbg;->b(Laf;)Z

    move-result v13

    .line 836
    iget-object v0, v1, Lbg;->ba:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lbg;->ba:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 837
    iget-object v0, v1, Lbg;->ba:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe;

    iget-object v6, v1, Lbg;->aB:Laf;

    iget-object v8, v1, Lbg;->B:Lbe;

    invoke-virtual {v6, v8}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lbg;->a(Lbe;Laj;)V

    .line 838
    iput-object v2, v1, Lbg;->ba:Ljava/lang/ref/WeakReference;

    .line 840
    :cond_12
    iget-object v0, v1, Lbg;->bc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    iget-object v0, v1, Lbg;->bc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 841
    iget-object v0, v1, Lbg;->bc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe;

    iget-object v6, v1, Lbg;->aB:Laf;

    iget-object v8, v1, Lbg;->D:Lbe;

    invoke-virtual {v6, v8}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lbg;->b(Lbe;Laj;)V

    .line 842
    iput-object v2, v1, Lbg;->bc:Ljava/lang/ref/WeakReference;

    .line 844
    :cond_13
    iget-object v0, v1, Lbg;->bb:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_14

    iget-object v0, v1, Lbg;->bb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 845
    iget-object v0, v1, Lbg;->bb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe;

    iget-object v6, v1, Lbg;->aB:Laf;

    iget-object v8, v1, Lbg;->A:Lbe;

    invoke-virtual {v6, v8}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lbg;->a(Lbe;Laj;)V

    .line 846
    iput-object v2, v1, Lbg;->bb:Ljava/lang/ref/WeakReference;

    .line 848
    :cond_14
    iget-object v0, v1, Lbg;->bd:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    iget-object v0, v1, Lbg;->bd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 849
    iget-object v0, v1, Lbg;->bd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe;

    iget-object v6, v1, Lbg;->aB:Laf;

    iget-object v8, v1, Lbg;->C:Lbe;

    invoke-virtual {v6, v8}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lbg;->b(Lbe;Laj;)V

    .line 850
    iput-object v2, v1, Lbg;->bd:Ljava/lang/ref/WeakReference;

    :cond_15
    if-eqz v13, :cond_16

    .line 853
    iget-object v0, v1, Lbg;->aB:Laf;

    invoke-virtual {v0}, Laf;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 856
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 857
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EXCEPTION : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_16
    :goto_c
    if-eqz v13, :cond_17

    .line 860
    iget-object v0, v1, Lbg;->aB:Laf;

    sget-object v2, Lbl;->a:[Z

    invoke-virtual {v1, v0, v2}, Lbg;->a(Laf;[Z)Z

    move-result v2

    move v6, v2

    goto :goto_e

    .line 862
    :cond_17
    iget-object v0, v1, Lbg;->aB:Laf;

    invoke-virtual {v1, v0, v10}, Lbg;->b(Laf;Z)V

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_18

    .line 864
    iget-object v2, v1, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbf;

    .line 865
    iget-object v6, v1, Lbg;->aB:Laf;

    invoke-virtual {v2, v6, v10}, Lbf;->b(Laf;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_18
    const/4 v6, 0x0

    :goto_e
    const/16 v0, 0x8

    if-eqz v12, :cond_1b

    if-ge v15, v0, :cond_1b

    .line 870
    sget-object v2, Lbl;->a:[Z

    const/4 v8, 0x2

    aget-boolean v2, v2, v8

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    :goto_f
    if-ge v2, v3, :cond_19

    .line 876
    iget-object v0, v1, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf;

    move/from16 v16, v3

    .line 877
    iget v3, v0, Lbf;->Q:I

    invoke-virtual {v0}, Lbf;->F()I

    move-result v17

    add-int v3, v3, v17

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 878
    iget v3, v0, Lbf;->R:I

    invoke-virtual {v0}, Lbf;->G()I

    move-result v0

    add-int/2addr v3, v0

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v16

    const/16 v0, 0x8

    goto :goto_f

    :cond_19
    move/from16 v16, v3

    .line 880
    iget v0, v1, Lbg;->X:I

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 881
    iget v2, v1, Lbg;->Y:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 882
    sget-object v3, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v7, v3, :cond_1a

    .line 883
    invoke-virtual/range {p0 .. p0}, Lbg;->F()I

    move-result v3

    if-ge v3, v0, :cond_1a

    .line 888
    invoke-virtual {v1, v0}, Lbg;->q(I)V

    .line 889
    iget-object v0, v1, Lbg;->K:[Lbf$a;

    sget-object v3, Lbf$a;->WRAP_CONTENT:Lbf$a;

    const/4 v6, 0x0

    aput-object v3, v0, v6

    const/4 v6, 0x1

    const/4 v14, 0x1

    .line 894
    :cond_1a
    sget-object v0, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v5, v0, :cond_1c

    .line 895
    invoke-virtual/range {p0 .. p0}, Lbg;->G()I

    move-result v0

    if-ge v0, v2, :cond_1c

    .line 900
    invoke-virtual {v1, v2}, Lbg;->r(I)V

    .line 901
    iget-object v0, v1, Lbg;->K:[Lbf$a;

    sget-object v2, Lbf$a;->WRAP_CONTENT:Lbf$a;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_10

    :cond_1b
    move/from16 v16, v3

    :cond_1c
    move v0, v6

    move v6, v14

    .line 908
    :goto_10
    iget v2, v1, Lbg;->X:I

    invoke-virtual/range {p0 .. p0}, Lbg;->F()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 909
    invoke-virtual/range {p0 .. p0}, Lbg;->F()I

    move-result v3

    if-le v2, v3, :cond_1d

    .line 914
    invoke-virtual {v1, v2}, Lbg;->q(I)V

    .line 915
    iget-object v0, v1, Lbg;->K:[Lbf$a;

    sget-object v2, Lbf$a;->FIXED:Lbf$a;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v0, 0x1

    const/4 v6, 0x1

    .line 919
    :cond_1d
    iget v2, v1, Lbg;->Y:I

    invoke-virtual/range {p0 .. p0}, Lbg;->G()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 920
    invoke-virtual/range {p0 .. p0}, Lbg;->G()I

    move-result v3

    if-le v2, v3, :cond_1e

    .line 925
    invoke-virtual {v1, v2}, Lbg;->r(I)V

    .line 926
    iget-object v0, v1, Lbg;->K:[Lbf$a;

    sget-object v2, Lbf$a;->FIXED:Lbf$a;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    move v0, v3

    move v6, v0

    goto :goto_11

    :cond_1e
    const/4 v3, 0x1

    :goto_11
    if-nez v6, :cond_20

    .line 932
    iget-object v2, v1, Lbg;->K:[Lbf$a;

    const/4 v8, 0x0

    aget-object v2, v2, v8

    sget-object v13, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v2, v13, :cond_1f

    if-lez v4, :cond_1f

    .line 934
    invoke-virtual/range {p0 .. p0}, Lbg;->F()I

    move-result v2

    if-le v2, v4, :cond_1f

    .line 940
    iput-boolean v3, v1, Lbg;->aY:Z

    .line 942
    iget-object v0, v1, Lbg;->K:[Lbf$a;

    sget-object v2, Lbf$a;->FIXED:Lbf$a;

    aput-object v2, v0, v8

    .line 943
    invoke-virtual {v1, v4}, Lbg;->q(I)V

    move v0, v3

    move v6, v0

    .line 947
    :cond_1f
    iget-object v2, v1, Lbg;->K:[Lbf$a;

    aget-object v2, v2, v3

    sget-object v8, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v2, v8, :cond_20

    if-lez v9, :cond_20

    .line 949
    invoke-virtual/range {p0 .. p0}, Lbg;->G()I

    move-result v2

    if-le v2, v9, :cond_20

    .line 955
    iput-boolean v3, v1, Lbg;->aZ:Z

    .line 957
    iget-object v0, v1, Lbg;->K:[Lbf$a;

    sget-object v2, Lbf$a;->FIXED:Lbf$a;

    aput-object v2, v0, v3

    .line 958
    invoke-virtual {v1, v9}, Lbg;->r(I)V

    const/16 v0, 0x8

    const/4 v2, 0x1

    const/4 v14, 0x1

    goto :goto_12

    :cond_20
    move v2, v0

    move v14, v6

    const/16 v0, 0x8

    :goto_12
    if-le v15, v0, :cond_21

    const/4 v13, 0x0

    goto :goto_13

    :cond_21
    move v13, v2

    :goto_13
    move v0, v15

    move/from16 v3, v16

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x2

    goto/16 :goto_a

    .line 975
    :cond_22
    check-cast v11, Ljava/util/ArrayList;

    iput-object v11, v1, Lbg;->aU:Ljava/util/ArrayList;

    if-eqz v14, :cond_23

    .line 978
    iget-object v0, v1, Lbg;->K:[Lbf$a;

    const/4 v2, 0x0

    aput-object v7, v0, v2

    .line 979
    iget-object v0, v1, Lbg;->K:[Lbf$a;

    const/4 v2, 0x1

    aput-object v5, v0, v2

    .line 982
    :cond_23
    iget-object v0, v1, Lbg;->aB:Laf;

    invoke-virtual {v0}, Laf;->g()Lae;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbg;->a(Lae;)V

    return-void
.end method

.method public ag()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ah()Laf;
    .locals 1

    .line 1037
    iget-object v0, p0, Lbg;->aB:Laf;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 61
    iget-object v0, p0, Lbg;->ay:Lbt;

    invoke-virtual {v0}, Lbt;->b()V

    return-void
.end method

.method public b(Lbe;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lbg;->bb:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p1}, Lbe;->d()I

    move-result v0

    iget-object v1, p0, Lbg;->bb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbe;

    invoke-virtual {v1}, Lbe;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbg;->bb:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 235
    iget v0, p0, Lbg;->aX:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Laf;)Z
    .locals 12

    const/16 v0, 0x40

    .line 335
    invoke-virtual {p0, v0}, Lbg;->b(I)Z

    move-result v0

    .line 336
    invoke-virtual {p0, p1, v0}, Lbg;->a(Laf;Z)V

    .line 337
    iget-object v1, p0, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    .line 341
    iget-object v6, p0, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbf;

    .line 342
    invoke-virtual {v6, v2, v2}, Lbf;->a(IZ)V

    .line 343
    invoke-virtual {v6, v5, v2}, Lbf;->a(IZ)V

    .line 344
    instance-of v6, v6, Lbb;

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_3

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    .line 351
    iget-object v4, p0, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbf;

    .line 352
    instance-of v6, v4, Lbb;

    if-eqz v6, :cond_2

    .line 353
    check-cast v4, Lbb;

    invoke-virtual {v4}, Lbb;->f()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 358
    :cond_3
    iget-object v3, p0, Lbg;->aR:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_6

    .line 360
    iget-object v4, p0, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbf;

    .line 361
    invoke-virtual {v4}, Lbf;->ac()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 362
    instance-of v6, v4, Lbn;

    if-eqz v6, :cond_4

    .line 363
    iget-object v6, p0, Lbg;->aR:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 365
    :cond_4
    invoke-virtual {v4, p1, v0}, Lbf;->a(Laf;Z)V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 372
    :cond_6
    :goto_4
    iget-object v3, p0, Lbg;->aR:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 373
    iget-object v3, p0, Lbg;->aR:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    .line 375
    iget-object v4, p0, Lbg;->aR:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbf;

    .line 376
    check-cast v6, Lbn;

    .line 380
    iget-object v7, p0, Lbg;->aR:Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Lbn;->a(Ljava/util/HashSet;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 381
    invoke-virtual {v6, p1, v0}, Lbn;->a(Laf;Z)V

    .line 382
    iget-object v4, p0, Lbg;->aR:Ljava/util/HashSet;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 386
    :cond_8
    iget-object v4, p0, Lbg;->aR:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 388
    iget-object v3, p0, Lbg;->aR:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbf;

    .line 389
    invoke-virtual {v4, p1, v0}, Lbf;->a(Laf;Z)V

    goto :goto_5

    .line 391
    :cond_9
    iget-object v3, p0, Lbg;->aR:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    goto :goto_4

    .line 395
    :cond_a
    sget-boolean v3, Laf;->a:Z

    if-eqz v3, :cond_e

    .line 396
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v4, v2

    :goto_6
    if-ge v4, v1, :cond_c

    .line 398
    iget-object v6, p0, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbf;

    .line 399
    invoke-virtual {v6}, Lbf;->ac()Z

    move-result v7

    if-nez v7, :cond_b

    .line 400
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 404
    :cond_c
    invoke-virtual {p0}, Lbg;->Y()Lbf$a;

    move-result-object v1

    sget-object v4, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v1, v4, :cond_d

    move v10, v2

    goto :goto_7

    :cond_d
    move v10, v5

    :goto_7
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v3

    .line 407
    invoke-virtual/range {v6 .. v11}, Lbg;->a(Lbg;Laf;Ljava/util/HashSet;IZ)V

    .line 408
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbf;

    .line 409
    invoke-static {p0, p1, v3}, Lbl;->a(Lbg;Laf;Lbf;)V

    .line 410
    invoke-virtual {v3, p1, v0}, Lbf;->a(Laf;Z)V

    goto :goto_8

    :cond_e
    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_14

    .line 415
    iget-object v4, p0, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbf;

    .line 416
    instance-of v6, v4, Lbg;

    if-eqz v6, :cond_12

    .line 417
    iget-object v6, v4, Lbf;->K:[Lbf$a;

    aget-object v6, v6, v2

    .line 418
    iget-object v7, v4, Lbf;->K:[Lbf$a;

    aget-object v7, v7, v5

    .line 419
    sget-object v8, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v6, v8, :cond_f

    .line 420
    sget-object v8, Lbf$a;->FIXED:Lbf$a;

    invoke-virtual {v4, v8}, Lbf;->a(Lbf$a;)V

    .line 422
    :cond_f
    sget-object v8, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v7, v8, :cond_10

    .line 423
    sget-object v8, Lbf$a;->FIXED:Lbf$a;

    invoke-virtual {v4, v8}, Lbf;->b(Lbf$a;)V

    .line 425
    :cond_10
    invoke-virtual {v4, p1, v0}, Lbf;->a(Laf;Z)V

    .line 426
    sget-object v8, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v6, v8, :cond_11

    .line 427
    invoke-virtual {v4, v6}, Lbf;->a(Lbf$a;)V

    .line 429
    :cond_11
    sget-object v6, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v7, v6, :cond_13

    .line 430
    invoke-virtual {v4, v7}, Lbf;->b(Lbf$a;)V

    goto :goto_a

    .line 433
    :cond_12
    invoke-static {p0, p1, v4}, Lbl;->a(Lbg;Laf;Lbf;)V

    .line 434
    invoke-virtual {v4}, Lbf;->ac()Z

    move-result v6

    if-nez v6, :cond_13

    .line 435
    invoke-virtual {v4, p1, v0}, Lbf;->a(Laf;Z)V

    :cond_13
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 441
    :cond_14
    iget v0, p0, Lbg;->aG:I

    const/4 v1, 0x0

    if-lez v0, :cond_15

    .line 442
    invoke-static {p0, p1, v1, v2}, Lbc;->a(Lbg;Laf;Ljava/util/ArrayList;I)V

    .line 444
    :cond_15
    iget v0, p0, Lbg;->aH:I

    if-lez v0, :cond_16

    .line 445
    invoke-static {p0, p1, v1, v5}, Lbc;->a(Lbg;Laf;Ljava/util/ArrayList;I)V

    :cond_16
    return v5
.end method

.method public c()V
    .locals 1

    .line 68
    iget-object v0, p0, Lbg;->ay:Lbt;

    invoke-virtual {v0}, Lbt;->c()V

    return-void
.end method

.method c(Lbe;)V
    .locals 2

    .line 295
    iget-object v0, p0, Lbg;->bc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p1}, Lbe;->d()I

    move-result v0

    iget-object v1, p0, Lbg;->bc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbe;

    invoke-virtual {v1}, Lbe;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbg;->bc:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public d(Lbe;)V
    .locals 2

    .line 302
    iget-object v0, p0, Lbg;->bd:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p1}, Lbe;->d()I

    move-result v0

    iget-object v1, p0, Lbg;->bd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbe;

    invoke-virtual {v1}, Lbe;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbg;->bd:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public f()V
    .locals 1

    .line 125
    iget-object v0, p0, Lbg;->a:Lbq;

    invoke-virtual {v0, p0}, Lbq;->a(Lbg;)V

    return-void
.end method

.method public g()Lbq$b;
    .locals 1

    .line 136
    iget-object v0, p0, Lbg;->az:Lbq$b;

    return-object v0
.end method

.method public g(Z)Z
    .locals 1

    .line 92
    iget-object v0, p0, Lbg;->ay:Lbt;

    invoke-virtual {v0, p1}, Lbt;->b(Z)Z

    move-result p1

    return p1
.end method

.method public h()I
    .locals 1

    .line 225
    iget v0, p0, Lbg;->aX:I

    return v0
.end method

.method public h(Z)V
    .locals 0

    .line 502
    iput-boolean p1, p0, Lbg;->aW:Z

    return-void
.end method

.method public i()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lbg;->aY:Z

    return v0
.end method

.method public w()V
    .locals 1

    .line 250
    iget-object v0, p0, Lbg;->aB:Laf;

    invoke-virtual {v0}, Laf;->b()V

    const/4 v0, 0x0

    .line 251
    iput v0, p0, Lbg;->aC:I

    .line 252
    iput v0, p0, Lbg;->aE:I

    .line 253
    iput v0, p0, Lbg;->aD:I

    .line 254
    iput v0, p0, Lbg;->aF:I

    .line 255
    iput-boolean v0, p0, Lbg;->aP:Z

    .line 256
    invoke-super {p0}, Lbo;->w()V

    return-void
.end method
