.class public Lbf;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbf$a;
    }
.end annotation


# static fields
.field public static Z:F = 0.5f


# instance fields
.field public A:Lbe;

.field public B:Lbe;

.field public C:Lbe;

.field public D:Lbe;

.field public E:Lbe;

.field F:Lbe;

.field G:Lbe;

.field public H:Lbe;

.field public I:[Lbe;

.field protected J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbe;",
            ">;"
        }
    .end annotation
.end field

.field public K:[Lbf$a;

.field public L:Lbf;

.field M:I

.field N:I

.field public O:F

.field protected P:I

.field protected Q:I

.field protected R:I

.field S:I

.field T:I

.field protected U:I

.field protected V:I

.field W:I

.field protected X:I

.field protected Y:I

.field private a:Z

.field private aA:I

.field private aB:I

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Z

.field private aG:I

.field private aH:[I

.field private aI:F

.field private aJ:Z

.field private aK:Z

.field private aL:Z

.field private aM:I

.field private aN:I

.field private aO:[Z

.field private aP:Ljava/lang/Object;

.field private aQ:I

.field private aR:I

.field private aS:Z

.field private aT:Ljava/lang/String;

.field private aU:Ljava/lang/String;

.field aa:F

.field ab:F

.field ac:I

.field ad:I

.field ae:I

.field af:I

.field ag:Z

.field ah:Z

.field ai:Z

.field aj:Z

.field ak:Z

.field al:Z

.field am:Z

.field an:I

.field ao:I

.field ap:Z

.field aq:Z

.field public ar:[F

.field protected as:[Lbf;

.field protected at:[Lbf;

.field au:Lbf;

.field av:Lbf;

.field public aw:I

.field public ax:I

.field private ay:Z

.field private az:Z

.field public b:Z

.field public c:[Lce;

.field public d:Lbr;

.field public e:Lbr;

.field public f:Lca;

.field public g:Lcc;

.field public h:[Z

.field i:Z

.field public j:Lba;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:[I

.field public q:I

.field public r:I

.field public s:F

.field public t:I

.field public u:I

.field public v:F

.field public w:Z

.field public x:Z

.field y:I

.field z:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lbf;->b:Z

    const/4 v1, 0x2

    .line 63
    new-array v2, v1, [Lce;

    iput-object v2, p0, Lbf;->c:[Lce;

    const/4 v2, 0x0

    .line 67
    iput-object v2, p0, Lbf;->f:Lca;

    .line 68
    iput-object v2, p0, Lbf;->g:Lcc;

    .line 70
    new-array v3, v1, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lbf;->h:[Z

    .line 71
    iput-boolean v0, p0, Lbf;->i:Z

    const/4 v3, 0x1

    .line 72
    iput-boolean v3, p0, Lbf;->a:Z

    .line 73
    iput-boolean v0, p0, Lbf;->ay:Z

    .line 74
    iput-boolean v3, p0, Lbf;->az:Z

    const/4 v4, -0x1

    .line 76
    iput v4, p0, Lbf;->aA:I

    .line 77
    iput v4, p0, Lbf;->aB:I

    .line 79
    new-instance v5, Lba;

    invoke-direct {v5, p0}, Lba;-><init>(Lbf;)V

    iput-object v5, p0, Lbf;->j:Lba;

    .line 92
    iput-boolean v0, p0, Lbf;->aC:Z

    .line 93
    iput-boolean v0, p0, Lbf;->aD:Z

    .line 95
    iput-boolean v0, p0, Lbf;->aE:Z

    .line 96
    iput-boolean v0, p0, Lbf;->aF:Z

    .line 282
    iput v4, p0, Lbf;->l:I

    .line 283
    iput v4, p0, Lbf;->m:I

    .line 287
    iput v0, p0, Lbf;->aG:I

    .line 289
    iput v0, p0, Lbf;->n:I

    .line 290
    iput v0, p0, Lbf;->o:I

    .line 291
    new-array v5, v1, [I

    iput-object v5, p0, Lbf;->p:[I

    .line 293
    iput v0, p0, Lbf;->q:I

    .line 294
    iput v0, p0, Lbf;->r:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 295
    iput v5, p0, Lbf;->s:F

    .line 296
    iput v0, p0, Lbf;->t:I

    .line 297
    iput v0, p0, Lbf;->u:I

    .line 298
    iput v5, p0, Lbf;->v:F

    .line 302
    iput v4, p0, Lbf;->y:I

    .line 303
    iput v5, p0, Lbf;->z:F

    .line 305
    new-array v5, v1, [I

    fill-array-data v5, :array_1

    iput-object v5, p0, Lbf;->aH:[I

    const/4 v5, 0x0

    .line 306
    iput v5, p0, Lbf;->aI:F

    .line 307
    iput-boolean v0, p0, Lbf;->aJ:Z

    .line 310
    iput-boolean v0, p0, Lbf;->aL:Z

    .line 398
    iput v0, p0, Lbf;->aM:I

    .line 399
    iput v0, p0, Lbf;->aN:I

    .line 417
    new-instance v6, Lbe;

    sget-object v7, Lbe$a;->LEFT:Lbe$a;

    invoke-direct {v6, p0, v7}, Lbe;-><init>(Lbf;Lbe$a;)V

    iput-object v6, p0, Lbf;->A:Lbe;

    .line 418
    new-instance v6, Lbe;

    sget-object v7, Lbe$a;->TOP:Lbe$a;

    invoke-direct {v6, p0, v7}, Lbe;-><init>(Lbf;Lbe$a;)V

    iput-object v6, p0, Lbf;->B:Lbe;

    .line 419
    new-instance v6, Lbe;

    sget-object v7, Lbe$a;->RIGHT:Lbe$a;

    invoke-direct {v6, p0, v7}, Lbe;-><init>(Lbf;Lbe$a;)V

    iput-object v6, p0, Lbf;->C:Lbe;

    .line 420
    new-instance v6, Lbe;

    sget-object v7, Lbe$a;->BOTTOM:Lbe$a;

    invoke-direct {v6, p0, v7}, Lbe;-><init>(Lbf;Lbe$a;)V

    iput-object v6, p0, Lbf;->D:Lbe;

    .line 421
    new-instance v6, Lbe;

    sget-object v7, Lbe$a;->BASELINE:Lbe$a;

    invoke-direct {v6, p0, v7}, Lbe;-><init>(Lbf;Lbe$a;)V

    iput-object v6, p0, Lbf;->E:Lbe;

    .line 422
    new-instance v6, Lbe;

    sget-object v7, Lbe$a;->CENTER_X:Lbe$a;

    invoke-direct {v6, p0, v7}, Lbe;-><init>(Lbf;Lbe$a;)V

    iput-object v6, p0, Lbf;->F:Lbe;

    .line 423
    new-instance v6, Lbe;

    sget-object v7, Lbe$a;->CENTER_Y:Lbe$a;

    invoke-direct {v6, p0, v7}, Lbe;-><init>(Lbf;Lbe$a;)V

    iput-object v6, p0, Lbf;->G:Lbe;

    .line 424
    new-instance v6, Lbe;

    sget-object v7, Lbe$a;->CENTER:Lbe$a;

    invoke-direct {v6, p0, v7}, Lbe;-><init>(Lbf;Lbe$a;)V

    iput-object v6, p0, Lbf;->H:Lbe;

    const/4 v6, 0x6

    .line 432
    new-array v6, v6, [Lbe;

    iget-object v7, p0, Lbf;->A:Lbe;

    aput-object v7, v6, v0

    iget-object v7, p0, Lbf;->C:Lbe;

    aput-object v7, v6, v3

    iget-object v7, p0, Lbf;->B:Lbe;

    aput-object v7, v6, v1

    iget-object v7, p0, Lbf;->D:Lbe;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    iget-object v7, p0, Lbf;->E:Lbe;

    const/4 v8, 0x4

    aput-object v7, v6, v8

    iget-object v7, p0, Lbf;->H:Lbe;

    const/4 v8, 0x5

    aput-object v7, v6, v8

    iput-object v6, p0, Lbf;->I:[Lbe;

    .line 433
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lbf;->J:Ljava/util/ArrayList;

    .line 435
    new-array v6, v1, [Z

    iput-object v6, p0, Lbf;->aO:[Z

    .line 440
    new-array v6, v1, [Lbf$a;

    sget-object v7, Lbf$a;->FIXED:Lbf$a;

    aput-object v7, v6, v0

    sget-object v7, Lbf$a;->FIXED:Lbf$a;

    aput-object v7, v6, v3

    iput-object v6, p0, Lbf;->K:[Lbf$a;

    .line 443
    iput-object v2, p0, Lbf;->L:Lbf;

    .line 446
    iput v0, p0, Lbf;->M:I

    .line 447
    iput v0, p0, Lbf;->N:I

    .line 448
    iput v5, p0, Lbf;->O:F

    .line 449
    iput v4, p0, Lbf;->P:I

    .line 452
    iput v0, p0, Lbf;->Q:I

    .line 453
    iput v0, p0, Lbf;->R:I

    .line 454
    iput v0, p0, Lbf;->S:I

    .line 455
    iput v0, p0, Lbf;->T:I

    .line 458
    iput v0, p0, Lbf;->U:I

    .line 459
    iput v0, p0, Lbf;->V:I

    .line 462
    iput v0, p0, Lbf;->W:I

    .line 471
    sget v5, Lbf;->Z:F

    iput v5, p0, Lbf;->aa:F

    .line 472
    iput v5, p0, Lbf;->ab:F

    .line 480
    iput v0, p0, Lbf;->aQ:I

    .line 483
    iput v0, p0, Lbf;->aR:I

    .line 485
    iput-boolean v0, p0, Lbf;->aS:Z

    .line 486
    iput-object v2, p0, Lbf;->aT:Ljava/lang/String;

    .line 487
    iput-object v2, p0, Lbf;->aU:Ljava/lang/String;

    .line 499
    iput-boolean v0, p0, Lbf;->am:Z

    .line 502
    iput v0, p0, Lbf;->an:I

    .line 503
    iput v0, p0, Lbf;->ao:I

    .line 507
    new-array v5, v1, [F

    fill-array-data v5, :array_2

    iput-object v5, p0, Lbf;->ar:[F

    .line 509
    new-array v5, v1, [Lbf;

    aput-object v2, v5, v0

    aput-object v2, v5, v3

    iput-object v5, p0, Lbf;->as:[Lbf;

    .line 510
    new-array v1, v1, [Lbf;

    aput-object v2, v1, v0

    aput-object v2, v1, v3

    iput-object v1, p0, Lbf;->at:[Lbf;

    .line 512
    iput-object v2, p0, Lbf;->au:Lbf;

    .line 513
    iput-object v2, p0, Lbf;->av:Lbf;

    .line 703
    iput v4, p0, Lbf;->aw:I

    .line 704
    iput v4, p0, Lbf;->ax:I

    .line 733
    invoke-direct {p0}, Lbf;->b()V

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private a(Laf;ZZZZLaj;Laj;Lbf$a;ZLbe;Lbe;IIIIFZZZZZIIIIFZ)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    .line 2873
    invoke-virtual {v10, v13}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v9

    .line 2874
    invoke-virtual {v10, v14}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v8

    .line 2875
    invoke-virtual/range {p10 .. p10}, Lbe;->k()Lbe;

    move-result-object v5

    invoke-virtual {v10, v5}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v7

    .line 2876
    invoke-virtual/range {p11 .. p11}, Lbe;->k()Lbe;

    move-result-object v5

    invoke-virtual {v10, v5}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v6

    .line 2878
    invoke-static {}, Laf;->a()Lag;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2879
    invoke-static {}, Laf;->a()Lag;

    move-result-object v5

    iget-wide v11, v5, Lag;->w:J

    const-wide/16 v16, 0x1

    add-long v11, v11, v16

    iput-wide v11, v5, Lag;->w:J

    .line 2882
    :cond_0
    invoke-virtual/range {p10 .. p10}, Lbe;->m()Z

    move-result v11

    .line 2883
    invoke-virtual/range {p11 .. p11}, Lbe;->m()Z

    move-result v12

    .line 2884
    iget-object v5, v0, Lbf;->H:Lbe;

    invoke-virtual {v5}, Lbe;->m()Z

    move-result v16

    if-eqz v11, :cond_1

    const/16 v18, 0x1

    goto :goto_0

    :cond_1
    const/16 v18, 0x0

    :goto_0
    if-eqz v12, :cond_2

    add-int/lit8 v18, v18, 0x1

    :cond_2
    if-eqz v16, :cond_3

    add-int/lit8 v18, v18, 0x1

    :cond_3
    move/from16 v19, v18

    if-eqz p17, :cond_4

    const/16 v20, 0x3

    goto :goto_1

    :cond_4
    move/from16 v20, p22

    .line 2902
    :goto_1
    sget-object v21, Lbf$1;->b:[I

    invoke-virtual/range {p8 .. p8}, Lbf$a;->ordinal()I

    move-result v22

    aget v5, v21, v22

    const/4 v2, 0x2

    const/4 v14, 0x1

    if-eq v5, v14, :cond_5

    if-eq v5, v2, :cond_5

    const/4 v14, 0x3

    if-eq v5, v14, :cond_5

    const/4 v14, 0x4

    if-eq v5, v14, :cond_7

    :cond_5
    move/from16 v5, v20

    :cond_6
    const/16 v20, 0x0

    goto :goto_2

    :cond_7
    move/from16 v5, v20

    if-eq v5, v14, :cond_6

    const/16 v20, 0x1

    .line 2922
    :goto_2
    iget v14, v0, Lbf;->aA:I

    const/4 v2, -0x1

    if-eq v14, v2, :cond_8

    if-eqz p2, :cond_8

    .line 2928
    iput v2, v0, Lbf;->aA:I

    move-object/from16 v21, v6

    const/16 v20, 0x0

    goto :goto_3

    :cond_8
    move/from16 v14, p13

    move-object/from16 v21, v6

    .line 2930
    :goto_3
    iget v6, v0, Lbf;->aB:I

    if-eq v6, v2, :cond_9

    if-nez p2, :cond_9

    .line 2936
    iput v2, v0, Lbf;->aB:I

    const/16 v20, 0x0

    goto :goto_4

    :cond_9
    move v6, v14

    .line 2939
    :goto_4
    iget v14, v0, Lbf;->aR:I

    const/16 v2, 0x8

    if-ne v14, v2, :cond_a

    const/4 v6, 0x0

    const/16 v20, 0x0

    :cond_a
    if-eqz p27, :cond_c

    if-nez v11, :cond_b

    if-nez v12, :cond_b

    if-nez v16, :cond_b

    move/from16 v14, p12

    .line 2947
    invoke-virtual {v10, v9, v14}, Laf;->a(Laj;I)V

    goto :goto_5

    :cond_b
    if-eqz v11, :cond_c

    if-nez v12, :cond_c

    .line 2949
    invoke-virtual/range {p10 .. p10}, Lbe;->j()I

    move-result v14

    invoke-virtual {v10, v9, v7, v14, v2}, Laf;->c(Laj;Laj;II)Lad;

    :cond_c
    :goto_5
    if-nez v20, :cond_10

    if-eqz p9, :cond_e

    const/4 v2, 0x0

    const/4 v14, 0x3

    .line 2956
    invoke-virtual {v10, v8, v9, v2, v14}, Laf;->c(Laj;Laj;II)Lad;

    if-lez v15, :cond_d

    const/16 v6, 0x8

    .line 2958
    invoke-virtual {v10, v8, v9, v15, v6}, Laf;->a(Laj;Laj;II)V

    goto :goto_6

    :cond_d
    const/16 v6, 0x8

    :goto_6
    const v2, 0x7fffffff

    if-ge v1, v2, :cond_f

    .line 2961
    invoke-virtual {v10, v8, v9, v1, v6}, Laf;->b(Laj;Laj;II)V

    goto :goto_7

    :cond_e
    move v1, v2

    const/4 v14, 0x3

    .line 2964
    invoke-virtual {v10, v8, v9, v6, v1}, Laf;->c(Laj;Laj;II)Lad;

    :cond_f
    :goto_7
    move/from16 v23, v3

    move v15, v5

    move-object v1, v7

    move-object v14, v8

    move-object/from16 v2, v21

    move/from16 v21, v19

    :goto_8
    move/from16 v19, p5

    goto/16 :goto_12

    :cond_10
    move/from16 v1, v19

    const/4 v2, 0x2

    const/4 v14, 0x3

    if-eq v1, v2, :cond_13

    if-nez p17, :cond_13

    const/4 v2, 0x1

    if-eq v5, v2, :cond_11

    if-nez v5, :cond_13

    .line 2972
    :cond_11
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v4, :cond_12

    .line 2974
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_12
    const/16 v6, 0x8

    .line 2976
    invoke-virtual {v10, v8, v9, v2, v6}, Laf;->c(Laj;Laj;II)Lad;

    move/from16 v19, p5

    move/from16 v23, v3

    move v15, v5

    move-object v14, v8

    move-object/from16 v2, v21

    const/16 v20, 0x0

    :goto_9
    move/from16 v21, v1

    move-object v1, v7

    goto/16 :goto_12

    :cond_13
    const/4 v2, -0x2

    if-ne v3, v2, :cond_14

    move v3, v6

    :cond_14
    if-ne v4, v2, :cond_15

    move v2, v6

    goto :goto_a

    :cond_15
    move v2, v4

    :goto_a
    if-lez v6, :cond_16

    const/4 v4, 0x1

    if-eq v5, v4, :cond_16

    const/4 v6, 0x0

    :cond_16
    if-lez v3, :cond_17

    const/16 v4, 0x8

    .line 2993
    invoke-virtual {v10, v8, v9, v3, v4}, Laf;->a(Laj;Laj;II)V

    .line 2994
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_17
    if-lez v2, :cond_1a

    if-eqz p3, :cond_18

    const/4 v4, 0x1

    if-ne v5, v4, :cond_18

    const/4 v4, 0x0

    goto :goto_b

    :cond_18
    const/4 v4, 0x1

    :goto_b
    if-eqz v4, :cond_19

    const/16 v4, 0x8

    .line 3002
    invoke-virtual {v10, v8, v9, v2, v4}, Laf;->b(Laj;Laj;II)V

    goto :goto_c

    :cond_19
    const/16 v4, 0x8

    .line 3004
    :goto_c
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_d

    :cond_1a
    const/16 v4, 0x8

    :goto_d
    const/4 v14, 0x1

    if-ne v5, v14, :cond_1d

    if-eqz p3, :cond_1b

    .line 3008
    invoke-virtual {v10, v8, v9, v6, v4}, Laf;->c(Laj;Laj;II)Lad;

    goto :goto_e

    :cond_1b
    if-eqz p19, :cond_1c

    const/4 v14, 0x5

    .line 3010
    invoke-virtual {v10, v8, v9, v6, v14}, Laf;->c(Laj;Laj;II)Lad;

    .line 3011
    invoke-virtual {v10, v8, v9, v6, v4}, Laf;->b(Laj;Laj;II)V

    goto :goto_e

    :cond_1c
    const/4 v14, 0x5

    .line 3013
    invoke-virtual {v10, v8, v9, v6, v14}, Laf;->c(Laj;Laj;II)Lad;

    .line 3014
    invoke-virtual {v10, v8, v9, v6, v4}, Laf;->b(Laj;Laj;II)V

    :goto_e
    move/from16 v19, p5

    move v4, v2

    move/from16 v23, v3

    move v15, v5

    move-object v14, v8

    move-object/from16 v2, v21

    goto :goto_9

    :cond_1d
    const/4 v4, 0x2

    if-ne v5, v4, :cond_21

    .line 3019
    invoke-virtual/range {p10 .. p10}, Lbe;->i()Lbe$a;

    move-result-object v4

    sget-object v6, Lbe$a;->TOP:Lbe$a;

    if-eq v4, v6, :cond_1f

    invoke-virtual/range {p10 .. p10}, Lbe;->i()Lbe$a;

    move-result-object v4

    sget-object v6, Lbe$a;->BOTTOM:Lbe$a;

    if-ne v4, v6, :cond_1e

    goto :goto_f

    .line 3024
    :cond_1e
    iget-object v4, v0, Lbf;->L:Lbf;

    sget-object v6, Lbe$a;->LEFT:Lbe$a;

    invoke-virtual {v4, v6}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v4

    invoke-virtual {v10, v4}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v4

    .line 3025
    iget-object v6, v0, Lbf;->L:Lbf;

    sget-object v14, Lbe$a;->RIGHT:Lbe$a;

    invoke-virtual {v6, v14}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v6

    invoke-virtual {v10, v6}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v6

    goto :goto_10

    .line 3021
    :cond_1f
    :goto_f
    iget-object v4, v0, Lbf;->L:Lbf;

    sget-object v6, Lbe$a;->TOP:Lbe$a;

    invoke-virtual {v4, v6}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v4

    invoke-virtual {v10, v4}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v4

    .line 3022
    iget-object v6, v0, Lbf;->L:Lbf;

    sget-object v14, Lbe$a;->BOTTOM:Lbe$a;

    invoke-virtual {v6, v14}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v6

    invoke-virtual {v10, v6}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v6

    :goto_10
    move-object v14, v4

    .line 3027
    invoke-virtual/range {p1 .. p1}, Laf;->c()Lad;

    move-result-object v4

    move/from16 v19, v3

    move-object v3, v4

    move-object v4, v8

    move/from16 p9, v2

    move v15, v5

    const/4 v2, 0x0

    move-object v5, v9

    move-object/from16 v2, v21

    move/from16 v21, v1

    move-object v1, v7

    move-object v7, v14

    move-object v14, v8

    move/from16 v8, p26

    invoke-virtual/range {v3 .. v8}, Lad;->a(Laj;Laj;Laj;Laj;F)Lad;

    move-result-object v3

    invoke-virtual {v10, v3}, Laf;->a(Lad;)V

    if-eqz p3, :cond_20

    const/4 v5, 0x0

    goto :goto_11

    :cond_20
    move/from16 v5, v20

    :goto_11
    move/from16 v4, p9

    move/from16 v20, v5

    move/from16 v23, v19

    goto/16 :goto_8

    :cond_21
    move/from16 p9, v2

    move/from16 v19, v3

    move v15, v5

    move-object v14, v8

    move-object/from16 v2, v21

    move/from16 v21, v1

    move-object v1, v7

    move/from16 v4, p9

    move/from16 v23, v19

    const/16 v19, 0x1

    :goto_12
    if-eqz p27, :cond_63

    if-eqz p19, :cond_22

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object v7, v9

    move/from16 v2, v21

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/16 v13, 0x8

    const/16 v30, 0x1

    goto/16 :goto_35

    :cond_22
    if-nez v11, :cond_24

    if-nez v12, :cond_24

    if-nez v16, :cond_24

    :cond_23
    :goto_13
    move-object/from16 v12, p11

    const/4 v1, 0x0

    goto/16 :goto_30

    :cond_24
    if-eqz v11, :cond_26

    if-nez v12, :cond_26

    .line 3078
    iget-object v1, v13, Lbe;->c:Lbe;

    iget-object v1, v1, Lbe;->a:Lbf;

    if-eqz p3, :cond_25

    .line 3079
    instance-of v1, v1, Lbb;

    if-eqz v1, :cond_25

    const/16 v1, 0x8

    goto :goto_14

    :cond_25
    const/4 v1, 0x5

    :goto_14
    move/from16 v24, p3

    move-object/from16 v12, p11

    move v3, v1

    const/4 v1, 0x0

    goto/16 :goto_32

    :cond_26
    if-nez v11, :cond_29

    if-eqz v12, :cond_29

    .line 3083
    invoke-virtual/range {p11 .. p11}, Lbe;->j()I

    move-result v1

    neg-int v1, v1

    const/16 v3, 0x8

    invoke-virtual {v10, v14, v2, v1, v3}, Laf;->c(Laj;Laj;II)Lad;

    if-eqz p3, :cond_23

    .line 3085
    iget-boolean v1, v0, Lbf;->ay:Z

    if-eqz v1, :cond_28

    iget-boolean v1, v9, Laj;->f:Z

    if-eqz v1, :cond_28

    iget-object v1, v0, Lbf;->L:Lbf;

    if-eqz v1, :cond_28

    .line 3086
    check-cast v1, Lbg;

    if-eqz p2, :cond_27

    .line 3088
    invoke-virtual {v1, v13}, Lbg;->b(Lbe;)V

    goto :goto_13

    .line 3090
    :cond_27
    invoke-virtual {v1, v13}, Lbg;->a(Lbe;)V

    goto :goto_13

    :cond_28
    move-object/from16 v8, p6

    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 3096
    invoke-virtual {v10, v9, v8, v3, v1}, Laf;->a(Laj;Laj;II)V

    move-object/from16 v12, p11

    move/from16 v34, v3

    move v3, v1

    move/from16 v1, v34

    goto/16 :goto_31

    :cond_29
    move-object/from16 v8, p6

    const/4 v3, 0x0

    if-eqz v11, :cond_5e

    if-eqz v12, :cond_5e

    .line 3111
    iget-object v5, v13, Lbe;->c:Lbe;

    iget-object v11, v5, Lbe;->a:Lbf;

    move-object/from16 v12, p11

    const/16 v16, 0x4

    .line 3112
    iget-object v5, v12, Lbe;->c:Lbe;

    iget-object v7, v5, Lbe;->a:Lbf;

    .line 3113
    invoke-virtual/range {p0 .. p0}, Lbf;->A()Lbf;

    move-result-object v6

    const/16 v18, 0x6

    if-eqz v20, :cond_3f

    if-nez v15, :cond_2e

    if-nez v4, :cond_2b

    if-nez v23, :cond_2b

    .line 3122
    iget-boolean v4, v1, Laj;->f:Z

    if-eqz v4, :cond_2a

    iget-boolean v4, v2, Laj;->f:Z

    if-eqz v4, :cond_2a

    .line 3123
    invoke-virtual/range {p10 .. p10}, Lbe;->j()I

    move-result v3

    const/16 v5, 0x8

    invoke-virtual {v10, v9, v1, v3, v5}, Laf;->c(Laj;Laj;II)Lad;

    .line 3124
    invoke-virtual/range {p11 .. p11}, Lbe;->j()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v14, v2, v1, v5}, Laf;->c(Laj;Laj;II)Lad;

    return-void

    :cond_2a
    const/16 v5, 0x8

    move v4, v3

    move/from16 v22, v4

    move/from16 v24, v5

    move/from16 v25, v24

    const/16 v21, 0x1

    goto :goto_15

    :cond_2b
    const/16 v5, 0x8

    move/from16 v21, v3

    const/4 v4, 0x1

    const/16 v22, 0x1

    const/16 v24, 0x5

    const/16 v25, 0x5

    .line 3134
    :goto_15
    instance-of v3, v11, Lbb;

    if-nez v3, :cond_2d

    instance-of v3, v7, Lbb;

    if-eqz v3, :cond_2c

    goto :goto_16

    :cond_2c
    move v3, v4

    goto :goto_17

    :cond_2d
    :goto_16
    move v3, v4

    move/from16 v25, v16

    :goto_17
    move/from16 v17, v22

    const/4 v5, 0x1

    move-object/from16 v4, p7

    move/from16 v22, v21

    :goto_18
    move/from16 v21, v18

    goto/16 :goto_24

    :cond_2e
    const/4 v3, 0x2

    const/16 v5, 0x8

    if-ne v15, v3, :cond_31

    .line 3143
    instance-of v3, v11, Lbb;

    if-nez v3, :cond_30

    instance-of v3, v7, Lbb;

    if-eqz v3, :cond_2f

    goto :goto_1b

    :cond_2f
    move-object/from16 v4, p7

    move/from16 v21, v18

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/16 v17, 0x1

    const/16 v22, 0x0

    :goto_19
    const/16 v24, 0x5

    :goto_1a
    const/16 v25, 0x5

    goto/16 :goto_24

    :cond_30
    :goto_1b
    move-object/from16 v4, p7

    move/from16 v25, v16

    move/from16 v21, v18

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/16 v17, 0x1

    goto/16 :goto_22

    :cond_31
    const/4 v3, 0x1

    if-ne v15, v3, :cond_32

    move-object/from16 v4, p7

    move/from16 v24, v5

    move/from16 v25, v16

    move/from16 v21, v18

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/16 v17, 0x1

    const/16 v22, 0x0

    goto/16 :goto_24

    :cond_32
    const/4 v3, 0x3

    if-ne v15, v3, :cond_3e

    .line 3151
    iget v3, v0, Lbf;->y:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_35

    if-eqz p20, :cond_34

    if-eqz p3, :cond_33

    move-object/from16 v4, p7

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/16 v17, 0x1

    const/16 v21, 0x5

    goto :goto_1c

    :cond_33
    move-object/from16 v4, p7

    move/from16 v21, v16

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/16 v17, 0x1

    goto :goto_1c

    :cond_34
    move-object/from16 v4, p7

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/16 v17, 0x1

    const/16 v21, 0x8

    :goto_1c
    const/16 v22, 0x1

    const/16 v24, 0x8

    goto :goto_1a

    :cond_35
    if-eqz p17, :cond_39

    move/from16 v3, p23

    const/4 v5, 0x2

    if-eq v3, v5, :cond_37

    const/4 v5, 0x1

    if-ne v3, v5, :cond_36

    goto :goto_1d

    :cond_36
    const/4 v3, 0x0

    goto :goto_1e

    :cond_37
    const/4 v5, 0x1

    :goto_1d
    move v3, v5

    :goto_1e
    if-nez v3, :cond_38

    const/16 v3, 0x8

    const/4 v4, 0x5

    goto :goto_1f

    :cond_38
    move/from16 v4, v16

    const/4 v3, 0x5

    :goto_1f
    move/from16 v24, v3

    move/from16 v25, v4

    move v3, v5

    move/from16 v17, v3

    move/from16 v22, v17

    move/from16 v21, v18

    move-object/from16 v4, p7

    goto/16 :goto_24

    :cond_39
    const/4 v5, 0x1

    if-lez v4, :cond_3a

    move-object/from16 v4, p7

    move v3, v5

    move/from16 v17, v3

    move/from16 v22, v17

    move/from16 v21, v18

    goto/16 :goto_19

    :cond_3a
    if-nez v4, :cond_3d

    if-nez v23, :cond_3d

    if-nez p20, :cond_3b

    move-object/from16 v4, p7

    move v3, v5

    move/from16 v17, v3

    move/from16 v22, v17

    move/from16 v21, v18

    const/16 v24, 0x5

    const/16 v25, 0x8

    goto/16 :goto_24

    :cond_3b
    if-eq v11, v6, :cond_3c

    if-eq v7, v6, :cond_3c

    move/from16 v3, v16

    goto :goto_20

    :cond_3c
    const/4 v3, 0x5

    :goto_20
    move-object/from16 v4, p7

    move/from16 v24, v3

    move v3, v5

    move/from16 v17, v3

    move/from16 v22, v17

    move/from16 v25, v16

    goto/16 :goto_18

    :cond_3d
    move-object/from16 v4, p7

    move v3, v5

    move/from16 v17, v3

    move/from16 v22, v17

    move/from16 v25, v16

    move/from16 v21, v18

    goto :goto_23

    :cond_3e
    const/4 v5, 0x1

    move-object/from16 v4, p7

    move/from16 v25, v16

    move/from16 v21, v18

    const/4 v3, 0x0

    const/16 v17, 0x0

    goto :goto_22

    :cond_3f
    const/4 v5, 0x1

    .line 3203
    iget-boolean v3, v1, Laj;->f:Z

    if-eqz v3, :cond_42

    iget-boolean v3, v2, Laj;->f:Z

    if-eqz v3, :cond_42

    .line 3204
    invoke-virtual/range {p10 .. p10}, Lbe;->j()I

    move-result v3

    .line 3205
    invoke-virtual/range {p11 .. p11}, Lbe;->j()I

    move-result v4

    const/16 v5, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v1

    move/from16 p20, v3

    move/from16 p21, p16

    move-object/from16 p22, v2

    move-object/from16 p23, v14

    move/from16 p24, v4

    move/from16 p25, v5

    .line 3204
    invoke-virtual/range {p17 .. p25}, Laf;->a(Laj;Laj;IFLaj;Laj;II)V

    if-eqz p3, :cond_41

    if-eqz v19, :cond_41

    .line 3208
    iget-object v1, v12, Lbe;->c:Lbe;

    if-eqz v1, :cond_40

    .line 3209
    invoke-virtual/range {p11 .. p11}, Lbe;->j()I

    move-result v5

    move-object/from16 v4, p7

    goto :goto_21

    :cond_40
    move-object/from16 v4, p7

    const/4 v5, 0x0

    :goto_21
    if-eq v2, v4, :cond_41

    const/4 v1, 0x5

    .line 3215
    invoke-virtual {v10, v4, v14, v5, v1}, Laf;->a(Laj;Laj;II)V

    :cond_41
    return-void

    :cond_42
    move-object/from16 v4, p7

    move v3, v5

    move/from16 v17, v3

    move/from16 v25, v16

    move/from16 v21, v18

    :goto_22
    const/16 v22, 0x0

    :goto_23
    const/16 v24, 0x5

    :goto_24
    if-eqz v17, :cond_43

    if-ne v1, v2, :cond_43

    if-eq v11, v6, :cond_43

    const/16 v17, 0x0

    const/16 v26, 0x0

    goto :goto_25

    :cond_43
    move/from16 v26, v5

    :goto_25
    if-eqz v3, :cond_45

    if-nez v20, :cond_44

    if-nez p18, :cond_44

    if-nez p20, :cond_44

    if-ne v1, v8, :cond_44

    if-ne v2, v4, :cond_44

    const/16 v21, 0x8

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x8

    goto :goto_26

    :cond_44
    move/from16 v27, v24

    move/from16 v24, p3

    .line 3238
    :goto_26
    invoke-virtual/range {p10 .. p10}, Lbe;->j()I

    move-result v28

    .line 3239
    invoke-virtual/range {p11 .. p11}, Lbe;->j()I

    move-result v29

    move-object v3, v1

    move-object/from16 v1, p1

    move/from16 v30, v5

    const/16 v13, 0x8

    move-object v5, v2

    move-object v2, v9

    move-object/from16 p5, v3

    move/from16 v4, v28

    move-object/from16 p8, v5

    move/from16 v5, p16

    move-object/from16 v31, v6

    move-object/from16 v6, p8

    move-object/from16 v32, v7

    move-object v7, v14

    move/from16 v8, v29

    move-object/from16 v33, v9

    move/from16 v9, v21

    .line 3238
    invoke-virtual/range {v1 .. v9}, Laf;->a(Laj;Laj;IFLaj;Laj;II)V

    move/from16 v5, v26

    goto :goto_27

    :cond_45
    move-object/from16 p5, v1

    move-object/from16 p8, v2

    move/from16 v30, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v33, v9

    const/16 v13, 0x8

    move/from16 v27, v24

    move/from16 v5, v26

    move/from16 v24, p3

    .line 3242
    :goto_27
    iget v1, v0, Lbf;->aR:I

    if-ne v1, v13, :cond_46

    invoke-virtual/range {p11 .. p11}, Lbe;->b()Z

    move-result v1

    if-nez v1, :cond_46

    return-void

    :cond_46
    if-eqz v17, :cond_4b

    if-eqz v24, :cond_48

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    if-eq v1, v2, :cond_49

    if-nez v20, :cond_49

    .line 3249
    instance-of v3, v11, Lbb;

    if-nez v3, :cond_47

    move-object/from16 v3, v32

    instance-of v4, v3, Lbb;

    if-eqz v4, :cond_4a

    goto :goto_28

    :cond_47
    move-object/from16 v3, v32

    :goto_28
    move/from16 v4, v18

    goto :goto_29

    :cond_48
    move-object/from16 v1, p5

    move-object/from16 v2, p8

    :cond_49
    move-object/from16 v3, v32

    :cond_4a
    move/from16 v4, v27

    .line 3253
    :goto_29
    invoke-virtual/range {p10 .. p10}, Lbe;->j()I

    move-result v6

    move-object/from16 v7, v33

    invoke-virtual {v10, v7, v1, v6, v4}, Laf;->a(Laj;Laj;II)V

    .line 3254
    invoke-virtual/range {p11 .. p11}, Lbe;->j()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v10, v14, v2, v6, v4}, Laf;->b(Laj;Laj;II)V

    goto :goto_2a

    :cond_4b
    move-object/from16 v1, p5

    move-object/from16 v2, p8

    move-object/from16 v3, v32

    move-object/from16 v7, v33

    move/from16 v4, v27

    :goto_2a
    if-eqz v24, :cond_4c

    if-eqz p21, :cond_4c

    .line 3257
    instance-of v6, v11, Lbb;

    if-nez v6, :cond_4c

    instance-of v6, v3, Lbb;

    if-nez v6, :cond_4c

    move-object/from16 v6, v31

    if-eq v3, v6, :cond_4d

    move/from16 v4, v18

    move v8, v4

    move/from16 v5, v30

    goto :goto_2b

    :cond_4c
    move-object/from16 v6, v31

    :cond_4d
    move v8, v4

    move/from16 v4, v25

    :goto_2b
    if-eqz v5, :cond_59

    if-eqz v22, :cond_56

    if-eqz p20, :cond_4e

    if-eqz p4, :cond_56

    :cond_4e
    if-eq v11, v6, :cond_50

    if-ne v3, v6, :cond_4f

    goto :goto_2c

    :cond_4f
    move/from16 v18, v4

    .line 3273
    :cond_50
    :goto_2c
    instance-of v5, v11, Lbi;

    if-nez v5, :cond_51

    instance-of v5, v3, Lbi;

    if-eqz v5, :cond_52

    :cond_51
    const/16 v18, 0x5

    .line 3276
    :cond_52
    instance-of v5, v11, Lbb;

    if-nez v5, :cond_53

    instance-of v5, v3, Lbb;

    if-eqz v5, :cond_54

    :cond_53
    const/16 v18, 0x5

    :cond_54
    if-eqz p20, :cond_55

    const/4 v5, 0x5

    goto :goto_2d

    :cond_55
    move/from16 v5, v18

    .line 3282
    :goto_2d
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_56
    if-eqz v24, :cond_58

    .line 3286
    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eqz p17, :cond_58

    if-nez p20, :cond_58

    if-eq v11, v6, :cond_57

    if-ne v3, v6, :cond_58

    :cond_57
    move/from16 v4, v16

    .line 3293
    :cond_58
    invoke-virtual/range {p10 .. p10}, Lbe;->j()I

    move-result v3

    invoke-virtual {v10, v7, v1, v3, v4}, Laf;->c(Laj;Laj;II)Lad;

    .line 3294
    invoke-virtual/range {p11 .. p11}, Lbe;->j()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v10, v14, v2, v3, v4}, Laf;->c(Laj;Laj;II)Lad;

    :cond_59
    if-eqz v24, :cond_5b

    move-object/from16 v3, p6

    if-ne v3, v1, :cond_5a

    .line 3300
    invoke-virtual/range {p10 .. p10}, Lbe;->j()I

    move-result v5

    goto :goto_2e

    :cond_5a
    const/4 v5, 0x0

    :goto_2e
    if-eq v1, v3, :cond_5b

    const/4 v1, 0x5

    .line 3306
    invoke-virtual {v10, v7, v3, v5, v1}, Laf;->a(Laj;Laj;II)V

    :cond_5b
    if-eqz v24, :cond_5d

    if-eqz v20, :cond_5d

    move v5, v15

    if-nez p14, :cond_5d

    if-nez v23, :cond_5d

    if-eqz v20, :cond_5c

    const/4 v1, 0x3

    if-ne v5, v1, :cond_5c

    const/4 v1, 0x0

    .line 3315
    invoke-virtual {v10, v14, v7, v1, v13}, Laf;->a(Laj;Laj;II)V

    goto :goto_2f

    :cond_5c
    const/4 v1, 0x0

    const/4 v3, 0x5

    .line 3317
    invoke-virtual {v10, v14, v7, v1, v3}, Laf;->a(Laj;Laj;II)V

    goto :goto_32

    :cond_5d
    const/4 v1, 0x0

    :goto_2f
    const/4 v3, 0x5

    goto :goto_32

    :cond_5e
    move-object/from16 v12, p11

    move v1, v3

    :goto_30
    const/4 v3, 0x5

    :goto_31
    move/from16 v24, p3

    :goto_32
    if-eqz v24, :cond_62

    if-eqz v19, :cond_62

    .line 3324
    iget-object v4, v12, Lbe;->c:Lbe;

    if-eqz v4, :cond_5f

    .line 3325
    invoke-virtual/range {p11 .. p11}, Lbe;->j()I

    move-result v5

    move-object/from16 v4, p7

    goto :goto_33

    :cond_5f
    move-object/from16 v4, p7

    move v5, v1

    :goto_33
    if-eq v2, v4, :cond_62

    .line 3328
    iget-boolean v1, v0, Lbf;->ay:Z

    if-eqz v1, :cond_61

    iget-boolean v1, v14, Laj;->f:Z

    if-eqz v1, :cond_61

    iget-object v1, v0, Lbf;->L:Lbf;

    if-eqz v1, :cond_61

    .line 3329
    check-cast v1, Lbg;

    if-eqz p2, :cond_60

    .line 3331
    invoke-virtual {v1, v12}, Lbg;->d(Lbe;)V

    goto :goto_34

    .line 3333
    :cond_60
    invoke-virtual {v1, v12}, Lbg;->c(Lbe;)V

    :goto_34
    return-void

    .line 3340
    :cond_61
    invoke-virtual {v10, v4, v14, v5, v3}, Laf;->a(Laj;Laj;II)V

    :cond_62
    return-void

    :cond_63
    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object v7, v9

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/16 v13, 0x8

    const/16 v30, 0x1

    move/from16 v2, v21

    :goto_35
    if-ge v2, v5, :cond_68

    if-eqz p3, :cond_68

    if-eqz v19, :cond_68

    .line 3044
    invoke-virtual {v10, v7, v3, v1, v13}, Laf;->a(Laj;Laj;II)V

    if-nez p2, :cond_65

    .line 3045
    iget-object v2, v0, Lbf;->E:Lbe;

    iget-object v2, v2, Lbe;->c:Lbe;

    if-nez v2, :cond_64

    goto :goto_36

    :cond_64
    move v5, v1

    goto :goto_37

    :cond_65
    :goto_36
    move/from16 v5, v30

    :goto_37
    if-nez p2, :cond_67

    .line 3046
    iget-object v2, v0, Lbf;->E:Lbe;

    iget-object v2, v2, Lbe;->c:Lbe;

    if-eqz v2, :cond_67

    .line 3049
    iget-object v2, v0, Lbf;->E:Lbe;

    iget-object v2, v2, Lbe;->c:Lbe;

    iget-object v2, v2, Lbe;->a:Lbf;

    .line 3050
    iget v3, v2, Lbf;->O:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_66

    iget-object v3, v2, Lbf;->K:[Lbf$a;

    aget-object v3, v3, v1

    sget-object v5, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v3, v5, :cond_66

    iget-object v2, v2, Lbf;->K:[Lbf$a;

    aget-object v2, v2, v30

    sget-object v3, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v2, v3, :cond_66

    move/from16 v5, v30

    goto :goto_38

    :cond_66
    move v5, v1

    :cond_67
    :goto_38
    if-eqz v5, :cond_68

    .line 3062
    invoke-virtual {v10, v4, v14, v1, v13}, Laf;->a(Laj;Laj;II)V

    :cond_68
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V
    .locals 0

    cmpl-float p4, p3, p4

    if-nez p4, :cond_0

    return-void

    .line 617
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " :   "

    .line 618
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ",\n"

    .line 620
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;FI)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    return-void

    .line 637
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " :  ["

    .line 638
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ","

    .line 640
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    .line 642
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "],\n"

    .line 643
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 0

    if-ne p3, p4, :cond_0

    return-void

    .line 627
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " :   "

    .line 628
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",\n"

    .line 630
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V
    .locals 0

    .line 3639
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " :  {\n"

    .line 3640
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    const-string p6, "      size"

    .line 3641
    invoke-direct {p0, p1, p6, p3, p2}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p3, "      min"

    .line 3642
    invoke-direct {p0, p1, p3, p4, p2}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p3, "      max"

    const p4, 0x7fffffff

    .line 3643
    invoke-direct {p0, p1, p3, p5, p4}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p3, "      matchMin"

    .line 3644
    invoke-direct {p0, p1, p3, p7, p2}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p3, "      matchDef"

    .line 3645
    invoke-direct {p0, p1, p3, p8, p2}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p2, "      matchPercent"

    const/high16 p3, 0x3f800000    # 1.0f

    .line 3646
    invoke-direct {p0, p1, p2, p9, p3}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    const-string p2, "    },\n"

    .line 3647
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Lbe;)V
    .locals 2

    .line 3650
    iget-object v0, p3, Lbe;->c:Lbe;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "    "

    .line 3653
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3654
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : [ \'"

    .line 3655
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3656
    iget-object p2, p3, Lbe;->c:Lbe;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    .line 3657
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3658
    iget p2, p3, Lbe;->e:I

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_1

    iget p2, p3, Lbe;->d:I

    if-eqz p2, :cond_2

    :cond_1
    const-string p2, ","

    .line 3659
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3660
    iget v1, p3, Lbe;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3661
    iget v1, p3, Lbe;->e:I

    if-eq v1, v0, :cond_2

    .line 3662
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3663
    iget p3, p3, Lbe;->e:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3664
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p2, " ] ,\n"

    .line 3667
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(I)Z
    .locals 4

    mul-int/lit8 p1, p1, 0x2

    .line 2386
    iget-object v0, p0, Lbf;->I:[Lbe;

    aget-object v0, v0, p1

    iget-object v0, v0, Lbe;->c:Lbe;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbf;->I:[Lbe;

    aget-object v0, v0, p1

    iget-object v0, v0, Lbe;->c:Lbe;

    iget-object v0, v0, Lbe;->c:Lbe;

    iget-object v2, p0, Lbf;->I:[Lbe;

    aget-object v3, v2, p1

    if-eq v0, v3, :cond_0

    add-int/2addr p1, v1

    aget-object v0, v2, p1

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbf;->I:[Lbe;

    aget-object v0, v0, p1

    iget-object v0, v0, Lbe;->c:Lbe;

    iget-object v0, v0, Lbe;->c:Lbe;

    iget-object v2, p0, Lbf;->I:[Lbe;

    aget-object p1, v2, p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private b()V
    .locals 2

    .line 804
    iget-object v0, p0, Lbf;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Lbf;->A:Lbe;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    iget-object v0, p0, Lbf;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Lbf;->B:Lbe;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    iget-object v0, p0, Lbf;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Lbf;->C:Lbe;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v0, p0, Lbf;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Lbf;->D:Lbe;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v0, p0, Lbf;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Lbf;->F:Lbe;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    iget-object v0, p0, Lbf;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Lbf;->G:Lbe;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object v0, p0, Lbf;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Lbf;->H:Lbe;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    iget-object v0, p0, Lbf;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Lbf;->E:Lbe;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public A()Lbf;
    .locals 1

    .line 829
    iget-object v0, p0, Lbf;->L:Lbf;

    return-object v0
.end method

.method public B()I
    .locals 1

    .line 923
    iget v0, p0, Lbf;->aR:I

    return v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 950
    iget-object v0, p0, Lbf;->aT:Ljava/lang/String;

    return-object v0
.end method

.method public D()I
    .locals 2

    .line 1034
    iget-object v0, p0, Lbf;->L:Lbf;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lbg;

    if-eqz v1, :cond_0

    .line 1035
    check-cast v0, Lbg;

    iget v0, v0, Lbg;->aC:I

    iget v1, p0, Lbf;->Q:I

    add-int/2addr v0, v1

    return v0

    .line 1037
    :cond_0
    iget v0, p0, Lbf;->Q:I

    return v0
.end method

.method public E()I
    .locals 2

    .line 1046
    iget-object v0, p0, Lbf;->L:Lbf;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lbg;

    if-eqz v1, :cond_0

    .line 1047
    check-cast v0, Lbg;

    iget v0, v0, Lbg;->aD:I

    iget v1, p0, Lbf;->R:I

    add-int/2addr v0, v1

    return v0

    .line 1049
    :cond_0
    iget v0, p0, Lbf;->R:I

    return v0
.end method

.method public F()I
    .locals 2

    .line 1058
    iget v0, p0, Lbf;->aR:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1061
    :cond_0
    iget v0, p0, Lbf;->M:I

    return v0
.end method

.method public G()I
    .locals 2

    .line 1106
    iget v0, p0, Lbf;->aR:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1109
    :cond_0
    iget v0, p0, Lbf;->N:I

    return v0
.end method

.method public H()I
    .locals 1

    .line 1154
    iget v0, p0, Lbf;->X:I

    return v0
.end method

.method public I()I
    .locals 1

    .line 1163
    iget v0, p0, Lbf;->Y:I

    return v0
.end method

.method public J()I
    .locals 2

    .line 1190
    invoke-virtual {p0}, Lbf;->D()I

    move-result v0

    iget v1, p0, Lbf;->M:I

    add-int/2addr v0, v1

    return v0
.end method

.method public K()I
    .locals 2

    .line 1199
    invoke-virtual {p0}, Lbf;->E()I

    move-result v0

    iget v1, p0, Lbf;->N:I

    add-int/2addr v0, v1

    return v0
.end method

.method public L()I
    .locals 2

    .line 1207
    iget-object v0, p0, Lbf;->A:Lbe;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1208
    iget v0, v0, Lbe;->d:I

    add-int/2addr v1, v0

    .line 1210
    :cond_0
    iget-object v0, p0, Lbf;->C:Lbe;

    if-eqz v0, :cond_1

    .line 1211
    iget v0, v0, Lbe;->d:I

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public M()I
    .locals 2

    .line 1221
    iget-object v0, p0, Lbf;->A:Lbe;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lbf;->B:Lbe;

    iget v0, v0, Lbe;->d:I

    add-int/2addr v1, v0

    .line 1224
    :cond_0
    iget-object v0, p0, Lbf;->C:Lbe;

    if-eqz v0, :cond_1

    .line 1225
    iget-object v0, p0, Lbf;->D:Lbe;

    iget v0, v0, Lbe;->d:I

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public N()F
    .locals 1

    .line 1237
    iget v0, p0, Lbf;->aa:F

    return v0
.end method

.method public O()F
    .locals 1

    .line 1247
    iget v0, p0, Lbf;->ab:F

    return v0
.end method

.method public P()Z
    .locals 1

    .line 1273
    iget-boolean v0, p0, Lbf;->aJ:Z

    return v0
.end method

.method public Q()I
    .locals 1

    .line 1282
    iget v0, p0, Lbf;->W:I

    return v0
.end method

.method public R()Ljava/lang/Object;
    .locals 1

    .line 1292
    iget-object v0, p0, Lbf;->aP:Ljava/lang/Object;

    return-object v0
.end method

.method public S()F
    .locals 1

    .line 1535
    iget v0, p0, Lbf;->O:F

    return v0
.end method

.method public T()I
    .locals 1

    .line 1544
    iget v0, p0, Lbf;->P:I

    return v0
.end method

.method public U()I
    .locals 1

    .line 1819
    iget v0, p0, Lbf;->an:I

    return v0
.end method

.method public V()I
    .locals 1

    .line 1839
    iget v0, p0, Lbf;->ao:I

    return v0
.end method

.method public W()V
    .locals 1

    .line 2082
    invoke-virtual {p0}, Lbf;->X()V

    .line 2083
    sget v0, Lbf;->Z:F

    invoke-virtual {p0, v0}, Lbf;->b(F)V

    .line 2084
    sget v0, Lbf;->Z:F

    invoke-virtual {p0, v0}, Lbf;->a(F)V

    return-void
.end method

.method public X()V
    .locals 3

    .line 2152
    invoke-virtual {p0}, Lbf;->A()Lbf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2153
    instance-of v0, v0, Lbg;

    if-eqz v0, :cond_0

    .line 2154
    invoke-virtual {p0}, Lbf;->A()Lbf;

    move-result-object v0

    check-cast v0, Lbg;

    .line 2155
    invoke-virtual {v0}, Lbg;->ag()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2159
    iget-object v1, p0, Lbf;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2160
    iget-object v2, p0, Lbf;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbe;

    .line 2161
    invoke-virtual {v2}, Lbe;->l()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Y()Lbf$a;
    .locals 2

    .line 2209
    iget-object v0, p0, Lbf;->K:[Lbf$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public Z()Lbf$a;
    .locals 2

    .line 2218
    iget-object v0, p0, Lbf;->K:[Lbf$a;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(Lbe$a;)Lbe;
    .locals 2

    .line 2172
    sget-object v0, Lbf$1;->a:[I

    invoke-virtual {p1}, Lbe$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2200
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lbe$a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 2192
    :pswitch_1
    iget-object p1, p0, Lbf;->G:Lbe;

    return-object p1

    .line 2189
    :pswitch_2
    iget-object p1, p0, Lbf;->F:Lbe;

    return-object p1

    .line 2195
    :pswitch_3
    iget-object p1, p0, Lbf;->H:Lbe;

    return-object p1

    .line 2186
    :pswitch_4
    iget-object p1, p0, Lbf;->E:Lbe;

    return-object p1

    .line 2183
    :pswitch_5
    iget-object p1, p0, Lbf;->D:Lbe;

    return-object p1

    .line 2180
    :pswitch_6
    iget-object p1, p0, Lbf;->C:Lbe;

    return-object p1

    .line 2177
    :pswitch_7
    iget-object p1, p0, Lbf;->B:Lbe;

    return-object p1

    .line 2174
    :pswitch_8
    iget-object p1, p0, Lbf;->A:Lbe;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(F)V
    .locals 0

    .line 1554
    iput p1, p0, Lbf;->aa:F

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 148
    iget-boolean v0, p0, Lbf;->aC:Z

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lbf;->A:Lbe;

    invoke-virtual {v0, p1}, Lbe;->a(I)V

    .line 152
    iget-object v0, p0, Lbf;->C:Lbe;

    invoke-virtual {v0, p2}, Lbe;->a(I)V

    .line 153
    iput p1, p0, Lbf;->Q:I

    sub-int/2addr p2, p1

    .line 154
    iput p2, p0, Lbf;->M:I

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lbf;->aC:Z

    return-void
.end method

.method public a(IIIF)V
    .locals 0

    .line 1427
    iput p1, p0, Lbf;->n:I

    .line 1428
    iput p2, p0, Lbf;->q:I

    const p1, 0x7fffffff

    if-ne p3, p1, :cond_0

    const/4 p3, 0x0

    .line 1429
    :cond_0
    iput p3, p0, Lbf;->r:I

    .line 1430
    iput p4, p0, Lbf;->s:F

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-lez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p4, p1

    if-gez p1, :cond_1

    .line 1431
    iget p1, p0, Lbf;->n:I

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 1432
    iput p1, p0, Lbf;->n:I

    :cond_1
    return-void
.end method

.method public a(IIII)V
    .locals 2

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    .line 1622
    iput p1, p0, Lbf;->Q:I

    .line 1623
    iput p2, p0, Lbf;->R:I

    .line 1625
    iget p1, p0, Lbf;->aR:I

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1626
    iput p2, p0, Lbf;->M:I

    .line 1627
    iput p2, p0, Lbf;->N:I

    return-void

    .line 1632
    :cond_0
    iget-object p1, p0, Lbf;->K:[Lbf$a;

    aget-object p1, p1, p2

    sget-object v0, Lbf$a;->FIXED:Lbf$a;

    if-ne p1, v0, :cond_1

    iget p1, p0, Lbf;->M:I

    if-ge p3, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p3

    .line 1635
    :goto_0
    iget-object p3, p0, Lbf;->K:[Lbf$a;

    const/4 v0, 0x1

    aget-object p3, p3, v0

    sget-object v1, Lbf$a;->FIXED:Lbf$a;

    if-ne p3, v1, :cond_2

    iget p3, p0, Lbf;->N:I

    if-ge p4, p3, :cond_2

    goto :goto_1

    :cond_2
    move p3, p4

    .line 1639
    :goto_1
    iput p1, p0, Lbf;->M:I

    .line 1640
    iput p3, p0, Lbf;->N:I

    .line 1642
    iget p4, p0, Lbf;->N:I

    iget v1, p0, Lbf;->Y:I

    if-ge p4, v1, :cond_3

    .line 1643
    iput v1, p0, Lbf;->N:I

    .line 1645
    :cond_3
    iget p4, p0, Lbf;->M:I

    iget v1, p0, Lbf;->X:I

    if-ge p4, v1, :cond_4

    .line 1646
    iput v1, p0, Lbf;->M:I

    .line 1648
    :cond_4
    iget p4, p0, Lbf;->r:I

    if-lez p4, :cond_5

    iget-object p4, p0, Lbf;->K:[Lbf$a;

    aget-object p2, p4, p2

    sget-object p4, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne p2, p4, :cond_5

    .line 1649
    iget p2, p0, Lbf;->M:I

    iget p4, p0, Lbf;->r:I

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lbf;->M:I

    .line 1651
    :cond_5
    iget p2, p0, Lbf;->u:I

    if-lez p2, :cond_6

    iget-object p2, p0, Lbf;->K:[Lbf$a;

    aget-object p2, p2, v0

    sget-object p4, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne p2, p4, :cond_6

    .line 1652
    iget p2, p0, Lbf;->N:I

    iget p4, p0, Lbf;->u:I

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lbf;->N:I

    .line 1654
    :cond_6
    iget p2, p0, Lbf;->M:I

    if-eq p1, p2, :cond_7

    .line 1655
    iput p2, p0, Lbf;->aA:I

    .line 1657
    :cond_7
    iget p1, p0, Lbf;->N:I

    if-eq p3, p1, :cond_8

    .line 1658
    iput p1, p0, Lbf;->aB:I

    :cond_8
    return-void
.end method

.method protected a(IZ)V
    .locals 1

    .line 369
    iget-object v0, p0, Lbf;->aO:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method public a(Lae;)V
    .locals 1

    .line 790
    iget-object v0, p0, Lbf;->A:Lbe;

    invoke-virtual {v0, p1}, Lbe;->a(Lae;)V

    .line 791
    iget-object v0, p0, Lbf;->B:Lbe;

    invoke-virtual {v0, p1}, Lbe;->a(Lae;)V

    .line 792
    iget-object v0, p0, Lbf;->C:Lbe;

    invoke-virtual {v0, p1}, Lbe;->a(Lae;)V

    .line 793
    iget-object v0, p0, Lbf;->D:Lbe;

    invoke-virtual {v0, p1}, Lbe;->a(Lae;)V

    .line 794
    iget-object v0, p0, Lbf;->E:Lbe;

    invoke-virtual {v0, p1}, Lbe;->a(Lae;)V

    .line 795
    iget-object v0, p0, Lbf;->H:Lbe;

    invoke-virtual {v0, p1}, Lbe;->a(Lae;)V

    .line 796
    iget-object v0, p0, Lbf;->F:Lbe;

    invoke-virtual {v0, p1}, Lbe;->a(Lae;)V

    .line 797
    iget-object v0, p0, Lbf;->G:Lbe;

    invoke-virtual {v0, p1}, Lbe;->a(Lae;)V

    return-void
.end method

.method public a(Laf;)V
    .locals 1

    .line 997
    iget-object v0, p0, Lbf;->A:Lbe;

    invoke-virtual {p1, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    .line 998
    iget-object v0, p0, Lbf;->B:Lbe;

    invoke-virtual {p1, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    .line 999
    iget-object v0, p0, Lbf;->C:Lbe;

    invoke-virtual {p1, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    .line 1000
    iget-object v0, p0, Lbf;->D:Lbe;

    invoke-virtual {p1, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    .line 1001
    iget v0, p0, Lbf;->W:I

    if-lez v0, :cond_0

    .line 1002
    iget-object v0, p0, Lbf;->E:Lbe;

    invoke-virtual {p1, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    :cond_0
    return-void
.end method

.method public a(Laf;Z)V
    .locals 50

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 2413
    iget-object v0, v15, Lbf;->A:Lbe;

    invoke-virtual {v14, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v13

    .line 2414
    iget-object v0, v15, Lbf;->C:Lbe;

    invoke-virtual {v14, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v12

    .line 2415
    iget-object v0, v15, Lbf;->B:Lbe;

    invoke-virtual {v14, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v11

    .line 2416
    iget-object v0, v15, Lbf;->D:Lbe;

    invoke-virtual {v14, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v10

    .line 2417
    iget-object v0, v15, Lbf;->E:Lbe;

    invoke-virtual {v14, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v9

    .line 2421
    iget-object v0, v15, Lbf;->L:Lbf;

    const/4 v8, 0x2

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    if-eqz v0, :cond_0

    .line 2422
    iget-object v0, v0, Lbf;->K:[Lbf$a;

    aget-object v0, v0, v6

    sget-object v2, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v0, v2, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v6

    .line 2423
    :goto_0
    iget-object v2, v15, Lbf;->L:Lbf;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lbf;->K:[Lbf$a;

    aget-object v2, v2, v7

    sget-object v3, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v2, v3, :cond_1

    move v2, v7

    goto :goto_1

    :cond_1
    move v2, v6

    .line 2425
    :goto_1
    iget v3, v15, Lbf;->aG:I

    if-eq v3, v7, :cond_3

    if-eq v3, v8, :cond_2

    if-eq v3, v1, :cond_4

    move v5, v0

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v2

    move v5, v6

    goto :goto_2

    :cond_3
    move v5, v0

    move v4, v6

    goto :goto_2

    :cond_4
    move v4, v6

    move v5, v4

    .line 2439
    :goto_2
    iget v0, v15, Lbf;->aR:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_5

    iget-boolean v0, v15, Lbf;->aS:Z

    if-nez v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lbf;->o()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v15, Lbf;->aO:[Z

    aget-boolean v2, v0, v6

    if-nez v2, :cond_5

    aget-boolean v0, v0, v7

    if-nez v0, :cond_5

    return-void

    .line 2444
    :cond_5
    iget-boolean v0, v15, Lbf;->aC:Z

    const/4 v2, 0x5

    if-nez v0, :cond_6

    iget-boolean v0, v15, Lbf;->aD:Z

    if-eqz v0, :cond_c

    .line 2452
    :cond_6
    iget-boolean v0, v15, Lbf;->aC:Z

    if-eqz v0, :cond_8

    .line 2453
    iget v0, v15, Lbf;->Q:I

    invoke-virtual {v14, v13, v0}, Laf;->a(Laj;I)V

    .line 2454
    iget v0, v15, Lbf;->Q:I

    iget v8, v15, Lbf;->M:I

    add-int/2addr v0, v8

    invoke-virtual {v14, v12, v0}, Laf;->a(Laj;I)V

    if-eqz v5, :cond_8

    .line 2455
    iget-object v0, v15, Lbf;->L:Lbf;

    if-eqz v0, :cond_8

    .line 2456
    iget-boolean v8, v15, Lbf;->az:Z

    if-eqz v8, :cond_7

    .line 2457
    check-cast v0, Lbg;

    .line 2458
    iget-object v8, v15, Lbf;->A:Lbe;

    invoke-virtual {v0, v8}, Lbg;->b(Lbe;)V

    .line 2459
    iget-object v8, v15, Lbf;->C:Lbe;

    invoke-virtual {v0, v8}, Lbg;->d(Lbe;)V

    goto :goto_3

    .line 2462
    :cond_7
    iget-object v0, v0, Lbf;->C:Lbe;

    invoke-virtual {v14, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    invoke-virtual {v14, v0, v12, v6, v2}, Laf;->a(Laj;Laj;II)V

    .line 2466
    :cond_8
    :goto_3
    iget-boolean v0, v15, Lbf;->aD:Z

    if-eqz v0, :cond_b

    .line 2467
    iget v0, v15, Lbf;->R:I

    invoke-virtual {v14, v11, v0}, Laf;->a(Laj;I)V

    .line 2468
    iget v0, v15, Lbf;->R:I

    iget v8, v15, Lbf;->N:I

    add-int/2addr v0, v8

    invoke-virtual {v14, v10, v0}, Laf;->a(Laj;I)V

    .line 2469
    iget-object v0, v15, Lbf;->E:Lbe;

    invoke-virtual {v0}, Lbe;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2470
    iget v0, v15, Lbf;->R:I

    iget v8, v15, Lbf;->W:I

    add-int/2addr v0, v8

    invoke-virtual {v14, v9, v0}, Laf;->a(Laj;I)V

    :cond_9
    if-eqz v4, :cond_b

    .line 2472
    iget-object v0, v15, Lbf;->L:Lbf;

    if-eqz v0, :cond_b

    .line 2473
    iget-boolean v8, v15, Lbf;->az:Z

    if-eqz v8, :cond_a

    .line 2474
    check-cast v0, Lbg;

    .line 2475
    iget-object v8, v15, Lbf;->B:Lbe;

    invoke-virtual {v0, v8}, Lbg;->a(Lbe;)V

    .line 2476
    iget-object v8, v15, Lbf;->D:Lbe;

    invoke-virtual {v0, v8}, Lbg;->c(Lbe;)V

    goto :goto_4

    .line 2479
    :cond_a
    iget-object v0, v0, Lbf;->D:Lbe;

    invoke-virtual {v14, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    invoke-virtual {v14, v0, v10, v6, v2}, Laf;->a(Laj;Laj;II)V

    .line 2483
    :cond_b
    :goto_4
    iget-boolean v0, v15, Lbf;->aC:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v15, Lbf;->aD:Z

    if-eqz v0, :cond_c

    .line 2484
    iput-boolean v6, v15, Lbf;->aC:Z

    .line 2485
    iput-boolean v6, v15, Lbf;->aD:Z

    return-void

    .line 2495
    :cond_c
    sget-object v0, Laf;->o:Lag;

    const-wide/16 v17, 0x1

    if-eqz v0, :cond_d

    .line 2496
    sget-object v0, Laf;->o:Lag;

    iget-wide v1, v0, Lag;->y:J

    add-long v1, v1, v17

    iput-wide v1, v0, Lag;->y:J

    :cond_d
    if-eqz p2, :cond_11

    .line 2504
    iget-object v0, v15, Lbf;->f:Lca;

    if-eqz v0, :cond_11

    iget-object v1, v15, Lbf;->g:Lcc;

    if-eqz v1, :cond_11

    iget-object v0, v0, Lca;->j:Lbu;

    iget-boolean v0, v0, Lbu;->j:Z

    if-eqz v0, :cond_11

    iget-object v0, v15, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->k:Lbu;

    iget-boolean v0, v0, Lbu;->j:Z

    if-eqz v0, :cond_11

    iget-object v0, v15, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->j:Lbu;

    iget-boolean v0, v0, Lbu;->j:Z

    if-eqz v0, :cond_11

    iget-object v0, v15, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->k:Lbu;

    iget-boolean v0, v0, Lbu;->j:Z

    if-eqz v0, :cond_11

    .line 2508
    sget-object v0, Laf;->o:Lag;

    if-eqz v0, :cond_e

    .line 2509
    sget-object v0, Laf;->o:Lag;

    iget-wide v1, v0, Lag;->r:J

    add-long v1, v1, v17

    iput-wide v1, v0, Lag;->r:J

    .line 2511
    :cond_e
    iget-object v0, v15, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->j:Lbu;

    iget v0, v0, Lbu;->g:I

    invoke-virtual {v14, v13, v0}, Laf;->a(Laj;I)V

    .line 2512
    iget-object v0, v15, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->k:Lbu;

    iget v0, v0, Lbu;->g:I

    invoke-virtual {v14, v12, v0}, Laf;->a(Laj;I)V

    .line 2513
    iget-object v0, v15, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->j:Lbu;

    iget v0, v0, Lbu;->g:I

    invoke-virtual {v14, v11, v0}, Laf;->a(Laj;I)V

    .line 2514
    iget-object v0, v15, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->k:Lbu;

    iget v0, v0, Lbu;->g:I

    invoke-virtual {v14, v10, v0}, Laf;->a(Laj;I)V

    .line 2515
    iget-object v0, v15, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->a:Lbu;

    iget v0, v0, Lbu;->g:I

    invoke-virtual {v14, v9, v0}, Laf;->a(Laj;I)V

    .line 2516
    iget-object v0, v15, Lbf;->L:Lbf;

    if-eqz v0, :cond_10

    if-eqz v5, :cond_f

    .line 2517
    iget-object v0, v15, Lbf;->h:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lbf;->aa()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2518
    iget-object v0, v15, Lbf;->L:Lbf;

    iget-object v0, v0, Lbf;->C:Lbe;

    invoke-virtual {v14, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    .line 2519
    invoke-virtual {v14, v0, v12, v6, v3}, Laf;->a(Laj;Laj;II)V

    :cond_f
    if-eqz v4, :cond_10

    .line 2521
    iget-object v0, v15, Lbf;->h:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lbf;->ab()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2522
    iget-object v0, v15, Lbf;->L:Lbf;

    iget-object v0, v0, Lbf;->D:Lbe;

    invoke-virtual {v14, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    .line 2523
    invoke-virtual {v14, v0, v10, v6, v3}, Laf;->a(Laj;Laj;II)V

    .line 2526
    :cond_10
    iput-boolean v6, v15, Lbf;->aC:Z

    .line 2527
    iput-boolean v6, v15, Lbf;->aD:Z

    return-void

    .line 2530
    :cond_11
    sget-object v0, Laf;->o:Lag;

    if-eqz v0, :cond_12

    .line 2531
    sget-object v0, Laf;->o:Lag;

    iget-wide v1, v0, Lag;->s:J

    add-long v1, v1, v17

    iput-wide v1, v0, Lag;->s:J

    .line 2537
    :cond_12
    iget-object v0, v15, Lbf;->L:Lbf;

    if-eqz v0, :cond_17

    .line 2539
    invoke-direct {v15, v6}, Lbf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2540
    iget-object v0, v15, Lbf;->L:Lbf;

    check-cast v0, Lbg;

    invoke-virtual {v0, v15, v6}, Lbg;->a(Lbf;I)V

    move v0, v7

    goto :goto_5

    .line 2543
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lbf;->aa()Z

    move-result v0

    .line 2547
    :goto_5
    invoke-direct {v15, v7}, Lbf;->a(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2548
    iget-object v1, v15, Lbf;->L:Lbf;

    check-cast v1, Lbg;

    invoke-virtual {v1, v15, v7}, Lbg;->a(Lbf;I)V

    move v1, v7

    goto :goto_6

    .line 2551
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lbf;->ab()Z

    move-result v1

    :goto_6
    if-nez v0, :cond_15

    if-eqz v5, :cond_15

    .line 2554
    iget v2, v15, Lbf;->aR:I

    if-eq v2, v3, :cond_15

    iget-object v2, v15, Lbf;->A:Lbe;

    iget-object v2, v2, Lbe;->c:Lbe;

    if-nez v2, :cond_15

    iget-object v2, v15, Lbf;->C:Lbe;

    iget-object v2, v2, Lbe;->c:Lbe;

    if-nez v2, :cond_15

    .line 2559
    iget-object v2, v15, Lbf;->L:Lbf;

    iget-object v2, v2, Lbf;->C:Lbe;

    invoke-virtual {v14, v2}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v2

    .line 2560
    invoke-virtual {v14, v2, v12, v6, v7}, Laf;->a(Laj;Laj;II)V

    :cond_15
    if-nez v1, :cond_16

    if-eqz v4, :cond_16

    .line 2563
    iget v2, v15, Lbf;->aR:I

    if-eq v2, v3, :cond_16

    iget-object v2, v15, Lbf;->B:Lbe;

    iget-object v2, v2, Lbe;->c:Lbe;

    if-nez v2, :cond_16

    iget-object v2, v15, Lbf;->D:Lbe;

    iget-object v2, v2, Lbe;->c:Lbe;

    if-nez v2, :cond_16

    iget-object v2, v15, Lbf;->E:Lbe;

    if-nez v2, :cond_16

    .line 2568
    iget-object v2, v15, Lbf;->L:Lbf;

    iget-object v2, v2, Lbf;->D:Lbe;

    invoke-virtual {v14, v2}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v2

    .line 2569
    invoke-virtual {v14, v2, v10, v6, v7}, Laf;->a(Laj;Laj;II)V

    :cond_16
    move/from16 v28, v0

    move/from16 v29, v1

    goto :goto_7

    :cond_17
    move/from16 v28, v6

    move/from16 v29, v28

    .line 2573
    :goto_7
    iget v0, v15, Lbf;->M:I

    .line 2574
    iget v1, v15, Lbf;->X:I

    if-ge v0, v1, :cond_18

    move v0, v1

    .line 2577
    :cond_18
    iget v1, v15, Lbf;->N:I

    .line 2578
    iget v2, v15, Lbf;->Y:I

    if-ge v1, v2, :cond_19

    move v1, v2

    .line 2583
    :cond_19
    iget-object v2, v15, Lbf;->K:[Lbf$a;

    aget-object v2, v2, v6

    sget-object v8, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-eq v2, v8, :cond_1a

    move v2, v7

    goto :goto_8

    :cond_1a
    move v2, v6

    .line 2585
    :goto_8
    iget-object v8, v15, Lbf;->K:[Lbf$a;

    aget-object v8, v8, v7

    sget-object v7, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-eq v8, v7, :cond_1b

    const/4 v7, 0x1

    goto :goto_9

    :cond_1b
    move v7, v6

    .line 2591
    :goto_9
    iget v8, v15, Lbf;->P:I

    iput v8, v15, Lbf;->y:I

    .line 2592
    iget v8, v15, Lbf;->O:F

    iput v8, v15, Lbf;->z:F

    .line 2594
    iget v6, v15, Lbf;->n:I

    .line 2595
    iget v3, v15, Lbf;->o:I

    const/16 v22, 0x0

    cmpl-float v8, v8, v22

    const/16 v22, 0x4

    move/from16 v23, v0

    if-lez v8, :cond_24

    .line 2597
    iget v8, v15, Lbf;->aR:I

    const/16 v0, 0x8

    if-eq v8, v0, :cond_24

    .line 2599
    iget-object v0, v15, Lbf;->K:[Lbf$a;

    const/4 v8, 0x0

    aget-object v0, v0, v8

    sget-object v8, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v8, :cond_1c

    if-nez v6, :cond_1c

    const/4 v6, 0x3

    .line 2603
    :cond_1c
    iget-object v0, v15, Lbf;->K:[Lbf$a;

    const/4 v8, 0x1

    aget-object v0, v0, v8

    sget-object v8, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v8, :cond_1d

    if-nez v3, :cond_1d

    const/4 v3, 0x3

    .line 2608
    :cond_1d
    iget-object v0, v15, Lbf;->K:[Lbf$a;

    const/4 v8, 0x0

    aget-object v0, v0, v8

    sget-object v8, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v8, :cond_1e

    iget-object v0, v15, Lbf;->K:[Lbf$a;

    const/4 v8, 0x1

    aget-object v0, v0, v8

    sget-object v8, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v8, :cond_1e

    const/4 v0, 0x3

    if-ne v6, v0, :cond_1f

    if-ne v3, v0, :cond_1f

    .line 2612
    invoke-virtual {v15, v5, v4, v2, v7}, Lbf;->a(ZZZZ)V

    goto :goto_a

    :cond_1e
    const/4 v0, 0x3

    .line 2613
    :cond_1f
    iget-object v2, v15, Lbf;->K:[Lbf$a;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    sget-object v8, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v2, v8, :cond_21

    if-ne v6, v0, :cond_21

    .line 2615
    iput v7, v15, Lbf;->y:I

    .line 2616
    iget v0, v15, Lbf;->z:F

    iget v2, v15, Lbf;->N:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 2617
    iget-object v2, v15, Lbf;->K:[Lbf$a;

    const/4 v7, 0x1

    aget-object v2, v2, v7

    sget-object v8, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-eq v2, v8, :cond_20

    move/from16 v23, v0

    move/from16 v32, v1

    move/from16 v31, v3

    move/from16 v30, v22

    goto :goto_b

    :cond_20
    move/from16 v23, v0

    move/from16 v32, v1

    move/from16 v31, v3

    move/from16 v30, v6

    move v8, v7

    goto :goto_c

    :cond_21
    const/4 v7, 0x1

    .line 2621
    iget-object v0, v15, Lbf;->K:[Lbf$a;

    aget-object v0, v0, v7

    sget-object v2, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v2, :cond_23

    const/4 v0, 0x3

    if-ne v3, v0, :cond_23

    .line 2623
    iput v7, v15, Lbf;->y:I

    .line 2624
    iget v0, v15, Lbf;->P:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2626
    iget v1, v15, Lbf;->z:F

    div-float/2addr v0, v1

    iput v0, v15, Lbf;->z:F

    .line 2628
    :cond_22
    iget v0, v15, Lbf;->z:F

    iget v1, v15, Lbf;->M:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 2629
    iget-object v0, v15, Lbf;->K:[Lbf$a;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-eq v0, v2, :cond_23

    move/from16 v32, v1

    move/from16 v30, v6

    move/from16 v31, v22

    goto :goto_b

    :cond_23
    :goto_a
    move/from16 v32, v1

    move/from16 v31, v3

    move/from16 v30, v6

    const/4 v8, 0x1

    goto :goto_c

    :cond_24
    move/from16 v32, v1

    move/from16 v31, v3

    move/from16 v30, v6

    :goto_b
    const/4 v8, 0x0

    .line 2636
    :goto_c
    iget-object v0, v15, Lbf;->p:[I

    const/4 v1, 0x0

    aput v30, v0, v1

    const/4 v1, 0x1

    .line 2637
    aput v31, v0, v1

    .line 2638
    iput-boolean v8, v15, Lbf;->i:Z

    if-eqz v8, :cond_26

    .line 2640
    iget v0, v15, Lbf;->y:I

    if-eqz v0, :cond_25

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    goto :goto_d

    :cond_25
    const/4 v1, -0x1

    :goto_d
    const/16 v17, 0x1

    goto :goto_e

    :cond_26
    const/4 v1, -0x1

    :cond_27
    const/16 v17, 0x0

    :goto_e
    if-eqz v8, :cond_29

    .line 2643
    iget v0, v15, Lbf;->y:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_28

    if-ne v0, v1, :cond_29

    :cond_28
    const/16 v33, 0x1

    goto :goto_f

    :cond_29
    const/16 v33, 0x0

    .line 2647
    :goto_f
    iget-object v0, v15, Lbf;->K:[Lbf$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v0, v1, :cond_2a

    instance-of v0, v15, Lbg;

    if-eqz v0, :cond_2a

    const/16 v22, 0x1

    goto :goto_10

    :cond_2a
    const/16 v22, 0x0

    :goto_10
    if-eqz v22, :cond_2b

    const/16 v23, 0x0

    .line 2654
    :cond_2b
    iget-object v0, v15, Lbf;->H:Lbe;

    invoke-virtual {v0}, Lbe;->m()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v34, v0, 0x1

    .line 2658
    iget-object v0, v15, Lbf;->aO:[Z

    const/4 v2, 0x0

    aget-boolean v27, v0, v2

    .line 2659
    aget-boolean v35, v0, v1

    .line 2661
    iget v0, v15, Lbf;->l:I

    const/16 v36, 0x0

    const/4 v7, 0x2

    if-eq v0, v7, :cond_31

    iget-boolean v0, v15, Lbf;->aC:Z

    if-nez v0, :cond_31

    if-eqz p2, :cond_2d

    .line 2662
    iget-object v0, v15, Lbf;->f:Lca;

    if-eqz v0, :cond_2d

    iget-object v0, v0, Lca;->j:Lbu;

    iget-boolean v0, v0, Lbu;->j:Z

    if-eqz v0, :cond_2d

    iget-object v0, v15, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->k:Lbu;

    iget-boolean v0, v0, Lbu;->j:Z

    if-nez v0, :cond_2c

    goto :goto_11

    :cond_2c
    if-eqz p2, :cond_31

    .line 2670
    iget-object v0, v15, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->j:Lbu;

    iget v0, v0, Lbu;->g:I

    invoke-virtual {v14, v13, v0}, Laf;->a(Laj;I)V

    .line 2671
    iget-object v0, v15, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->k:Lbu;

    iget v0, v0, Lbu;->g:I

    invoke-virtual {v14, v12, v0}, Laf;->a(Laj;I)V

    .line 2672
    iget-object v0, v15, Lbf;->L:Lbf;

    if-eqz v0, :cond_31

    if-eqz v5, :cond_31

    .line 2673
    iget-object v0, v15, Lbf;->h:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_31

    invoke-virtual/range {p0 .. p0}, Lbf;->aa()Z

    move-result v0

    if-nez v0, :cond_31

    .line 2677
    iget-object v0, v15, Lbf;->L:Lbf;

    iget-object v0, v0, Lbf;->C:Lbe;

    invoke-virtual {v14, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    const/16 v3, 0x8

    .line 2678
    invoke-virtual {v14, v0, v12, v1, v3}, Laf;->a(Laj;Laj;II)V

    goto/16 :goto_15

    :cond_2d
    :goto_11
    const/16 v3, 0x8

    .line 2663
    iget-object v0, v15, Lbf;->L:Lbf;

    if-eqz v0, :cond_2e

    iget-object v0, v0, Lbf;->C:Lbe;

    invoke-virtual {v14, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_12

    :cond_2e
    move-object/from16 v16, v36

    .line 2664
    :goto_12
    iget-object v0, v15, Lbf;->L:Lbf;

    if-eqz v0, :cond_2f

    iget-object v0, v0, Lbf;->A:Lbe;

    invoke-virtual {v14, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    move-object v6, v0

    goto :goto_13

    :cond_2f
    move-object/from16 v6, v36

    .line 2665
    :goto_13
    iget-object v0, v15, Lbf;->h:[Z

    const/16 v20, 0x0

    aget-boolean v21, v0, v20

    iget-object v0, v15, Lbf;->K:[Lbf$a;

    aget-object v37, v0, v20

    iget-object v1, v15, Lbf;->A:Lbe;

    iget-object v2, v15, Lbf;->C:Lbe;

    move-object/from16 v39, v2

    iget v2, v15, Lbf;->Q:I

    move/from16 v40, v2

    iget v2, v15, Lbf;->X:I

    iget-object v3, v15, Lbf;->aH:[I

    aget v42, v3, v20

    iget v3, v15, Lbf;->aa:F

    const/16 v18, 0x1

    aget-object v0, v0, v18

    sget-object v7, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v7, :cond_30

    move/from16 v44, v18

    goto :goto_14

    :cond_30
    move/from16 v44, v20

    :goto_14
    iget v0, v15, Lbf;->q:I

    move/from16 v24, v0

    iget v0, v15, Lbf;->r:I

    move/from16 v25, v0

    iget v0, v15, Lbf;->s:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v45, v1

    move-object/from16 v1, p1

    move-object/from16 v19, v39

    move/from16 v38, v40

    const/4 v7, 0x5

    move/from16 v39, v2

    const/4 v2, 0x1

    move/from16 v40, v3

    move v3, v5

    move/from16 v41, v4

    move/from16 v46, v5

    move/from16 v5, v21

    const/16 v18, 0x2

    move-object/from16 v7, v16

    move/from16 v43, v8

    move-object/from16 v8, v37

    move-object/from16 v47, v9

    move/from16 v9, v22

    move-object/from16 v48, v10

    move-object/from16 v10, v45

    move-object/from16 v49, v11

    move-object/from16 v11, v19

    move-object/from16 v37, v12

    move/from16 v12, v38

    move-object/from16 v38, v13

    move/from16 v13, v23

    move/from16 v14, v39

    move/from16 v15, v42

    move/from16 v16, v40

    move/from16 v18, v44

    move/from16 v19, v28

    move/from16 v20, v29

    move/from16 v21, v27

    move/from16 v22, v30

    move/from16 v23, v31

    move/from16 v27, v34

    invoke-direct/range {v0 .. v27}, Lbf;->a(Laf;ZZZZLaj;Laj;Lbf$a;ZLbe;Lbe;IIIIFZZZZZIIIIFZ)V

    goto :goto_16

    :cond_31
    :goto_15
    move/from16 v41, v4

    move/from16 v46, v5

    move/from16 v43, v8

    move-object/from16 v47, v9

    move-object/from16 v48, v10

    move-object/from16 v49, v11

    move-object/from16 v37, v12

    move-object/from16 v38, v13

    :goto_16
    if-eqz p2, :cond_35

    move-object/from16 v15, p0

    .line 2685
    iget-object v0, v15, Lbf;->g:Lcc;

    if-eqz v0, :cond_34

    iget-object v0, v0, Lcc;->j:Lbu;

    iget-boolean v0, v0, Lbu;->j:Z

    if-eqz v0, :cond_34

    iget-object v0, v15, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->k:Lbu;

    iget-boolean v0, v0, Lbu;->j:Z

    if-eqz v0, :cond_34

    .line 2686
    iget-object v0, v15, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->j:Lbu;

    iget v0, v0, Lbu;->g:I

    move-object/from16 v14, p1

    move-object/from16 v13, v49

    invoke-virtual {v14, v13, v0}, Laf;->a(Laj;I)V

    .line 2687
    iget-object v0, v15, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->k:Lbu;

    iget v0, v0, Lbu;->g:I

    move-object/from16 v12, v48

    invoke-virtual {v14, v12, v0}, Laf;->a(Laj;I)V

    .line 2688
    iget-object v0, v15, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->a:Lbu;

    iget v0, v0, Lbu;->g:I

    move-object/from16 v1, v47

    invoke-virtual {v14, v1, v0}, Laf;->a(Laj;I)V

    .line 2689
    iget-object v0, v15, Lbf;->L:Lbf;

    if-eqz v0, :cond_33

    if-nez v29, :cond_33

    if-eqz v41, :cond_33

    .line 2690
    iget-object v2, v15, Lbf;->h:[Z

    const/4 v11, 0x1

    aget-boolean v2, v2, v11

    if-eqz v2, :cond_32

    .line 2694
    iget-object v0, v0, Lbf;->D:Lbe;

    invoke-virtual {v14, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v10, 0x0

    .line 2695
    invoke-virtual {v14, v0, v12, v10, v2}, Laf;->a(Laj;Laj;II)V

    goto :goto_17

    :cond_32
    const/16 v2, 0x8

    const/4 v10, 0x0

    goto :goto_17

    :cond_33
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_17
    move v6, v10

    goto :goto_19

    :cond_34
    move-object/from16 v14, p1

    move-object/from16 v1, v47

    move-object/from16 v12, v48

    move-object/from16 v13, v49

    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_18

    :cond_35
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, v47

    move-object/from16 v12, v48

    move-object/from16 v13, v49

    :goto_18
    move v6, v11

    .line 2700
    :goto_19
    iget v0, v15, Lbf;->m:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_36

    move v6, v10

    :cond_36
    if-eqz v6, :cond_41

    .line 2709
    iget-boolean v0, v15, Lbf;->aD:Z

    if-nez v0, :cond_41

    .line 2711
    iget-object v0, v15, Lbf;->K:[Lbf$a;

    aget-object v0, v0, v11

    sget-object v3, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v0, v3, :cond_37

    instance-of v0, v15, Lbg;

    if-eqz v0, :cond_37

    move v9, v11

    goto :goto_1a

    :cond_37
    move v9, v10

    :goto_1a
    if-eqz v9, :cond_38

    move/from16 v32, v10

    .line 2717
    :cond_38
    iget-object v0, v15, Lbf;->L:Lbf;

    if-eqz v0, :cond_39

    iget-object v0, v0, Lbf;->D:Lbe;

    invoke-virtual {v14, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    move-object v7, v0

    goto :goto_1b

    :cond_39
    move-object/from16 v7, v36

    .line 2718
    :goto_1b
    iget-object v0, v15, Lbf;->L:Lbf;

    if-eqz v0, :cond_3a

    iget-object v0, v0, Lbf;->B:Lbe;

    invoke-virtual {v14, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    move-object v6, v0

    goto :goto_1c

    :cond_3a
    move-object/from16 v6, v36

    .line 2720
    :goto_1c
    iget v0, v15, Lbf;->W:I

    if-gtz v0, :cond_3b

    iget v0, v15, Lbf;->aR:I

    if-ne v0, v2, :cond_3f

    .line 2722
    :cond_3b
    iget-object v0, v15, Lbf;->E:Lbe;

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_3d

    .line 2723
    invoke-virtual/range {p0 .. p0}, Lbf;->Q()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Laf;->c(Laj;Laj;II)Lad;

    .line 2724
    iget-object v0, v15, Lbf;->E:Lbe;

    iget-object v0, v0, Lbe;->c:Lbe;

    invoke-virtual {v14, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    .line 2725
    iget-object v3, v15, Lbf;->E:Lbe;

    invoke-virtual {v3}, Lbe;->j()I

    move-result v3

    .line 2726
    invoke-virtual {v14, v1, v0, v3, v2}, Laf;->c(Laj;Laj;II)Lad;

    if-eqz v41, :cond_3c

    .line 2732
    iget-object v0, v15, Lbf;->D:Lbe;

    invoke-virtual {v14, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    const/4 v1, 0x5

    .line 2734
    invoke-virtual {v14, v7, v0, v10, v1}, Laf;->a(Laj;Laj;II)V

    :cond_3c
    move/from16 v27, v10

    goto :goto_1e

    .line 2736
    :cond_3d
    iget v0, v15, Lbf;->aR:I

    if-ne v0, v2, :cond_3e

    .line 2738
    iget-object v0, v15, Lbf;->E:Lbe;

    invoke-virtual {v0}, Lbe;->j()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Laf;->c(Laj;Laj;II)Lad;

    goto :goto_1d

    .line 2740
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lbf;->Q()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Laf;->c(Laj;Laj;II)Lad;

    :cond_3f
    :goto_1d
    move/from16 v27, v34

    .line 2744
    :goto_1e
    iget-object v0, v15, Lbf;->h:[Z

    aget-boolean v5, v0, v11

    iget-object v0, v15, Lbf;->K:[Lbf$a;

    aget-object v8, v0, v11

    iget-object v4, v15, Lbf;->B:Lbe;

    iget-object v3, v15, Lbf;->D:Lbe;

    iget v1, v15, Lbf;->R:I

    iget v2, v15, Lbf;->Y:I

    iget-object v10, v15, Lbf;->aH:[I

    aget v16, v10, v11

    iget v10, v15, Lbf;->ab:F

    const/16 v17, 0x0

    aget-object v0, v0, v17

    sget-object v11, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v11, :cond_40

    const/16 v18, 0x1

    goto :goto_1f

    :cond_40
    move/from16 v18, v17

    :goto_1f
    iget v0, v15, Lbf;->t:I

    move/from16 v24, v0

    iget v0, v15, Lbf;->u:I

    move/from16 v25, v0

    iget v0, v15, Lbf;->v:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object/from16 v1, p1

    move/from16 v20, v2

    const/4 v2, 0x0

    move-object v11, v3

    move/from16 v3, v41

    move-object/from16 v21, v4

    move/from16 v4, v46

    move/from16 v17, v10

    move-object/from16 v10, v21

    move-object/from16 v34, v12

    move/from16 v12, v19

    move-object/from16 v36, v13

    move/from16 v13, v32

    move/from16 v14, v20

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v33

    move/from16 v19, v29

    move/from16 v20, v28

    move/from16 v21, v35

    move/from16 v22, v31

    move/from16 v23, v30

    invoke-direct/range {v0 .. v27}, Lbf;->a(Laf;ZZZZLaj;Laj;Lbf$a;ZLbe;Lbe;IIIIFZZZZZIIIIFZ)V

    goto :goto_20

    :cond_41
    move-object/from16 v34, v12

    move-object/from16 v36, v13

    :goto_20
    if-eqz v43, :cond_43

    const/16 v6, 0x8

    move-object/from16 v7, p0

    .line 2752
    iget v0, v7, Lbf;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    .line 2753
    iget v5, v7, Lbf;->z:F

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-virtual/range {v0 .. v6}, Laf;->a(Laj;Laj;Laj;Laj;FI)V

    goto :goto_21

    .line 2755
    :cond_42
    iget v5, v7, Lbf;->z:F

    const/16 v6, 0x8

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v34

    move-object/from16 v4, v36

    invoke-virtual/range {v0 .. v6}, Laf;->a(Laj;Laj;Laj;Laj;FI)V

    goto :goto_21

    :cond_43
    move-object/from16 v7, p0

    .line 2759
    :goto_21
    iget-object v0, v7, Lbf;->H:Lbe;

    invoke-virtual {v0}, Lbe;->m()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2760
    iget-object v0, v7, Lbf;->H:Lbe;

    invoke-virtual {v0}, Lbe;->k()Lbe;

    move-result-object v0

    invoke-virtual {v0}, Lbe;->h()Lbf;

    move-result-object v0

    iget v1, v7, Lbf;->aI:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Lbf;->H:Lbe;

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v7, v0, v1, v2}, Laf;->a(Lbf;Lbf;FI)V

    :cond_44
    const/4 v0, 0x0

    .line 2768
    iput-boolean v0, v7, Lbf;->aC:Z

    .line 2769
    iput-boolean v0, v7, Lbf;->aD:Z

    return-void
.end method

.method public a(Lbe$a;Lbf;Lbe$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1895
    invoke-virtual {p0, p1, p2, p3, v0}, Lbf;->a(Lbe$a;Lbf;Lbe$a;I)V

    return-void
.end method

.method public a(Lbe$a;Lbf;Lbe$a;I)V
    .locals 3

    .line 1909
    sget-object v0, Lbe$a;->CENTER:Lbe$a;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_c

    .line 1912
    sget-object p1, Lbe$a;->CENTER:Lbe$a;

    if-ne p3, p1, :cond_8

    .line 1913
    sget-object p1, Lbe$a;->LEFT:Lbe$a;

    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    .line 1914
    sget-object p3, Lbe$a;->RIGHT:Lbe$a;

    invoke-virtual {p0, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p3

    .line 1915
    sget-object p4, Lbe$a;->TOP:Lbe$a;

    invoke-virtual {p0, p4}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p4

    .line 1916
    sget-object v0, Lbe$a;->BOTTOM:Lbe$a;

    invoke-virtual {p0, v0}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 1919
    invoke-virtual {p1}, Lbe;->m()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 1920
    invoke-virtual {p3}, Lbe;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move p1, v1

    goto :goto_0

    .line 1923
    :cond_2
    sget-object p1, Lbe$a;->LEFT:Lbe$a;

    sget-object p3, Lbe$a;->LEFT:Lbe$a;

    invoke-virtual {p0, p1, p2, p3, v1}, Lbf;->a(Lbe$a;Lbf;Lbe$a;I)V

    .line 1925
    sget-object p1, Lbe$a;->RIGHT:Lbe$a;

    sget-object p3, Lbe$a;->RIGHT:Lbe$a;

    invoke-virtual {p0, p1, p2, p3, v1}, Lbf;->a(Lbe$a;Lbf;Lbe$a;I)V

    move p1, v2

    :goto_0
    if-eqz p4, :cond_3

    .line 1929
    invoke-virtual {p4}, Lbe;->m()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    if-eqz v0, :cond_5

    .line 1930
    invoke-virtual {v0}, Lbe;->m()Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    move v2, v1

    goto :goto_1

    .line 1933
    :cond_5
    sget-object p3, Lbe$a;->TOP:Lbe$a;

    sget-object p4, Lbe$a;->TOP:Lbe$a;

    invoke-virtual {p0, p3, p2, p4, v1}, Lbf;->a(Lbe$a;Lbf;Lbe$a;I)V

    .line 1935
    sget-object p3, Lbe$a;->BOTTOM:Lbe$a;

    sget-object p4, Lbe$a;->BOTTOM:Lbe$a;

    invoke-virtual {p0, p3, p2, p4, v1}, Lbf;->a(Lbe$a;Lbf;Lbe$a;I)V

    :goto_1
    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    .line 1940
    sget-object p1, Lbe$a;->CENTER:Lbe$a;

    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    .line 1941
    sget-object p3, Lbe$a;->CENTER:Lbe$a;

    invoke-virtual {p2, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lbe;->a(Lbe;I)Z

    goto/16 :goto_5

    :cond_6
    if-eqz p1, :cond_7

    .line 1943
    sget-object p1, Lbe$a;->CENTER_X:Lbe$a;

    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    .line 1944
    sget-object p3, Lbe$a;->CENTER_X:Lbe$a;

    invoke-virtual {p2, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lbe;->a(Lbe;I)Z

    goto/16 :goto_5

    :cond_7
    if-eqz v2, :cond_1c

    .line 1946
    sget-object p1, Lbe$a;->CENTER_Y:Lbe$a;

    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    .line 1947
    sget-object p3, Lbe$a;->CENTER_Y:Lbe$a;

    invoke-virtual {p2, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lbe;->a(Lbe;I)Z

    goto/16 :goto_5

    .line 1949
    :cond_8
    sget-object p1, Lbe$a;->LEFT:Lbe$a;

    if-eq p3, p1, :cond_b

    sget-object p1, Lbe$a;->RIGHT:Lbe$a;

    if-ne p3, p1, :cond_9

    goto :goto_2

    .line 1957
    :cond_9
    sget-object p1, Lbe$a;->TOP:Lbe$a;

    if-eq p3, p1, :cond_a

    sget-object p1, Lbe$a;->BOTTOM:Lbe$a;

    if-ne p3, p1, :cond_1c

    .line 1959
    :cond_a
    sget-object p1, Lbe$a;->TOP:Lbe$a;

    invoke-virtual {p0, p1, p2, p3, v1}, Lbf;->a(Lbe$a;Lbf;Lbe$a;I)V

    .line 1961
    sget-object p1, Lbe$a;->BOTTOM:Lbe$a;

    invoke-virtual {p0, p1, p2, p3, v1}, Lbf;->a(Lbe$a;Lbf;Lbe$a;I)V

    .line 1963
    sget-object p1, Lbe$a;->CENTER:Lbe$a;

    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    .line 1964
    invoke-virtual {p2, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lbe;->a(Lbe;I)Z

    goto/16 :goto_5

    .line 1951
    :cond_b
    :goto_2
    sget-object p1, Lbe$a;->LEFT:Lbe$a;

    invoke-virtual {p0, p1, p2, p3, v1}, Lbf;->a(Lbe$a;Lbf;Lbe$a;I)V

    .line 1953
    sget-object p1, Lbe$a;->RIGHT:Lbe$a;

    invoke-virtual {p0, p1, p2, p3, v1}, Lbf;->a(Lbe$a;Lbf;Lbe$a;I)V

    .line 1955
    sget-object p1, Lbe$a;->CENTER:Lbe$a;

    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    .line 1956
    invoke-virtual {p2, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lbe;->a(Lbe;I)Z

    goto/16 :goto_5

    .line 1966
    :cond_c
    sget-object v0, Lbe$a;->CENTER_X:Lbe$a;

    if-ne p1, v0, :cond_e

    sget-object v0, Lbe$a;->LEFT:Lbe$a;

    if-eq p3, v0, :cond_d

    sget-object v0, Lbe$a;->RIGHT:Lbe$a;

    if-ne p3, v0, :cond_e

    .line 1969
    :cond_d
    sget-object p1, Lbe$a;->LEFT:Lbe$a;

    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    .line 1970
    invoke-virtual {p2, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p2

    .line 1971
    sget-object p3, Lbe$a;->RIGHT:Lbe$a;

    invoke-virtual {p0, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p3

    .line 1972
    invoke-virtual {p1, p2, v1}, Lbe;->a(Lbe;I)Z

    .line 1973
    invoke-virtual {p3, p2, v1}, Lbe;->a(Lbe;I)Z

    .line 1974
    sget-object p1, Lbe$a;->CENTER_X:Lbe$a;

    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    .line 1975
    invoke-virtual {p1, p2, v1}, Lbe;->a(Lbe;I)Z

    goto/16 :goto_5

    .line 1976
    :cond_e
    sget-object v0, Lbe$a;->CENTER_Y:Lbe$a;

    if-ne p1, v0, :cond_10

    sget-object v0, Lbe$a;->TOP:Lbe$a;

    if-eq p3, v0, :cond_f

    sget-object v0, Lbe$a;->BOTTOM:Lbe$a;

    if-ne p3, v0, :cond_10

    .line 1979
    :cond_f
    invoke-virtual {p2, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    .line 1980
    sget-object p2, Lbe$a;->TOP:Lbe$a;

    invoke-virtual {p0, p2}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p2

    .line 1981
    invoke-virtual {p2, p1, v1}, Lbe;->a(Lbe;I)Z

    .line 1982
    sget-object p2, Lbe$a;->BOTTOM:Lbe$a;

    invoke-virtual {p0, p2}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p2

    .line 1983
    invoke-virtual {p2, p1, v1}, Lbe;->a(Lbe;I)Z

    .line 1984
    sget-object p2, Lbe$a;->CENTER_Y:Lbe$a;

    invoke-virtual {p0, p2}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p2

    .line 1985
    invoke-virtual {p2, p1, v1}, Lbe;->a(Lbe;I)Z

    goto/16 :goto_5

    .line 1986
    :cond_10
    sget-object v0, Lbe$a;->CENTER_X:Lbe$a;

    if-ne p1, v0, :cond_11

    sget-object v0, Lbe$a;->CENTER_X:Lbe$a;

    if-ne p3, v0, :cond_11

    .line 1989
    sget-object p1, Lbe$a;->LEFT:Lbe$a;

    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    .line 1990
    sget-object p4, Lbe$a;->LEFT:Lbe$a;

    invoke-virtual {p2, p4}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p4

    .line 1991
    invoke-virtual {p1, p4, v1}, Lbe;->a(Lbe;I)Z

    .line 1992
    sget-object p1, Lbe$a;->RIGHT:Lbe$a;

    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    .line 1993
    sget-object p4, Lbe$a;->RIGHT:Lbe$a;

    invoke-virtual {p2, p4}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p4

    .line 1994
    invoke-virtual {p1, p4, v1}, Lbe;->a(Lbe;I)Z

    .line 1995
    sget-object p1, Lbe$a;->CENTER_X:Lbe$a;

    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    .line 1996
    invoke-virtual {p2, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lbe;->a(Lbe;I)Z

    goto/16 :goto_5

    .line 1997
    :cond_11
    sget-object v0, Lbe$a;->CENTER_Y:Lbe$a;

    if-ne p1, v0, :cond_12

    sget-object v0, Lbe$a;->CENTER_Y:Lbe$a;

    if-ne p3, v0, :cond_12

    .line 2000
    sget-object p1, Lbe$a;->TOP:Lbe$a;

    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    .line 2001
    sget-object p4, Lbe$a;->TOP:Lbe$a;

    invoke-virtual {p2, p4}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p4

    .line 2002
    invoke-virtual {p1, p4, v1}, Lbe;->a(Lbe;I)Z

    .line 2003
    sget-object p1, Lbe$a;->BOTTOM:Lbe$a;

    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    .line 2004
    sget-object p4, Lbe$a;->BOTTOM:Lbe$a;

    invoke-virtual {p2, p4}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p4

    .line 2005
    invoke-virtual {p1, p4, v1}, Lbe;->a(Lbe;I)Z

    .line 2006
    sget-object p1, Lbe$a;->CENTER_Y:Lbe$a;

    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    .line 2007
    invoke-virtual {p2, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lbe;->a(Lbe;I)Z

    goto/16 :goto_5

    .line 2009
    :cond_12
    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v0

    .line 2010
    invoke-virtual {p2, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p2

    .line 2011
    invoke-virtual {v0, p2}, Lbe;->a(Lbe;)Z

    move-result p3

    if-eqz p3, :cond_1c

    .line 2014
    sget-object p3, Lbe$a;->BASELINE:Lbe$a;

    if-ne p1, p3, :cond_14

    .line 2015
    sget-object p1, Lbe$a;->TOP:Lbe$a;

    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    .line 2016
    sget-object p3, Lbe$a;->BOTTOM:Lbe$a;

    invoke-virtual {p0, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p3

    if-eqz p1, :cond_13

    .line 2018
    invoke-virtual {p1}, Lbe;->l()V

    :cond_13
    if-eqz p3, :cond_1b

    .line 2021
    invoke-virtual {p3}, Lbe;->l()V

    goto :goto_4

    .line 2023
    :cond_14
    sget-object p3, Lbe$a;->TOP:Lbe$a;

    if-eq p1, p3, :cond_18

    sget-object p3, Lbe$a;->BOTTOM:Lbe$a;

    if-ne p1, p3, :cond_15

    goto :goto_3

    .line 2049
    :cond_15
    sget-object p3, Lbe$a;->LEFT:Lbe$a;

    if-eq p1, p3, :cond_16

    sget-object p3, Lbe$a;->RIGHT:Lbe$a;

    if-ne p1, p3, :cond_1b

    .line 2051
    :cond_16
    sget-object p3, Lbe$a;->CENTER:Lbe$a;

    invoke-virtual {p0, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p3

    .line 2052
    invoke-virtual {p3}, Lbe;->k()Lbe;

    move-result-object v1

    if-eq v1, p2, :cond_17

    .line 2053
    invoke-virtual {p3}, Lbe;->l()V

    .line 2055
    :cond_17
    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    invoke-virtual {p1}, Lbe;->n()Lbe;

    move-result-object p1

    .line 2056
    sget-object p3, Lbe$a;->CENTER_X:Lbe$a;

    invoke-virtual {p0, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p3

    .line 2057
    invoke-virtual {p3}, Lbe;->m()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2058
    invoke-virtual {p1}, Lbe;->l()V

    .line 2059
    invoke-virtual {p3}, Lbe;->l()V

    goto :goto_4

    .line 2025
    :cond_18
    :goto_3
    sget-object p3, Lbe$a;->BASELINE:Lbe$a;

    invoke-virtual {p0, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p3

    if-eqz p3, :cond_19

    .line 2027
    invoke-virtual {p3}, Lbe;->l()V

    .line 2029
    :cond_19
    sget-object p3, Lbe$a;->CENTER:Lbe$a;

    invoke-virtual {p0, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p3

    .line 2030
    invoke-virtual {p3}, Lbe;->k()Lbe;

    move-result-object v1

    if-eq v1, p2, :cond_1a

    .line 2031
    invoke-virtual {p3}, Lbe;->l()V

    .line 2033
    :cond_1a
    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    invoke-virtual {p1}, Lbe;->n()Lbe;

    move-result-object p1

    .line 2034
    sget-object p3, Lbe$a;->CENTER_Y:Lbe$a;

    invoke-virtual {p0, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p3

    .line 2035
    invoke-virtual {p3}, Lbe;->m()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2036
    invoke-virtual {p1}, Lbe;->l()V

    .line 2037
    invoke-virtual {p3}, Lbe;->l()V

    .line 2073
    :cond_1b
    :goto_4
    invoke-virtual {v0, p2, p4}, Lbe;->a(Lbe;I)Z

    :cond_1c
    :goto_5
    return-void
.end method

.method public a(Lbe$a;Lbf;Lbe$a;II)V
    .locals 0

    .line 1864
    invoke-virtual {p0, p1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p1

    .line 1865
    invoke-virtual {p2, p3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object p2

    const/4 p3, 0x1

    .line 1866
    invoke-virtual {p1, p2, p4, p5, p3}, Lbe;->a(Lbe;IIZ)Z

    return-void
.end method

.method public a(Lbe;Lbe;I)V
    .locals 1

    .line 1877
    invoke-virtual {p1}, Lbe;->h()Lbf;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1878
    invoke-virtual {p1}, Lbe;->i()Lbe$a;

    move-result-object p1

    invoke-virtual {p2}, Lbe;->h()Lbf;

    move-result-object v0

    invoke-virtual {p2}, Lbe;->i()Lbe$a;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2, p3}, Lbf;->a(Lbe$a;Lbf;Lbe$a;I)V

    :cond_0
    return-void
.end method

.method public a(Lbf$a;)V
    .locals 2

    .line 2243
    iget-object v0, p0, Lbf;->K:[Lbf$a;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public a(Lbf;FI)V
    .locals 6

    .line 885
    sget-object v1, Lbe$a;->CENTER:Lbe$a;

    sget-object v3, Lbe$a;->CENTER:Lbe$a;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lbf;->a(Lbe$a;Lbf;Lbe$a;II)V

    .line 887
    iput p2, p0, Lbf;->aI:F

    return-void
.end method

.method public a(Lbf;Ljava/util/HashMap;)V
    .locals 6
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

    .line 3386
    iget v0, p1, Lbf;->l:I

    iput v0, p0, Lbf;->l:I

    .line 3387
    iget v0, p1, Lbf;->m:I

    iput v0, p0, Lbf;->m:I

    .line 3389
    iget v0, p1, Lbf;->n:I

    iput v0, p0, Lbf;->n:I

    .line 3390
    iget v0, p1, Lbf;->o:I

    iput v0, p0, Lbf;->o:I

    .line 3392
    iget-object v0, p0, Lbf;->p:[I

    iget-object v1, p1, Lbf;->p:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v3, 0x1

    .line 3393
    aget v1, v1, v3

    aput v1, v0, v3

    .line 3395
    iget v0, p1, Lbf;->q:I

    iput v0, p0, Lbf;->q:I

    .line 3396
    iget v0, p1, Lbf;->r:I

    iput v0, p0, Lbf;->r:I

    .line 3397
    iget v0, p1, Lbf;->t:I

    iput v0, p0, Lbf;->t:I

    .line 3398
    iget v0, p1, Lbf;->u:I

    iput v0, p0, Lbf;->u:I

    .line 3399
    iget v0, p1, Lbf;->v:F

    iput v0, p0, Lbf;->v:F

    .line 3400
    iget-boolean v0, p1, Lbf;->w:Z

    iput-boolean v0, p0, Lbf;->w:Z

    .line 3401
    iget-boolean v0, p1, Lbf;->x:Z

    iput-boolean v0, p0, Lbf;->x:Z

    .line 3403
    iget v0, p1, Lbf;->y:I

    iput v0, p0, Lbf;->y:I

    .line 3404
    iget v0, p1, Lbf;->z:F

    iput v0, p0, Lbf;->z:F

    .line 3406
    iget-object v0, p1, Lbf;->aH:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lbf;->aH:[I

    .line 3407
    iget v0, p1, Lbf;->aI:F

    iput v0, p0, Lbf;->aI:F

    .line 3408
    iget-boolean v0, p1, Lbf;->aJ:Z

    iput-boolean v0, p0, Lbf;->aJ:Z

    .line 3409
    iget-boolean v0, p1, Lbf;->aK:Z

    iput-boolean v0, p0, Lbf;->aK:Z

    .line 3414
    iget-object v0, p0, Lbf;->A:Lbe;

    invoke-virtual {v0}, Lbe;->l()V

    .line 3415
    iget-object v0, p0, Lbf;->B:Lbe;

    invoke-virtual {v0}, Lbe;->l()V

    .line 3416
    iget-object v0, p0, Lbf;->C:Lbe;

    invoke-virtual {v0}, Lbe;->l()V

    .line 3417
    iget-object v0, p0, Lbf;->D:Lbe;

    invoke-virtual {v0}, Lbe;->l()V

    .line 3418
    iget-object v0, p0, Lbf;->E:Lbe;

    invoke-virtual {v0}, Lbe;->l()V

    .line 3419
    iget-object v0, p0, Lbf;->F:Lbe;

    invoke-virtual {v0}, Lbe;->l()V

    .line 3420
    iget-object v0, p0, Lbf;->G:Lbe;

    invoke-virtual {v0}, Lbe;->l()V

    .line 3421
    iget-object v0, p0, Lbf;->H:Lbe;

    invoke-virtual {v0}, Lbe;->l()V

    .line 3422
    iget-object v0, p0, Lbf;->K:[Lbf$a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbf$a;

    iput-object v0, p0, Lbf;->K:[Lbf$a;

    .line 3423
    iget-object v0, p0, Lbf;->L:Lbf;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lbf;->L:Lbf;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf;

    :goto_0
    iput-object v0, p0, Lbf;->L:Lbf;

    .line 3425
    iget v0, p1, Lbf;->M:I

    iput v0, p0, Lbf;->M:I

    .line 3426
    iget v0, p1, Lbf;->N:I

    iput v0, p0, Lbf;->N:I

    .line 3427
    iget v0, p1, Lbf;->O:F

    iput v0, p0, Lbf;->O:F

    .line 3428
    iget v0, p1, Lbf;->P:I

    iput v0, p0, Lbf;->P:I

    .line 3430
    iget v0, p1, Lbf;->Q:I

    iput v0, p0, Lbf;->Q:I

    .line 3431
    iget v0, p1, Lbf;->R:I

    iput v0, p0, Lbf;->R:I

    .line 3432
    iget v0, p1, Lbf;->S:I

    iput v0, p0, Lbf;->S:I

    .line 3433
    iget v0, p1, Lbf;->T:I

    iput v0, p0, Lbf;->T:I

    .line 3435
    iget v0, p1, Lbf;->U:I

    iput v0, p0, Lbf;->U:I

    .line 3436
    iget v0, p1, Lbf;->V:I

    iput v0, p0, Lbf;->V:I

    .line 3438
    iget v0, p1, Lbf;->W:I

    iput v0, p0, Lbf;->W:I

    .line 3439
    iget v0, p1, Lbf;->X:I

    iput v0, p0, Lbf;->X:I

    .line 3440
    iget v0, p1, Lbf;->Y:I

    iput v0, p0, Lbf;->Y:I

    .line 3442
    iget v0, p1, Lbf;->aa:F

    iput v0, p0, Lbf;->aa:F

    .line 3443
    iget v0, p1, Lbf;->ab:F

    iput v0, p0, Lbf;->ab:F

    .line 3445
    iget-object v0, p1, Lbf;->aP:Ljava/lang/Object;

    iput-object v0, p0, Lbf;->aP:Ljava/lang/Object;

    .line 3446
    iget v0, p1, Lbf;->aQ:I

    iput v0, p0, Lbf;->aQ:I

    .line 3447
    iget v0, p1, Lbf;->aR:I

    iput v0, p0, Lbf;->aR:I

    .line 3448
    iget-boolean v0, p1, Lbf;->aS:Z

    iput-boolean v0, p0, Lbf;->aS:Z

    .line 3449
    iget-object v0, p1, Lbf;->aT:Ljava/lang/String;

    iput-object v0, p0, Lbf;->aT:Ljava/lang/String;

    .line 3450
    iget-object v0, p1, Lbf;->aU:Ljava/lang/String;

    iput-object v0, p0, Lbf;->aU:Ljava/lang/String;

    .line 3452
    iget v0, p1, Lbf;->ac:I

    iput v0, p0, Lbf;->ac:I

    .line 3453
    iget v0, p1, Lbf;->ad:I

    iput v0, p0, Lbf;->ad:I

    .line 3454
    iget v0, p1, Lbf;->ae:I

    iput v0, p0, Lbf;->ae:I

    .line 3455
    iget v0, p1, Lbf;->af:I

    iput v0, p0, Lbf;->af:I

    .line 3456
    iget-boolean v0, p1, Lbf;->ag:Z

    iput-boolean v0, p0, Lbf;->ag:Z

    .line 3457
    iget-boolean v0, p1, Lbf;->ah:Z

    iput-boolean v0, p0, Lbf;->ah:Z

    .line 3459
    iget-boolean v0, p1, Lbf;->ai:Z

    iput-boolean v0, p0, Lbf;->ai:Z

    .line 3460
    iget-boolean v0, p1, Lbf;->aj:Z

    iput-boolean v0, p0, Lbf;->aj:Z

    .line 3462
    iget-boolean v0, p1, Lbf;->ak:Z

    iput-boolean v0, p0, Lbf;->ak:Z

    .line 3463
    iget-boolean v0, p1, Lbf;->al:Z

    iput-boolean v0, p0, Lbf;->al:Z

    .line 3465
    iget v0, p1, Lbf;->an:I

    iput v0, p0, Lbf;->an:I

    .line 3466
    iget v0, p1, Lbf;->ao:I

    iput v0, p0, Lbf;->ao:I

    .line 3467
    iget-boolean v0, p1, Lbf;->ap:Z

    iput-boolean v0, p0, Lbf;->ap:Z

    .line 3468
    iget-boolean v0, p1, Lbf;->aq:Z

    iput-boolean v0, p0, Lbf;->aq:Z

    .line 3469
    iget-object v0, p0, Lbf;->ar:[F

    iget-object v4, p1, Lbf;->ar:[F

    aget v5, v4, v2

    aput v5, v0, v2

    .line 3470
    aget v4, v4, v3

    aput v4, v0, v3

    .line 3472
    iget-object v0, p0, Lbf;->as:[Lbf;

    iget-object v4, p1, Lbf;->as:[Lbf;

    aget-object v5, v4, v2

    aput-object v5, v0, v2

    .line 3473
    aget-object v4, v4, v3

    aput-object v4, v0, v3

    .line 3475
    iget-object v0, p0, Lbf;->at:[Lbf;

    iget-object v4, p1, Lbf;->at:[Lbf;

    aget-object v5, v4, v2

    aput-object v5, v0, v2

    .line 3476
    aget-object v2, v4, v3

    aput-object v2, v0, v3

    .line 3478
    iget-object v0, p1, Lbf;->au:Lbf;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf;

    :goto_1
    iput-object v0, p0, Lbf;->au:Lbf;

    .line 3479
    iget-object p1, p1, Lbf;->av:Lbf;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lbf;

    :goto_2
    iput-object v1, p0, Lbf;->av:Lbf;

    return-void
.end method

.method public a(Lbg;Laf;Ljava/util/HashSet;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbg;",
            "Laf;",
            "Ljava/util/HashSet<",
            "Lbf;",
            ">;IZ)V"
        }
    .end annotation

    if-eqz p5, :cond_1

    .line 3543
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    .line 3546
    :cond_0
    invoke-static {p1, p2, p0}, Lbl;->a(Lbg;Laf;Lbf;)V

    .line 3547
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 p5, 0x40

    .line 3548
    invoke-virtual {p1, p5}, Lbg;->b(I)Z

    move-result p5

    invoke-virtual {p0, p2, p5}, Lbf;->a(Laf;Z)V

    :cond_1
    if-nez p4, :cond_3

    .line 3551
    iget-object p5, p0, Lbf;->A:Lbe;

    invoke-virtual {p5}, Lbe;->a()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 3553
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe;

    .line 3554
    iget-object v1, v0, Lbe;->a:Lbf;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lbf;->a(Lbg;Laf;Ljava/util/HashSet;IZ)V

    goto :goto_0

    .line 3557
    :cond_2
    iget-object p5, p0, Lbf;->C:Lbe;

    invoke-virtual {p5}, Lbe;->a()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_6

    .line 3559
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe;

    .line 3560
    iget-object v1, v0, Lbe;->a:Lbf;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lbf;->a(Lbg;Laf;Ljava/util/HashSet;IZ)V

    goto :goto_1

    .line 3564
    :cond_3
    iget-object p5, p0, Lbf;->B:Lbe;

    invoke-virtual {p5}, Lbe;->a()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_4

    .line 3566
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe;

    .line 3567
    iget-object v1, v0, Lbe;->a:Lbf;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lbf;->a(Lbg;Laf;Ljava/util/HashSet;IZ)V

    goto :goto_2

    .line 3570
    :cond_4
    iget-object p5, p0, Lbf;->D:Lbe;

    invoke-virtual {p5}, Lbe;->a()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_5

    .line 3572
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe;

    .line 3573
    iget-object v1, v0, Lbe;->a:Lbf;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lbf;->a(Lbg;Laf;Ljava/util/HashSet;IZ)V

    goto :goto_3

    .line 3576
    :cond_5
    iget-object p5, p0, Lbf;->E:Lbe;

    invoke-virtual {p5}, Lbe;->a()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_6

    .line 3578
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_4
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe;

    .line 3579
    iget-object v1, v0, Lbe;->a:Lbf;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lbf;->a(Lbg;Laf;Ljava/util/HashSet;IZ)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 1756
    iput-object p1, p0, Lbf;->aP:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 957
    iput-object p1, p0, Lbf;->aT:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .locals 12

    .line 3588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbf;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    actualWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbf;->M:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 3590
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lbf;->N:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3592
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualLeft:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lbf;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3594
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lbf;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3596
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3597
    iget-object v0, p0, Lbf;->A:Lbe;

    const-string v1, "left"

    invoke-direct {p0, p1, v1, v0}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lbe;)V

    .line 3598
    iget-object v0, p0, Lbf;->B:Lbe;

    const-string v1, "top"

    invoke-direct {p0, p1, v1, v0}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lbe;)V

    .line 3599
    iget-object v0, p0, Lbf;->C:Lbe;

    const-string v1, "right"

    invoke-direct {p0, p1, v1, v0}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lbe;)V

    .line 3600
    iget-object v0, p0, Lbf;->D:Lbe;

    const-string v1, "bottom"

    invoke-direct {p0, p1, v1, v0}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lbe;)V

    .line 3601
    iget-object v0, p0, Lbf;->E:Lbe;

    const-string v1, "baseline"

    invoke-direct {p0, p1, v1, v0}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lbe;)V

    .line 3602
    iget-object v0, p0, Lbf;->F:Lbe;

    const-string v1, "centerX"

    invoke-direct {p0, p1, v1, v0}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lbe;)V

    .line 3603
    iget-object v0, p0, Lbf;->G:Lbe;

    const-string v1, "centerY"

    invoke-direct {p0, p1, v1, v0}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lbe;)V

    .line 3604
    iget v3, p0, Lbf;->M:I

    iget v4, p0, Lbf;->X:I

    iget-object v0, p0, Lbf;->aH:[I

    const/4 v11, 0x0

    aget v5, v0, v11

    iget v6, p0, Lbf;->aA:I

    iget v7, p0, Lbf;->q:I

    iget v8, p0, Lbf;->n:I

    iget v9, p0, Lbf;->s:F

    iget-object v0, p0, Lbf;->ar:[F

    aget v10, v0, v11

    const-string v2, "    width"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V

    .line 3615
    iget v3, p0, Lbf;->N:I

    iget v4, p0, Lbf;->Y:I

    iget-object v0, p0, Lbf;->aH:[I

    const/4 v1, 0x1

    aget v5, v0, v1

    iget v6, p0, Lbf;->aB:I

    iget v7, p0, Lbf;->t:I

    iget v8, p0, Lbf;->o:I

    iget v9, p0, Lbf;->v:F

    iget-object v0, p0, Lbf;->ar:[F

    aget v10, v0, v1

    const-string v2, "    height"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V

    .line 3624
    iget v0, p0, Lbf;->O:F

    iget v1, p0, Lbf;->P:I

    const-string v2, "    dimensionRatio"

    invoke-direct {p0, p1, v2, v0, v1}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;FI)V

    .line 3625
    iget v0, p0, Lbf;->aa:F

    sget v1, Lbf;->Z:F

    const-string v2, "    horizontalBias"

    invoke-direct {p0, p1, v2, v0, v1}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 3626
    iget v0, p0, Lbf;->ab:F

    sget v1, Lbf;->Z:F

    const-string v2, "    verticalBias"

    invoke-direct {p0, p1, v2, v0, v1}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 3627
    iget v0, p0, Lbf;->an:I

    const-string v1, "    horizontalChainStyle"

    invoke-direct {p0, p1, v1, v0, v11}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 3628
    iget v0, p0, Lbf;->ao:I

    const-string v1, "    verticalChainStyle"

    invoke-direct {p0, p1, v1, v0, v11}, Lbf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string v0, "  }"

    .line 3630
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(ZZ)V
    .locals 7

    .line 3483
    iget-object v0, p0, Lbf;->f:Lca;

    invoke-virtual {v0}, Lca;->g()Z

    move-result v0

    and-int/2addr p1, v0

    .line 3484
    iget-object v0, p0, Lbf;->g:Lcc;

    invoke-virtual {v0}, Lcc;->g()Z

    move-result v0

    and-int/2addr p2, v0

    .line 3485
    iget-object v0, p0, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->j:Lbu;

    iget v0, v0, Lbu;->g:I

    .line 3486
    iget-object v1, p0, Lbf;->g:Lcc;

    iget-object v1, v1, Lcc;->j:Lbu;

    iget v1, v1, Lbu;->g:I

    .line 3487
    iget-object v2, p0, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->k:Lbu;

    iget v2, v2, Lbu;->g:I

    .line 3488
    iget-object v3, p0, Lbf;->g:Lcc;

    iget-object v3, v3, Lcc;->k:Lbu;

    iget v3, v3, Lbu;->g:I

    sub-int v4, v2, v0

    sub-int v5, v3, v1

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_0

    const v5, 0x7fffffff

    if-eq v0, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v2, v4, :cond_0

    if-eq v2, v5, :cond_0

    if-eq v3, v4, :cond_0

    if-ne v3, v5, :cond_1

    :cond_0
    move v0, v6

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_1
    sub-int/2addr v2, v0

    sub-int/2addr v3, v1

    if-eqz p1, :cond_2

    .line 3506
    iput v0, p0, Lbf;->Q:I

    :cond_2
    if-eqz p2, :cond_3

    .line 3509
    iput v1, p0, Lbf;->R:I

    .line 3512
    :cond_3
    iget v0, p0, Lbf;->aR:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 3513
    iput v6, p0, Lbf;->M:I

    .line 3514
    iput v6, p0, Lbf;->N:I

    return-void

    :cond_4
    if-eqz p1, :cond_6

    .line 3520
    iget-object p1, p0, Lbf;->K:[Lbf$a;

    aget-object p1, p1, v6

    sget-object v0, Lbf$a;->FIXED:Lbf$a;

    if-ne p1, v0, :cond_5

    iget p1, p0, Lbf;->M:I

    if-ge v2, p1, :cond_5

    goto :goto_0

    :cond_5
    move p1, v2

    .line 3523
    :goto_0
    iput p1, p0, Lbf;->M:I

    .line 3524
    iget p1, p0, Lbf;->M:I

    iget v0, p0, Lbf;->X:I

    if-ge p1, v0, :cond_6

    .line 3525
    iput v0, p0, Lbf;->M:I

    :cond_6
    if-eqz p2, :cond_8

    .line 3530
    iget-object p1, p0, Lbf;->K:[Lbf$a;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    sget-object p2, Lbf$a;->FIXED:Lbf$a;

    if-ne p1, p2, :cond_7

    iget p1, p0, Lbf;->N:I

    if-ge v3, p1, :cond_7

    goto :goto_1

    :cond_7
    move p1, v3

    .line 3533
    :goto_1
    iput p1, p0, Lbf;->N:I

    .line 3534
    iget p1, p0, Lbf;->N:I

    iget p2, p0, Lbf;->Y:I

    if-ge p1, p2, :cond_8

    .line 3535
    iput p2, p0, Lbf;->N:I

    :cond_8
    return-void
.end method

.method public a(ZZZZ)V
    .locals 3

    .line 2790
    iget p1, p0, Lbf;->y:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    .line 2792
    iput v0, p0, Lbf;->y:I

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    .line 2794
    iput v2, p0, Lbf;->y:I

    .line 2795
    iget p1, p0, Lbf;->P:I

    if-ne p1, v1, :cond_1

    .line 2797
    iget p1, p0, Lbf;->z:F

    div-float p1, p2, p1

    iput p1, p0, Lbf;->z:F

    .line 2802
    :cond_1
    :goto_0
    iget p1, p0, Lbf;->y:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lbf;->B:Lbe;

    invoke-virtual {p1}, Lbe;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lbf;->D:Lbe;

    invoke-virtual {p1}, Lbe;->m()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2803
    :cond_2
    iput v2, p0, Lbf;->y:I

    goto :goto_1

    .line 2804
    :cond_3
    iget p1, p0, Lbf;->y:I

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lbf;->A:Lbe;

    invoke-virtual {p1}, Lbe;->m()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lbf;->C:Lbe;

    invoke-virtual {p1}, Lbe;->m()Z

    move-result p1

    if-nez p1, :cond_5

    .line 2805
    :cond_4
    iput v0, p0, Lbf;->y:I

    .line 2809
    :cond_5
    :goto_1
    iget p1, p0, Lbf;->y:I

    if-ne p1, v1, :cond_8

    .line 2810
    iget-object p1, p0, Lbf;->B:Lbe;

    invoke-virtual {p1}, Lbe;->m()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lbf;->D:Lbe;

    invoke-virtual {p1}, Lbe;->m()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lbf;->A:Lbe;

    .line 2811
    invoke-virtual {p1}, Lbe;->m()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lbf;->C:Lbe;

    invoke-virtual {p1}, Lbe;->m()Z

    move-result p1

    if-nez p1, :cond_8

    .line 2813
    :cond_6
    iget-object p1, p0, Lbf;->B:Lbe;

    invoke-virtual {p1}, Lbe;->m()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lbf;->D:Lbe;

    invoke-virtual {p1}, Lbe;->m()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2814
    iput v0, p0, Lbf;->y:I

    goto :goto_2

    .line 2815
    :cond_7
    iget-object p1, p0, Lbf;->A:Lbe;

    invoke-virtual {p1}, Lbe;->m()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lbf;->C:Lbe;

    invoke-virtual {p1}, Lbe;->m()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2816
    iget p1, p0, Lbf;->z:F

    div-float p1, p2, p1

    iput p1, p0, Lbf;->z:F

    .line 2817
    iput v2, p0, Lbf;->y:I

    .line 2831
    :cond_8
    :goto_2
    iget p1, p0, Lbf;->y:I

    if-ne p1, v1, :cond_a

    .line 2832
    iget p1, p0, Lbf;->q:I

    if-lez p1, :cond_9

    iget p1, p0, Lbf;->t:I

    if-nez p1, :cond_9

    .line 2833
    iput v0, p0, Lbf;->y:I

    goto :goto_3

    .line 2834
    :cond_9
    iget p1, p0, Lbf;->q:I

    if-nez p1, :cond_a

    iget p1, p0, Lbf;->t:I

    if-lez p1, :cond_a

    .line 2835
    iget p1, p0, Lbf;->z:F

    div-float/2addr p2, p1

    iput p2, p0, Lbf;->z:F

    .line 2836
    iput v2, p0, Lbf;->y:I

    :cond_a
    :goto_3
    return-void
.end method

.method public a()Z
    .locals 2

    .line 1846
    iget v0, p0, Lbf;->aR:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a_(Lbf;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lbf;->L:Lbf;

    return-void
.end method

.method public aa()Z
    .locals 2

    .line 2261
    iget-object v0, p0, Lbf;->A:Lbe;

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbf;->A:Lbe;

    iget-object v0, v0, Lbe;->c:Lbe;

    iget-object v0, v0, Lbe;->c:Lbe;

    iget-object v1, p0, Lbf;->A:Lbe;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lbf;->C:Lbe;

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbf;->C:Lbe;

    iget-object v0, v0, Lbe;->c:Lbe;

    iget-object v0, v0, Lbe;->c:Lbe;

    iget-object v1, p0, Lbf;->C:Lbe;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public ab()Z
    .locals 2

    .line 2342
    iget-object v0, p0, Lbf;->B:Lbe;

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbf;->B:Lbe;

    iget-object v0, v0, Lbe;->c:Lbe;

    iget-object v0, v0, Lbe;->c:Lbe;

    iget-object v1, p0, Lbf;->B:Lbe;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lbf;->D:Lbe;

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbf;->D:Lbe;

    iget-object v0, v0, Lbe;->c:Lbe;

    iget-object v0, v0, Lbe;->c:Lbe;

    iget-object v1, p0, Lbf;->D:Lbe;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method ac()Z
    .locals 1

    .line 2777
    instance-of v0, p0, Lbn;

    if-nez v0, :cond_1

    instance-of v0, p0, Lbi;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b(F)V
    .locals 0

    .line 1564
    iput p1, p0, Lbf;->ab:F

    return-void
.end method

.method public b(II)V
    .locals 1

    .line 163
    iget-boolean v0, p0, Lbf;->aD:Z

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lbf;->B:Lbe;

    invoke-virtual {v0, p1}, Lbe;->a(I)V

    .line 167
    iget-object v0, p0, Lbf;->D:Lbe;

    invoke-virtual {v0, p2}, Lbe;->a(I)V

    .line 168
    iput p1, p0, Lbf;->R:I

    sub-int/2addr p2, p1

    .line 169
    iput p2, p0, Lbf;->N:I

    .line 170
    iget-boolean p2, p0, Lbf;->aJ:Z

    if-eqz p2, :cond_1

    .line 171
    iget-object p2, p0, Lbf;->E:Lbe;

    iget v0, p0, Lbf;->W:I

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lbe;->a(I)V

    :cond_1
    const/4 p1, 0x1

    .line 173
    iput-boolean p1, p0, Lbf;->aD:Z

    return-void
.end method

.method public b(IIIF)V
    .locals 0

    .line 1445
    iput p1, p0, Lbf;->o:I

    .line 1446
    iput p2, p0, Lbf;->t:I

    const p1, 0x7fffffff

    if-ne p3, p1, :cond_0

    const/4 p3, 0x0

    .line 1447
    :cond_0
    iput p3, p0, Lbf;->u:I

    .line 1448
    iput p4, p0, Lbf;->v:F

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-lez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p4, p1

    if-gez p1, :cond_1

    .line 1449
    iget p1, p0, Lbf;->o:I

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 1450
    iput p1, p0, Lbf;->o:I

    :cond_1
    return-void
.end method

.method public b(Laf;Z)V
    .locals 5

    .line 3352
    iget-object v0, p0, Lbf;->A:Lbe;

    invoke-virtual {p1, v0}, Laf;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3353
    iget-object v1, p0, Lbf;->B:Lbe;

    invoke-virtual {p1, v1}, Laf;->b(Ljava/lang/Object;)I

    move-result v1

    .line 3354
    iget-object v2, p0, Lbf;->C:Lbe;

    invoke-virtual {p1, v2}, Laf;->b(Ljava/lang/Object;)I

    move-result v2

    .line 3355
    iget-object v3, p0, Lbf;->D:Lbe;

    invoke-virtual {p1, v3}, Laf;->b(Ljava/lang/Object;)I

    move-result p1

    if-eqz p2, :cond_0

    .line 3357
    iget-object v3, p0, Lbf;->f:Lca;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lca;->j:Lbu;

    iget-boolean v3, v3, Lbu;->j:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbf;->f:Lca;

    iget-object v3, v3, Lca;->k:Lbu;

    iget-boolean v3, v3, Lbu;->j:Z

    if-eqz v3, :cond_0

    .line 3358
    iget-object v0, p0, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->j:Lbu;

    iget v0, v0, Lbu;->g:I

    .line 3359
    iget-object v2, p0, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->k:Lbu;

    iget v2, v2, Lbu;->g:I

    :cond_0
    if-eqz p2, :cond_1

    .line 3361
    iget-object p2, p0, Lbf;->g:Lcc;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcc;->j:Lbu;

    iget-boolean p2, p2, Lbu;->j:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lbf;->g:Lcc;

    iget-object p2, p2, Lcc;->k:Lbu;

    iget-boolean p2, p2, Lbu;->j:Z

    if-eqz p2, :cond_1

    .line 3362
    iget-object p1, p0, Lbf;->g:Lcc;

    iget-object p1, p1, Lcc;->j:Lbu;

    iget v1, p1, Lbu;->g:I

    .line 3363
    iget-object p1, p0, Lbf;->g:Lcc;

    iget-object p1, p1, Lcc;->k:Lbu;

    iget p1, p1, Lbu;->g:I

    :cond_1
    sub-int p2, v2, v0

    sub-int v3, p1, v1

    const/4 v4, 0x0

    if-ltz p2, :cond_2

    if-ltz v3, :cond_2

    const/high16 p2, -0x80000000

    if-eq v0, p2, :cond_2

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v2, p2, :cond_2

    if-eq v2, v3, :cond_2

    if-eq p1, p2, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    move p1, v4

    move v0, p1

    move v1, v0

    move v2, v1

    .line 3378
    :cond_3
    invoke-virtual {p0, v0, v1, v2, p1}, Lbf;->a(IIII)V

    return-void
.end method

.method public b(Lbf$a;)V
    .locals 2

    .line 2252
    iget-object v0, p0, Lbf;->K:[Lbf$a;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1460
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, -0x1

    .line 1466
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    .line 1467
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_3

    add-int/lit8 v6, v2, -0x1

    if-ge v3, v6, :cond_3

    .line 1469
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    .line 1470
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v4, "H"

    .line 1472
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v5

    :cond_2
    :goto_0
    add-int/lit8 v4, v3, 0x1

    :cond_3
    const/16 v3, 0x3a

    .line 1479
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_5

    sub-int/2addr v2, v5

    if-ge v3, v2, :cond_5

    .line 1482
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v5

    .line 1483
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1484
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1486
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1487
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_6

    cmpl-float v3, p1, v0

    if-lez v3, :cond_6

    if-ne v1, v5, :cond_4

    div-float/2addr p1, v2

    .line 1490
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_1

    :cond_4
    div-float/2addr v2, p1

    .line 1492
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1500
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1501
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 1503
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_6
    move p1, v0

    :goto_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 1511
    iput p1, p0, Lbf;->O:F

    .line 1512
    iput v1, p0, Lbf;->P:I

    :cond_7
    return-void

    .line 1461
    :cond_8
    :goto_2
    iput v0, p0, Lbf;->O:F

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 317
    iput-boolean p1, p0, Lbf;->aL:Z

    return-void
.end method

.method public c(I)Lce;
    .locals 1

    if-nez p1, :cond_0

    .line 85
    iget-object p1, p0, Lbf;->f:Lca;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 87
    iget-object p1, p0, Lbf;->g:Lcc;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(F)V
    .locals 2

    .line 1790
    iget-object v0, p0, Lbf;->ar:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 353
    iput-boolean p1, p0, Lbf;->aJ:Z

    return-void
.end method

.method public c(II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 238
    iget-object p1, p0, Lbf;->A:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lbf;->A:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    invoke-virtual {p1}, Lbe;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lbf;->C:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lbf;->C:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    .line 239
    invoke-virtual {p1}, Lbe;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 240
    iget-object p1, p0, Lbf;->C:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    invoke-virtual {p1}, Lbe;->d()I

    move-result p1

    iget-object v2, p0, Lbf;->C:Lbe;

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lbf;->A:Lbe;

    iget-object v2, v2, Lbe;->c:Lbe;

    .line 241
    invoke-virtual {v2}, Lbe;->d()I

    move-result v2

    iget-object v3, p0, Lbf;->A:Lbe;

    invoke-virtual {v3}, Lbe;->j()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr p1, v2

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 244
    :cond_1
    iget-object p1, p0, Lbf;->B:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lbf;->B:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    invoke-virtual {p1}, Lbe;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lbf;->D:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lbf;->D:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    .line 245
    invoke-virtual {p1}, Lbe;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 246
    iget-object p1, p0, Lbf;->D:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    invoke-virtual {p1}, Lbe;->d()I

    move-result p1

    iget-object v2, p0, Lbf;->D:Lbe;

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lbf;->B:Lbe;

    iget-object v2, v2, Lbe;->c:Lbe;

    .line 247
    invoke-virtual {v2}, Lbe;->d()I

    move-result v2

    iget-object v3, p0, Lbf;->B:Lbe;

    invoke-virtual {v3}, Lbe;->j()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr p1, v2

    if-lt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0

    :cond_3
    return v1
.end method

.method public d(F)V
    .locals 2

    .line 1799
    iget-object v0, p0, Lbf;->ar:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 117
    iget-object v0, p0, Lbf;->A:Lbe;

    invoke-virtual {v0, p1}, Lbe;->a(I)V

    .line 118
    iput p1, p0, Lbf;->Q:I

    return-void
.end method

.method public d(II)V
    .locals 0

    .line 403
    iput p1, p0, Lbf;->aM:I

    .line 404
    iput p2, p0, Lbf;->aN:I

    const/4 p1, 0x0

    .line 405
    invoke-virtual {p0, p1}, Lbf;->e(Z)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 365
    iput-boolean p1, p0, Lbf;->aK:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lbf;->aC:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbf;->A:Lbe;

    invoke-virtual {v0}, Lbe;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbf;->C:Lbe;

    invoke-virtual {v0}, Lbe;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public e(I)V
    .locals 1

    .line 122
    iget-object v0, p0, Lbf;->B:Lbe;

    invoke-virtual {v0, p1}, Lbe;->a(I)V

    .line 123
    iput p1, p0, Lbf;->R:I

    return-void
.end method

.method public e(II)V
    .locals 0

    .line 1329
    iput p1, p0, Lbf;->Q:I

    .line 1330
    iput p2, p0, Lbf;->R:I

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 377
    iput-boolean p1, p0, Lbf;->a:Z

    return-void
.end method

.method public e()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lbf;->aD:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbf;->B:Lbe;

    invoke-virtual {v0}, Lbe;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbf;->D:Lbe;

    invoke-virtual {v0}, Lbe;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f(I)V
    .locals 3

    .line 181
    iget-boolean v0, p0, Lbf;->aJ:Z

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget v0, p0, Lbf;->W:I

    sub-int v0, p1, v0

    .line 185
    iget v1, p0, Lbf;->N:I

    add-int/2addr v1, v0

    .line 186
    iput v0, p0, Lbf;->R:I

    .line 187
    iget-object v2, p0, Lbf;->B:Lbe;

    invoke-virtual {v2, v0}, Lbe;->a(I)V

    .line 188
    iget-object v0, p0, Lbf;->D:Lbe;

    invoke-virtual {v0, v1}, Lbe;->a(I)V

    .line 189
    iget-object v0, p0, Lbf;->E:Lbe;

    invoke-virtual {v0, p1}, Lbe;->a(I)V

    const/4 p1, 0x1

    .line 190
    iput-boolean p1, p0, Lbf;->aD:Z

    return-void
.end method

.method public f(II)V
    .locals 0

    .line 1688
    iput p1, p0, Lbf;->Q:I

    sub-int/2addr p2, p1

    .line 1689
    iput p2, p0, Lbf;->M:I

    .line 1690
    iget p1, p0, Lbf;->M:I

    iget p2, p0, Lbf;->X:I

    if-ge p1, p2, :cond_0

    .line 1691
    iput p2, p0, Lbf;->M:I

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 932
    iput-boolean p1, p0, Lbf;->aS:Z

    return-void
.end method

.method public g(II)V
    .locals 0

    .line 1702
    iput p1, p0, Lbf;->R:I

    sub-int/2addr p2, p1

    .line 1703
    iput p2, p0, Lbf;->N:I

    .line 1704
    iget p1, p0, Lbf;->N:I

    iget p2, p0, Lbf;->Y:I

    if-ge p1, p2, :cond_0

    .line 1705
    iput p2, p0, Lbf;->N:I

    :cond_0
    return-void
.end method

.method public g(I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 228
    iget-object p1, p0, Lbf;->A:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object v3, p0, Lbf;->C:Lbe;

    iget-object v3, v3, Lbe;->c:Lbe;

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    .line 231
    :cond_3
    iget-object p1, p0, Lbf;->B:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_3

    :cond_4
    move p1, v2

    :goto_3
    iget-object v3, p0, Lbf;->D:Lbe;

    iget-object v3, v3, Lbe;->c:Lbe;

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    move v3, v2

    :goto_4
    add-int/2addr p1, v3

    iget-object v3, p0, Lbf;->E:Lbe;

    iget-object v3, v3, Lbe;->c:Lbe;

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_5

    :cond_6
    move v3, v2

    :goto_5
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    return v1
.end method

.method public h(I)V
    .locals 2

    .line 329
    iget-object v0, p0, Lbf;->aH:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public i(I)V
    .locals 2

    .line 333
    iget-object v0, p0, Lbf;->aH:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public j()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lbf;->aE:Z

    return v0
.end method

.method public j(I)Z
    .locals 1

    .line 373
    iget-object v0, p0, Lbf;->aO:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public k(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 386
    iput p1, p0, Lbf;->aG:I

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lbf;->aF:Z

    return v0
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lbf;->aE:Z

    return-void
.end method

.method public l(I)V
    .locals 0

    .line 914
    iput p1, p0, Lbf;->aR:I

    return-void
.end method

.method public m(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 1120
    invoke-virtual {p0}, Lbf;->F()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1122
    invoke-virtual {p0}, Lbf;->G()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lbf;->aF:Z

    return-void
.end method

.method public n(I)F
    .locals 1

    if-nez p1, :cond_0

    .line 1259
    iget p1, p0, Lbf;->aa:F

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1261
    iget p1, p0, Lbf;->ab:F

    return p1

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public n()V
    .locals 3

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lbf;->aC:Z

    .line 203
    iput-boolean v0, p0, Lbf;->aD:Z

    .line 204
    iput-boolean v0, p0, Lbf;->aE:Z

    .line 205
    iput-boolean v0, p0, Lbf;->aF:Z

    .line 206
    iget-object v1, p0, Lbf;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 207
    iget-object v2, p0, Lbf;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbe;

    .line 208
    invoke-virtual {v2}, Lbe;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(I)V
    .locals 0

    .line 1310
    iput p1, p0, Lbf;->Q:I

    return-void
.end method

.method public o()Z
    .locals 4

    .line 217
    iget-object v0, p0, Lbf;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 218
    iget-object v3, p0, Lbf;->J:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbe;

    .line 219
    invoke-virtual {v3}, Lbe;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public p(I)V
    .locals 0

    .line 1319
    iput p1, p0, Lbf;->R:I

    return-void
.end method

.method public p()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lbf;->aL:Z

    return v0
.end method

.method public q()I
    .locals 2

    .line 321
    iget-object v0, p0, Lbf;->aH:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public q(I)V
    .locals 1

    .line 1386
    iput p1, p0, Lbf;->M:I

    .line 1387
    iget p1, p0, Lbf;->M:I

    iget v0, p0, Lbf;->X:I

    if-ge p1, v0, :cond_0

    .line 1388
    iput v0, p0, Lbf;->M:I

    :cond_0
    return-void
.end method

.method public r()I
    .locals 2

    .line 325
    iget-object v0, p0, Lbf;->aH:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public r(I)V
    .locals 1

    .line 1398
    iput p1, p0, Lbf;->N:I

    .line 1399
    iget p1, p0, Lbf;->N:I

    iget v0, p0, Lbf;->Y:I

    if-ge p1, v0, :cond_0

    .line 1400
    iput v0, p0, Lbf;->N:I

    :cond_0
    return-void
.end method

.method public s(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1574
    iput p1, p0, Lbf;->X:I

    goto :goto_0

    .line 1576
    :cond_0
    iput p1, p0, Lbf;->X:I

    :goto_0
    return-void
.end method

.method public s()Z
    .locals 1

    .line 361
    iget-boolean v0, p0, Lbf;->aK:Z

    return v0
.end method

.method public t(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1587
    iput p1, p0, Lbf;->Y:I

    goto :goto_0

    .line 1589
    :cond_0
    iput p1, p0, Lbf;->Y:I

    :goto_0
    return-void
.end method

.method public t()Z
    .locals 2

    .line 381
    iget-boolean v0, p0, Lbf;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lbf;->aR:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbf;->aU:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lbf;->aU:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbf;->aT:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbf;->aT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbf;->Q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbf;->R:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbf;->M:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbf;->N:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 400
    iget v0, p0, Lbf;->aM:I

    return v0
.end method

.method public u(I)V
    .locals 0

    .line 1745
    iput p1, p0, Lbf;->W:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1746
    :goto_0
    iput-boolean p1, p0, Lbf;->aJ:Z

    return-void
.end method

.method public v()I
    .locals 1

    .line 401
    iget v0, p0, Lbf;->aN:I

    return v0
.end method

.method public v(I)V
    .locals 0

    .line 1809
    iput p1, p0, Lbf;->an:I

    return-void
.end method

.method public w()V
    .locals 6

    .line 517
    iget-object v0, p0, Lbf;->A:Lbe;

    invoke-virtual {v0}, Lbe;->l()V

    .line 518
    iget-object v0, p0, Lbf;->B:Lbe;

    invoke-virtual {v0}, Lbe;->l()V

    .line 519
    iget-object v0, p0, Lbf;->C:Lbe;

    invoke-virtual {v0}, Lbe;->l()V

    .line 520
    iget-object v0, p0, Lbf;->D:Lbe;

    invoke-virtual {v0}, Lbe;->l()V

    .line 521
    iget-object v0, p0, Lbf;->E:Lbe;

    invoke-virtual {v0}, Lbe;->l()V

    .line 522
    iget-object v0, p0, Lbf;->F:Lbe;

    invoke-virtual {v0}, Lbe;->l()V

    .line 523
    iget-object v0, p0, Lbf;->G:Lbe;

    invoke-virtual {v0}, Lbe;->l()V

    .line 524
    iget-object v0, p0, Lbf;->H:Lbe;

    invoke-virtual {v0}, Lbe;->l()V

    const/4 v0, 0x0

    .line 525
    iput-object v0, p0, Lbf;->L:Lbf;

    const/4 v1, 0x0

    .line 526
    iput v1, p0, Lbf;->aI:F

    const/4 v2, 0x0

    .line 527
    iput v2, p0, Lbf;->M:I

    .line 528
    iput v2, p0, Lbf;->N:I

    .line 529
    iput v1, p0, Lbf;->O:F

    const/4 v1, -0x1

    .line 530
    iput v1, p0, Lbf;->P:I

    .line 531
    iput v2, p0, Lbf;->Q:I

    .line 532
    iput v2, p0, Lbf;->R:I

    .line 533
    iput v2, p0, Lbf;->U:I

    .line 534
    iput v2, p0, Lbf;->V:I

    .line 535
    iput v2, p0, Lbf;->W:I

    .line 536
    iput v2, p0, Lbf;->X:I

    .line 537
    iput v2, p0, Lbf;->Y:I

    .line 538
    sget v3, Lbf;->Z:F

    iput v3, p0, Lbf;->aa:F

    .line 539
    iput v3, p0, Lbf;->ab:F

    .line 540
    iget-object v3, p0, Lbf;->K:[Lbf$a;

    sget-object v4, Lbf$a;->FIXED:Lbf$a;

    aput-object v4, v3, v2

    .line 541
    iget-object v3, p0, Lbf;->K:[Lbf$a;

    sget-object v4, Lbf$a;->FIXED:Lbf$a;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 542
    iput-object v0, p0, Lbf;->aP:Ljava/lang/Object;

    .line 543
    iput v2, p0, Lbf;->aQ:I

    .line 544
    iput v2, p0, Lbf;->aR:I

    .line 545
    iput-object v0, p0, Lbf;->aU:Ljava/lang/String;

    .line 546
    iput-boolean v2, p0, Lbf;->ak:Z

    .line 547
    iput-boolean v2, p0, Lbf;->al:Z

    .line 548
    iput v2, p0, Lbf;->an:I

    .line 549
    iput v2, p0, Lbf;->ao:I

    .line 550
    iput-boolean v2, p0, Lbf;->ap:Z

    .line 551
    iput-boolean v2, p0, Lbf;->aq:Z

    .line 552
    iget-object v0, p0, Lbf;->ar:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    .line 553
    aput v3, v0, v5

    .line 554
    iput v1, p0, Lbf;->l:I

    .line 555
    iput v1, p0, Lbf;->m:I

    .line 556
    iget-object v0, p0, Lbf;->aH:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    .line 557
    aput v3, v0, v5

    .line 558
    iput v2, p0, Lbf;->n:I

    .line 559
    iput v2, p0, Lbf;->o:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 560
    iput v0, p0, Lbf;->s:F

    .line 561
    iput v0, p0, Lbf;->v:F

    .line 562
    iput v3, p0, Lbf;->r:I

    .line 563
    iput v3, p0, Lbf;->u:I

    .line 564
    iput v2, p0, Lbf;->q:I

    .line 565
    iput v2, p0, Lbf;->t:I

    .line 566
    iput-boolean v2, p0, Lbf;->i:Z

    .line 567
    iput v1, p0, Lbf;->y:I

    .line 568
    iput v0, p0, Lbf;->z:F

    .line 569
    iput-boolean v2, p0, Lbf;->am:Z

    .line 570
    iget-object v0, p0, Lbf;->h:[Z

    aput-boolean v5, v0, v2

    .line 571
    aput-boolean v5, v0, v5

    .line 572
    iput-boolean v2, p0, Lbf;->aL:Z

    .line 573
    iget-object v0, p0, Lbf;->aO:[Z

    aput-boolean v2, v0, v2

    .line 574
    aput-boolean v2, v0, v5

    .line 575
    iput-boolean v5, p0, Lbf;->a:Z

    .line 576
    iget-object v0, p0, Lbf;->p:[I

    aput v2, v0, v2

    .line 577
    aput v2, v0, v5

    .line 578
    iput v1, p0, Lbf;->aA:I

    .line 579
    iput v1, p0, Lbf;->aB:I

    return-void
.end method

.method public w(I)V
    .locals 0

    .line 1829
    iput p1, p0, Lbf;->ao:I

    return-void
.end method

.method public x(I)Lbf$a;
    .locals 1

    if-nez p1, :cond_0

    .line 2229
    invoke-virtual {p0}, Lbf;->Y()Lbf$a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2231
    invoke-virtual {p0}, Lbf;->Z()Lbf$a;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public x()Z
    .locals 4

    .line 716
    iget-object v0, p0, Lbf;->K:[Lbf$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lbf;->K:[Lbf$a;

    aget-object v0, v0, v3

    sget-object v2, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v2, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public y(I)Lbf;
    .locals 1

    if-nez p1, :cond_0

    .line 2276
    iget-object p1, p0, Lbf;->A:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbf;->A:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    iget-object v0, p0, Lbf;->A:Lbe;

    if-ne p1, v0, :cond_1

    .line 2277
    iget-object p1, v0, Lbe;->c:Lbe;

    iget-object p1, p1, Lbe;->a:Lbf;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2280
    iget-object p1, p0, Lbf;->B:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbf;->B:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    iget-object v0, p0, Lbf;->B:Lbe;

    if-ne p1, v0, :cond_1

    .line 2281
    iget-object p1, v0, Lbe;->c:Lbe;

    iget-object p1, p1, Lbe;->a:Lbf;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public y()Z
    .locals 2

    .line 722
    iget v0, p0, Lbf;->aA:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lbf;->aB:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public z(I)Lbf;
    .locals 1

    if-nez p1, :cond_0

    .line 2295
    iget-object p1, p0, Lbf;->C:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbf;->C:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    iget-object v0, p0, Lbf;->C:Lbe;

    if-ne p1, v0, :cond_1

    .line 2296
    iget-object p1, v0, Lbe;->c:Lbe;

    iget-object p1, p1, Lbe;->a:Lbf;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2299
    iget-object p1, p0, Lbf;->D:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbf;->D:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    iget-object p1, p1, Lbe;->c:Lbe;

    iget-object v0, p0, Lbf;->D:Lbe;

    if-ne p1, v0, :cond_1

    .line 2300
    iget-object p1, v0, Lbe;->c:Lbe;

    iget-object p1, p1, Lbe;->a:Lbf;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public z()V
    .locals 1

    .line 773
    iget-object v0, p0, Lbf;->f:Lca;

    if-nez v0, :cond_0

    .line 774
    new-instance v0, Lca;

    invoke-direct {v0, p0}, Lca;-><init>(Lbf;)V

    iput-object v0, p0, Lbf;->f:Lca;

    .line 776
    :cond_0
    iget-object v0, p0, Lbf;->g:Lcc;

    if-nez v0, :cond_1

    .line 777
    new-instance v0, Lcc;

    invoke-direct {v0, p0}, Lcc;-><init>(Lbf;)V

    iput-object v0, p0, Lbf;->g:Lcc;

    :cond_1
    return-void
.end method
