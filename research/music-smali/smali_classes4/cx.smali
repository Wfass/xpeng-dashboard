.class public Lcx;
.super Ljava/lang/Object;
.source "MotionController.java"


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lco;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lck;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lci;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lch;",
            ">;"
        }
    .end annotation
.end field

.field private E:[Lcv;

.field private F:I

.field private G:I

.field private H:Landroid/view/View;

.field private I:I

.field private J:F

.field private K:Landroid/view/animation/Interpolator;

.field private L:Z

.field a:Landroid/graphics/Rect;

.field b:Landroid/view/View;

.field c:I

.field d:Z

.field e:Ljava/lang/String;

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field private k:I

.field private l:Ldc;

.field private m:Ldc;

.field private n:Lcw;

.field private o:Lcw;

.field private p:[Lam;

.field private q:Lam;

.field private r:[I

.field private s:[D

.field private t:[D

.field private u:[Ljava/lang/String;

.field private v:[I

.field private w:I

.field private x:[F

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ldc;",
            ">;"
        }
    .end annotation
.end field

.field private z:[F


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcx;->a:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcx;->d:Z

    const/4 v1, -0x1

    .line 92
    iput v1, p0, Lcx;->k:I

    .line 93
    new-instance v1, Ldc;

    invoke-direct {v1}, Ldc;-><init>()V

    iput-object v1, p0, Lcx;->l:Ldc;

    .line 94
    new-instance v1, Ldc;

    invoke-direct {v1}, Ldc;-><init>()V

    iput-object v1, p0, Lcx;->m:Ldc;

    .line 96
    new-instance v1, Lcw;

    invoke-direct {v1}, Lcw;-><init>()V

    iput-object v1, p0, Lcx;->n:Lcw;

    .line 97
    new-instance v1, Lcw;

    invoke-direct {v1}, Lcw;-><init>()V

    iput-object v1, p0, Lcx;->o:Lcw;

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 101
    iput v1, p0, Lcx;->f:F

    const/4 v2, 0x0

    .line 102
    iput v2, p0, Lcx;->g:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 103
    iput v2, p0, Lcx;->h:F

    const/4 v2, 0x4

    .line 111
    iput v2, p0, Lcx;->w:I

    .line 112
    iget v2, p0, Lcx;->w:I

    new-array v2, v2, [F

    iput-object v2, p0, Lcx;->x:[F

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcx;->y:Ljava/util/ArrayList;

    const/4 v2, 0x1

    .line 114
    new-array v2, v2, [F

    iput-object v2, p0, Lcx;->z:[F

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcx;->A:Ljava/util/ArrayList;

    .line 121
    sget v2, Lco;->a:I

    iput v2, p0, Lcx;->F:I

    .line 122
    sget v2, Lco;->a:I

    iput v2, p0, Lcx;->G:I

    const/4 v2, 0x0

    .line 123
    iput-object v2, p0, Lcx;->H:Landroid/view/View;

    .line 124
    sget v3, Lco;->a:I

    iput v3, p0, Lcx;->I:I

    .line 125
    iput v1, p0, Lcx;->J:F

    .line 126
    iput-object v2, p0, Lcx;->K:Landroid/view/animation/Interpolator;

    .line 127
    iput-boolean v0, p0, Lcx;->L:Z

    .line 153
    invoke-virtual {p0, p1}, Lcx;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(F[F)F
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 1176
    aput v2, p2, v1

    goto :goto_0

    .line 1177
    :cond_0
    iget v3, p0, Lcx;->h:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_2

    .line 1178
    iget v3, p0, Lcx;->g:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    move p1, v0

    .line 1181
    :cond_1
    iget v3, p0, Lcx;->g:F

    cmpl-float v4, p1, v3

    if-lez v4, :cond_2

    float-to-double v7, p1

    cmpg-double v4, v7, v5

    if-gez v4, :cond_2

    sub-float/2addr p1, v3

    .line 1183
    iget v3, p0, Lcx;->h:F

    mul-float/2addr p1, v3

    .line 1184
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1190
    :cond_2
    :goto_0
    iget-object v3, p0, Lcx;->l:Ldc;

    iget-object v3, v3, Ldc;->b:Lan;

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 1193
    iget-object v5, p0, Lcx;->y:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldc;

    .line 1194
    iget-object v7, v6, Ldc;->b:Lan;

    if-eqz v7, :cond_3

    .line 1195
    iget v7, v6, Ldc;->d:F

    cmpg-float v7, v7, p1

    if-gez v7, :cond_4

    .line 1196
    iget-object v0, v6, Ldc;->b:Lan;

    .line 1197
    iget v3, v6, Ldc;->d:F

    move v9, v3

    move-object v3, v0

    move v0, v9

    goto :goto_1

    .line 1199
    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1200
    iget v4, v6, Ldc;->d:F

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    .line 1207
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move v2, v4

    :goto_2
    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    float-to-double v4, p1

    .line 1211
    invoke-virtual {v3, v4, v5}, Lan;->a(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float/2addr p1, v2

    add-float/2addr p1, v0

    if-eqz p2, :cond_7

    .line 1214
    invoke-virtual {v3, v4, v5}, Lan;->b(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p2, v1

    :cond_7
    return p1
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;I)Landroid/view/animation/Interpolator;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v0

    .line 1137
    :pswitch_0
    new-instance p0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    return-object p0

    .line 1135
    :pswitch_1
    new-instance p0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object p0

    :pswitch_2
    return-object v0

    .line 1131
    :pswitch_3
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object p0

    .line 1129
    :pswitch_4
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object p0

    .line 1127
    :pswitch_5
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object p0

    .line 1117
    :pswitch_6
    invoke-static {p2}, Lan;->a(Ljava/lang/String;)Lan;

    move-result-object p0

    .line 1118
    new-instance p1, Lcx$1;

    invoke-direct {p1, p0}, Lcx$1;-><init>(Lan;)V

    return-object p1

    .line 1125
    :pswitch_7
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x2
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

.method private a(Ldc;)V
    .locals 3

    .line 602
    iget-object v0, p0, Lcx;->y:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " KeyPath position \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Ldc;->e:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\" outside of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    iget-object v1, p0, Lcx;->y:Ljava/util/ArrayList;

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private b(Ldc;)V
    .locals 4

    .line 992
    iget-object v0, p0, Lcx;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcx;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcx;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcx;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Ldc;->a(FFFF)V

    return-void
.end method

.method private i()F
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 426
    new-array v1, v1, [F

    const/16 v2, 0x63

    int-to-float v2, v2

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v10, v9, v2

    const-wide/16 v2, 0x0

    const/4 v12, 0x0

    move-wide v15, v2

    move-wide/from16 v17, v15

    move v13, v12

    const/4 v14, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v13, v2, :cond_6

    int-to-float v2, v13

    mul-float/2addr v2, v10

    float-to-double v3, v2

    .line 435
    iget-object v5, v0, Lcx;->l:Ldc;

    iget-object v5, v5, Ldc;->b:Lan;

    const/high16 v6, 0x7fc00000    # Float.NaN

    .line 438
    iget-object v7, v0, Lcx;->y:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v9, v19

    check-cast v9, Ldc;

    .line 439
    iget-object v11, v9, Ldc;->b:Lan;

    if-eqz v11, :cond_1

    .line 440
    iget v11, v9, Ldc;->d:F

    cmpg-float v11, v11, v2

    if-gez v11, :cond_0

    .line 441
    iget-object v5, v9, Ldc;->b:Lan;

    .line 442
    iget v8, v9, Ldc;->d:F

    goto :goto_2

    .line 444
    :cond_0
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 445
    iget v6, v9, Ldc;->d:F

    :cond_1
    :goto_2
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_4

    .line 452
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    :cond_3
    sub-float/2addr v2, v8

    sub-float/2addr v6, v8

    div-float/2addr v2, v6

    float-to-double v2, v2

    .line 456
    invoke-virtual {v5, v2, v3}, Lan;->a(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v2, v8

    float-to-double v2, v2

    move-wide v3, v2

    .line 461
    :cond_4
    iget-object v2, v0, Lcx;->p:[Lam;

    aget-object v2, v2, v12

    iget-object v5, v0, Lcx;->s:[D

    invoke-virtual {v2, v3, v4, v5}, Lam;->a(D[D)V

    .line 462
    iget-object v2, v0, Lcx;->l:Ldc;

    iget-object v5, v0, Lcx;->r:[I

    iget-object v6, v0, Lcx;->s:[D

    const/4 v8, 0x0

    move-object v7, v1

    invoke-virtual/range {v2 .. v8}, Ldc;->a(D[I[D[FI)V

    const/4 v2, 0x1

    if-lez v13, :cond_5

    float-to-double v3, v14

    .line 464
    aget v5, v1, v2

    float-to-double v5, v5

    sub-double v5, v17, v5

    aget v7, v1, v12

    float-to-double v7, v7

    sub-double v7, v15, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    move v14, v3

    .line 466
    :cond_5
    aget v3, v1, v12

    float-to-double v3, v3

    .line 467
    aget v2, v1, v2

    float-to-double v5, v2

    add-int/lit8 v13, v13, 0x1

    move-wide v15, v3

    move-wide/from16 v17, v5

    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_6
    return v14
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 181
    iget-object v0, p0, Lcx;->m:Ldc;

    iget v0, v0, Ldc;->f:F

    return v0
.end method

.method a([F[I)I
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 496
    iget-object v1, p0, Lcx;->p:[Lam;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lam;->a()[D

    move-result-object v1

    if-eqz p2, :cond_0

    .line 498
    iget-object v2, p0, Lcx;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldc;

    add-int/lit8 v5, v3, 0x1

    .line 499
    iget v4, v4, Ldc;->q:I

    aput v4, p2, v3

    move v3, v5

    goto :goto_0

    :cond_0
    move p2, v0

    move v9, p2

    .line 504
    :goto_1
    array-length v2, v1

    if-ge p2, v2, :cond_1

    .line 505
    iget-object v2, p0, Lcx;->p:[Lam;

    aget-object v2, v2, v0

    aget-wide v3, v1, p2

    iget-object v5, p0, Lcx;->s:[D

    invoke-virtual {v2, v3, v4, v5}, Lam;->a(D[D)V

    .line 506
    iget-object v2, p0, Lcx;->l:Ldc;

    aget-wide v3, v1, p2

    iget-object v5, p0, Lcx;->r:[I

    iget-object v6, p0, Lcx;->s:[D

    move-object v7, p1

    move v8, v9

    invoke-virtual/range {v2 .. v8}, Ldc;->a(D[I[D[FI)V

    add-int/lit8 v9, v9, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 509
    :cond_1
    div-int/lit8 v9, v9, 0x2

    return v9

    :cond_2
    return v0
.end method

.method a(I)Ldc;
    .locals 1

    .line 149
    iget-object v0, p0, Lcx;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldc;

    return-object p1
.end method

.method public a(D[F[F)V
    .locals 9

    const/4 v0, 0x4

    .line 255
    new-array v5, v0, [D

    .line 256
    new-array v7, v0, [D

    .line 257
    new-array v0, v0, [I

    .line 258
    iget-object v0, p0, Lcx;->p:[Lam;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v5}, Lam;->a(D[D)V

    .line 259
    iget-object v0, p0, Lcx;->p:[Lam;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v7}, Lam;->b(D[D)V

    const/4 v0, 0x0

    .line 260
    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 261
    iget-object v1, p0, Lcx;->l:Ldc;

    iget-object v4, p0, Lcx;->r:[I

    move-wide v2, p1

    move-object v6, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Ldc;->a(D[I[D[F[D[F)V

    return-void
.end method

.method a(FFF[F)V
    .locals 11

    .line 1395
    iget-object v0, p0, Lcx;->z:[F

    invoke-direct {p0, p1, v0}, Lcx;->a(F[F)F

    move-result p1

    .line 1397
    iget-object v0, p0, Lcx;->p:[Lam;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1398
    aget-object v0, v0, v1

    float-to-double v2, p1

    iget-object p1, p0, Lcx;->t:[D

    invoke-virtual {v0, v2, v3, p1}, Lam;->b(D[D)V

    .line 1399
    iget-object p1, p0, Lcx;->p:[Lam;

    aget-object p1, p1, v1

    iget-object v0, p0, Lcx;->s:[D

    invoke-virtual {p1, v2, v3, v0}, Lam;->a(D[D)V

    .line 1400
    iget-object p1, p0, Lcx;->z:[F

    aget p1, p1, v1

    .line 1401
    :goto_0
    iget-object v9, p0, Lcx;->t:[D

    array-length v0, v9

    if-ge v1, v0, :cond_0

    .line 1402
    aget-wide v4, v9, v1

    float-to-double v6, p1

    mul-double/2addr v4, v6

    aput-wide v4, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1405
    :cond_0
    iget-object p1, p0, Lcx;->q:Lam;

    if-eqz p1, :cond_2

    .line 1406
    iget-object v0, p0, Lcx;->s:[D

    array-length v1, v0

    if-lez v1, :cond_1

    .line 1407
    invoke-virtual {p1, v2, v3, v0}, Lam;->a(D[D)V

    .line 1408
    iget-object p1, p0, Lcx;->q:Lam;

    iget-object v0, p0, Lcx;->t:[D

    invoke-virtual {p1, v2, v3, v0}, Lam;->b(D[D)V

    .line 1409
    iget-object v4, p0, Lcx;->l:Ldc;

    iget-object v8, p0, Lcx;->r:[I

    iget-object v9, p0, Lcx;->t:[D

    iget-object v10, p0, Lcx;->s:[D

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v4 .. v10}, Ldc;->a(FF[F[I[D[D)V

    :cond_1
    return-void

    .line 1413
    :cond_2
    iget-object v4, p0, Lcx;->l:Ldc;

    iget-object v8, p0, Lcx;->r:[I

    iget-object v10, p0, Lcx;->s:[D

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v4 .. v10}, Ldc;->a(FF[F[I[D[D)V

    return-void

    .line 1417
    :cond_3
    iget-object p1, p0, Lcx;->m:Ldc;

    iget p1, p1, Ldc;->f:F

    iget-object v0, p0, Lcx;->l:Ldc;

    iget v0, v0, Ldc;->f:F

    sub-float/2addr p1, v0

    .line 1418
    iget-object v0, p0, Lcx;->m:Ldc;

    iget v0, v0, Ldc;->g:F

    iget-object v2, p0, Lcx;->l:Ldc;

    iget v2, v2, Ldc;->g:F

    sub-float/2addr v0, v2

    .line 1419
    iget-object v2, p0, Lcx;->m:Ldc;

    iget v2, v2, Ldc;->h:F

    iget-object v3, p0, Lcx;->l:Ldc;

    iget v3, v3, Ldc;->h:F

    sub-float/2addr v2, v3

    .line 1420
    iget-object v3, p0, Lcx;->m:Ldc;

    iget v3, v3, Ldc;->i:F

    iget-object v4, p0, Lcx;->l:Ldc;

    iget v4, v4, Ldc;->i:F

    sub-float/2addr v3, v4

    add-float/2addr v2, p1

    add-float/2addr v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p2

    mul-float/2addr p1, v5

    mul-float/2addr v2, p2

    add-float/2addr p1, v2

    .line 1423
    aput p1, p4, v1

    sub-float/2addr v4, p3

    mul-float/2addr v0, v4

    mul-float/2addr v3, p3

    add-float/2addr v0, v3

    const/4 p1, 0x1

    .line 1424
    aput v0, p4, p1

    return-void
.end method

.method a(F[FI)V
    .locals 3

    const/4 v0, 0x0

    .line 550
    invoke-direct {p0, p1, v0}, Lcx;->a(F[F)F

    move-result p1

    .line 551
    iget-object v0, p0, Lcx;->p:[Lam;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    float-to-double v1, p1

    iget-object p1, p0, Lcx;->s:[D

    invoke-virtual {v0, v1, v2, p1}, Lam;->a(D[D)V

    .line 552
    iget-object p1, p0, Lcx;->l:Ldc;

    iget-object v0, p0, Lcx;->r:[I

    iget-object v1, p0, Lcx;->s:[D

    invoke-virtual {p1, v0, v1, p2, p3}, Ldc;->a([I[D[FI)V

    return-void
.end method

.method public a(IIFJ)V
    .locals 16

    move-object/from16 v0, p0

    .line 634
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 635
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 636
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 637
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 638
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 650
    iget v5, v0, Lcx;->F:I

    sget v6, Lco;->a:I

    if-eq v5, v6, :cond_0

    .line 651
    iget-object v5, v0, Lcx;->l:Ldc;

    iget v6, v0, Lcx;->F:I

    iput v6, v5, Ldc;->l:I

    .line 654
    :cond_0
    iget-object v5, v0, Lcx;->n:Lcw;

    iget-object v6, v0, Lcx;->o:Lcw;

    invoke-virtual {v5, v6, v2}, Lcw;->a(Lcw;Ljava/util/HashSet;)V

    .line 660
    iget-object v5, v0, Lcx;->A:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    .line 661
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco;

    .line 662
    instance-of v9, v8, Lcs;

    if-eqz v9, :cond_2

    .line 663
    check-cast v8, Lcs;

    .line 664
    new-instance v9, Ldc;

    iget-object v14, v0, Lcx;->l:Ldc;

    iget-object v15, v0, Lcx;->m:Ldc;

    move-object v10, v9

    move/from16 v11, p1

    move/from16 v12, p2

    move-object v13, v8

    invoke-direct/range {v10 .. v15}, Ldc;-><init>(IILcs;Ldc;Ldc;)V

    invoke-direct {v0, v9}, Lcx;->a(Ldc;)V

    .line 665
    iget v9, v8, Lcs;->q:I

    sget v10, Lco;->a:I

    if-eq v9, v10, :cond_1

    .line 666
    iget v8, v8, Lcs;->q:I

    iput v8, v0, Lcx;->k:I

    goto :goto_0

    .line 668
    :cond_2
    instance-of v9, v8, Lcq;

    if-eqz v9, :cond_3

    .line 669
    invoke-virtual {v8, v3}, Lco;->a(Ljava/util/HashSet;)V

    goto :goto_0

    .line 670
    :cond_3
    instance-of v9, v8, Lcu;

    if-eqz v9, :cond_4

    .line 671
    invoke-virtual {v8, v1}, Lco;->a(Ljava/util/HashSet;)V

    goto :goto_0

    .line 672
    :cond_4
    instance-of v9, v8, Lcv;

    if-eqz v9, :cond_6

    if-nez v7, :cond_5

    .line 674
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 676
    :cond_5
    check-cast v8, Lcv;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 678
    :cond_6
    invoke-virtual {v8, v4}, Lco;->b(Ljava/util/HashMap;)V

    .line 679
    invoke-virtual {v8, v2}, Lco;->a(Ljava/util/HashSet;)V

    goto :goto_0

    :cond_7
    const/4 v7, 0x0

    :cond_8
    const/4 v5, 0x0

    if-eqz v7, :cond_9

    .line 687
    new-array v8, v5, [Lcv;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcv;

    iput-object v7, v0, Lcx;->E:[Lcv;

    .line 715
    :cond_9
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    const-string v8, ","

    const-string v9, "CUSTOM,"

    const/4 v10, 0x1

    if-nez v7, :cond_14

    .line 716
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcx;->C:Ljava/util/HashMap;

    .line 717
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 719
    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 720
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 721
    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v10

    .line 722
    iget-object v14, v0, Lcx;->A:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_a
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lco;

    .line 723
    iget-object v6, v15, Lco;->f:Ljava/util/HashMap;

    if-nez v6, :cond_b

    goto :goto_2

    .line 726
    :cond_b
    iget-object v6, v15, Lco;->f:Ljava/util/HashMap;

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/a;

    if-eqz v6, :cond_a

    .line 728
    iget v15, v15, Lco;->b:I

    invoke-virtual {v12, v15, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_2

    .line 731
    :cond_c
    invoke-static {v11, v12}, Lci;->a(Ljava/lang/String;Landroid/util/SparseArray;)Lci;

    move-result-object v6

    goto :goto_3

    .line 733
    :cond_d
    invoke-static {v11}, Lci;->b(Ljava/lang/String;)Lci;

    move-result-object v6

    :goto_3
    if-nez v6, :cond_e

    goto :goto_1

    .line 738
    :cond_e
    invoke-virtual {v6, v11}, Lci;->a(Ljava/lang/String;)V

    .line 739
    iget-object v12, v0, Lcx;->C:Ljava/util/HashMap;

    invoke-virtual {v12, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 741
    :cond_f
    iget-object v6, v0, Lcx;->A:Ljava/util/ArrayList;

    if-eqz v6, :cond_11

    .line 742
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lco;

    .line 743
    instance-of v11, v7, Lcp;

    if-eqz v11, :cond_10

    .line 744
    iget-object v11, v0, Lcx;->C:Ljava/util/HashMap;

    invoke-virtual {v7, v11}, Lco;->a(Ljava/util/HashMap;)V

    goto :goto_4

    .line 748
    :cond_11
    iget-object v6, v0, Lcx;->n:Lcw;

    iget-object v7, v0, Lcx;->C:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v5}, Lcw;->a(Ljava/util/HashMap;I)V

    .line 749
    iget-object v6, v0, Lcx;->o:Lcw;

    iget-object v7, v0, Lcx;->C:Ljava/util/HashMap;

    const/16 v11, 0x64

    invoke-virtual {v6, v7, v11}, Lcw;->a(Ljava/util/HashMap;I)V

    .line 751
    iget-object v6, v0, Lcx;->C:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_12
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 753
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 754
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_13

    .line 756
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_6

    :cond_13
    move v11, v5

    .line 759
    :goto_6
    iget-object v12, v0, Lcx;->C:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lau;

    if-eqz v7, :cond_12

    .line 761
    invoke-virtual {v7, v11}, Lau;->a(I)V

    goto :goto_5

    .line 767
    :cond_14
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_20

    .line 768
    iget-object v6, v0, Lcx;->B:Ljava/util/HashMap;

    if-nez v6, :cond_15

    .line 769
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lcx;->B:Ljava/util/HashMap;

    .line 771
    :cond_15
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 772
    iget-object v7, v0, Lcx;->B:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    goto :goto_7

    .line 777
    :cond_16
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 778
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 779
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v10

    .line 780
    iget-object v12, v0, Lcx;->A:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_17
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lco;

    .line 781
    iget-object v14, v13, Lco;->f:Ljava/util/HashMap;

    if-nez v14, :cond_18

    goto :goto_8

    .line 784
    :cond_18
    iget-object v14, v13, Lco;->f:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/widget/a;

    if-eqz v14, :cond_17

    .line 786
    iget v13, v13, Lco;->b:I

    invoke-virtual {v7, v13, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_8

    .line 789
    :cond_19
    invoke-static {v6, v7}, Lck;->a(Ljava/lang/String;Landroid/util/SparseArray;)Lck;

    move-result-object v7

    move-wide/from16 v11, p4

    goto :goto_9

    :cond_1a
    move-wide/from16 v11, p4

    .line 791
    invoke-static {v6, v11, v12}, Lck;->a(Ljava/lang/String;J)Lck;

    move-result-object v7

    :goto_9
    if-nez v7, :cond_1b

    goto :goto_7

    .line 797
    :cond_1b
    invoke-virtual {v7, v6}, Lck;->a(Ljava/lang/String;)V

    .line 798
    iget-object v13, v0, Lcx;->B:Ljava/util/HashMap;

    invoke-virtual {v13, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 801
    :cond_1c
    iget-object v1, v0, Lcx;->A:Ljava/util/ArrayList;

    if-eqz v1, :cond_1e

    .line 802
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lco;

    .line 803
    instance-of v7, v6, Lcu;

    if-eqz v7, :cond_1d

    .line 804
    check-cast v6, Lcu;

    iget-object v7, v0, Lcx;->B:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Lcu;->c(Ljava/util/HashMap;)V

    goto :goto_a

    .line 809
    :cond_1e
    iget-object v1, v0, Lcx;->B:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 811
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 812
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_c

    :cond_1f
    move v7, v5

    .line 814
    :goto_c
    iget-object v8, v0, Lcx;->B:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lck;

    invoke-virtual {v6, v7}, Lck;->a(I)V

    goto :goto_b

    .line 820
    :cond_20
    iget-object v1, v0, Lcx;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x2

    add-int/2addr v1, v4

    new-array v1, v1, [Ldc;

    .line 822
    iget-object v6, v0, Lcx;->l:Ldc;

    aput-object v6, v1, v5

    .line 823
    array-length v6, v1

    sub-int/2addr v6, v10

    iget-object v7, v0, Lcx;->m:Ldc;

    aput-object v7, v1, v6

    .line 824
    iget-object v6, v0, Lcx;->y:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_21

    iget v6, v0, Lcx;->k:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_21

    .line 825
    iput v5, v0, Lcx;->k:I

    .line 827
    :cond_21
    iget-object v6, v0, Lcx;->y:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v10

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldc;

    add-int/lit8 v11, v7, 0x1

    .line 828
    aput-object v8, v1, v7

    move v7, v11

    goto :goto_d

    :cond_22
    const/16 v6, 0x12

    .line 833
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 834
    iget-object v8, v0, Lcx;->m:Ldc;

    iget-object v8, v8, Ldc;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_23
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 835
    iget-object v12, v0, Lcx;->l:Ldc;

    iget-object v12, v12, Ldc;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v11}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 836
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_23

    .line 837
    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 841
    :cond_24
    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v0, Lcx;->u:[Ljava/lang/String;

    .line 842
    iget-object v2, v0, Lcx;->u:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcx;->v:[I

    move v2, v5

    .line 843
    :goto_f
    iget-object v7, v0, Lcx;->u:[Ljava/lang/String;

    array-length v8, v7

    if-ge v2, v8, :cond_27

    .line 844
    aget-object v7, v7, v2

    .line 845
    iget-object v8, v0, Lcx;->v:[I

    aput v5, v8, v2

    move v8, v5

    .line 846
    :goto_10
    array-length v9, v1

    if-ge v8, v9, :cond_26

    .line 847
    aget-object v9, v1, v8

    iget-object v9, v9, Ldc;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 848
    aget-object v9, v1, v8

    iget-object v9, v9, Ldc;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/a;

    if-eqz v9, :cond_25

    .line 850
    iget-object v7, v0, Lcx;->v:[I

    aget v8, v7, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/widget/a;->d()I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v7, v2

    goto :goto_11

    :cond_25
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_26
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 856
    :cond_27
    aget-object v2, v1, v5

    iget v2, v2, Ldc;->l:I

    sget v7, Lco;->a:I

    if-eq v2, v7, :cond_28

    move v2, v10

    goto :goto_12

    :cond_28
    move v2, v5

    .line 857
    :goto_12
    iget-object v7, v0, Lcx;->u:[Ljava/lang/String;

    array-length v7, v7

    add-int/2addr v6, v7

    new-array v6, v6, [Z

    move v7, v10

    .line 858
    :goto_13
    array-length v8, v1

    if-ge v7, v8, :cond_29

    .line 859
    aget-object v8, v1, v7

    add-int/lit8 v9, v7, -0x1

    aget-object v9, v1, v9

    iget-object v11, v0, Lcx;->u:[Ljava/lang/String;

    invoke-virtual {v8, v9, v6, v11, v2}, Ldc;->a(Ldc;[Z[Ljava/lang/String;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_29
    move v7, v5

    move v2, v10

    .line 863
    :goto_14
    array-length v8, v6

    if-ge v2, v8, :cond_2b

    .line 864
    aget-boolean v8, v6, v2

    if-eqz v8, :cond_2a

    add-int/lit8 v7, v7, 0x1

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 869
    :cond_2b
    new-array v2, v7, [I

    iput-object v2, v0, Lcx;->r:[I

    .line 870
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 871
    new-array v7, v2, [D

    iput-object v7, v0, Lcx;->s:[D

    .line 872
    new-array v2, v2, [D

    iput-object v2, v0, Lcx;->t:[D

    move v7, v5

    move v2, v10

    .line 875
    :goto_15
    array-length v8, v6

    if-ge v2, v8, :cond_2d

    .line 876
    aget-boolean v8, v6, v2

    if-eqz v8, :cond_2c

    .line 877
    iget-object v8, v0, Lcx;->r:[I

    add-int/lit8 v9, v7, 0x1

    aput v2, v8, v7

    move v7, v9

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 880
    :cond_2d
    array-length v2, v1

    iget-object v6, v0, Lcx;->r:[I

    array-length v6, v6

    filled-new-array {v2, v6}, [I

    move-result-object v2

    const-class v6, D

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 881
    array-length v6, v1

    new-array v6, v6, [D

    move v7, v5

    .line 883
    :goto_16
    array-length v8, v1

    if-ge v7, v8, :cond_2e

    .line 884
    aget-object v8, v1, v7

    aget-object v9, v2, v7

    iget-object v11, v0, Lcx;->r:[I

    invoke-virtual {v8, v9, v11}, Ldc;->a([D[I)V

    .line 885
    aget-object v8, v1, v7

    iget v8, v8, Ldc;->d:F

    float-to-double v8, v8

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_2e
    move v7, v5

    .line 888
    :goto_17
    iget-object v8, v0, Lcx;->r:[I

    array-length v9, v8

    if-ge v7, v9, :cond_30

    .line 889
    aget v8, v8, v7

    .line 890
    sget-object v9, Ldc;->a:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_2f

    .line 891
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ldc;->a:[Ljava/lang/String;

    iget-object v11, v0, Lcx;->r:[I

    aget v11, v11, v7

    aget-object v9, v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    move v8, v5

    .line 892
    :goto_18
    array-length v11, v1

    if-ge v8, v11, :cond_2f

    .line 893
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v2, v8

    aget-wide v12, v9, v7

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    :cond_2f
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 897
    :cond_30
    iget-object v7, v0, Lcx;->u:[Ljava/lang/String;

    array-length v7, v7

    add-int/2addr v7, v10

    new-array v7, v7, [Lam;

    iput-object v7, v0, Lcx;->p:[Lam;

    move v7, v5

    .line 899
    :goto_19
    iget-object v8, v0, Lcx;->u:[Ljava/lang/String;

    array-length v9, v8

    if-ge v7, v9, :cond_34

    .line 903
    aget-object v8, v8, v7

    move v9, v5

    move v12, v9

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 905
    :goto_1a
    array-length v14, v1

    if-ge v9, v14, :cond_33

    .line 906
    aget-object v14, v1, v9

    invoke-virtual {v14, v8}, Ldc;->a(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_32

    if-nez v13, :cond_31

    .line 908
    array-length v11, v1

    new-array v11, v11, [D

    .line 909
    array-length v13, v1

    aget-object v14, v1, v9

    invoke-virtual {v14, v8}, Ldc;->b(Ljava/lang/String;)I

    move-result v14

    filled-new-array {v13, v14}, [I

    move-result-object v13

    const-class v14, D

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[D

    .line 911
    :cond_31
    aget-object v14, v1, v9

    iget v14, v14, Ldc;->d:F

    float-to-double v14, v14

    aput-wide v14, v11, v12

    .line 912
    aget-object v14, v1, v9

    aget-object v15, v13, v12

    invoke-virtual {v14, v8, v15, v5}, Ldc;->a(Ljava/lang/String;[DI)I

    add-int/lit8 v12, v12, 0x1

    :cond_32
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    .line 916
    :cond_33
    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v8

    .line 917
    invoke-static {v13, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    .line 918
    iget-object v11, v0, Lcx;->p:[Lam;

    add-int/lit8 v7, v7, 0x1

    iget v12, v0, Lcx;->k:I

    invoke-static {v12, v8, v9}, Lam;->a(I[D[[D)Lam;

    move-result-object v8

    aput-object v8, v11, v7

    goto :goto_19

    .line 921
    :cond_34
    iget-object v7, v0, Lcx;->p:[Lam;

    iget v8, v0, Lcx;->k:I

    invoke-static {v8, v6, v2}, Lam;->a(I[D[[D)Lam;

    move-result-object v2

    aput-object v2, v7, v5

    .line 923
    aget-object v2, v1, v5

    iget v2, v2, Ldc;->l:I

    sget v6, Lco;->a:I

    if-eq v2, v6, :cond_36

    .line 924
    array-length v2, v1

    .line 925
    new-array v6, v2, [I

    .line 926
    new-array v7, v2, [D

    .line 927
    filled-new-array {v2, v4}, [I

    move-result-object v4

    const-class v8, D

    invoke-static {v8, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    move v8, v5

    :goto_1b
    if-ge v8, v2, :cond_35

    .line 929
    aget-object v9, v1, v8

    iget v9, v9, Ldc;->l:I

    aput v9, v6, v8

    .line 930
    aget-object v9, v1, v8

    iget v9, v9, Ldc;->d:F

    float-to-double v11, v9

    aput-wide v11, v7, v8

    .line 931
    aget-object v9, v4, v8

    aget-object v11, v1, v8

    iget v11, v11, Ldc;->f:F

    float-to-double v11, v11

    aput-wide v11, v9, v5

    .line 932
    aget-object v9, v4, v8

    aget-object v11, v1, v8

    iget v11, v11, Ldc;->g:F

    float-to-double v11, v11

    aput-wide v11, v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    .line 935
    :cond_35
    invoke-static {v6, v7, v4}, Lam;->a([I[D[[D)Lam;

    move-result-object v1

    iput-object v1, v0, Lcx;->q:Lam;

    :cond_36
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 940
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcx;->D:Ljava/util/HashMap;

    .line 941
    iget-object v2, v0, Lcx;->A:Ljava/util/ArrayList;

    if-eqz v2, :cond_3c

    .line 942
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 943
    invoke-static {v3}, Lch;->b(Ljava/lang/String;)Lch;

    move-result-object v4

    if-nez v4, :cond_37

    goto :goto_1c

    .line 948
    :cond_37
    invoke-virtual {v4}, Lch;->a()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 949
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 950
    invoke-direct/range {p0 .. p0}, Lcx;->i()F

    move-result v1

    .line 953
    :cond_38
    invoke-virtual {v4, v3}, Lch;->a(Ljava/lang/String;)V

    .line 954
    iget-object v5, v0, Lcx;->D:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 956
    :cond_39
    iget-object v2, v0, Lcx;->A:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3a
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco;

    .line 957
    instance-of v4, v3, Lcq;

    if-eqz v4, :cond_3a

    .line 958
    check-cast v3, Lcq;

    iget-object v4, v0, Lcx;->D:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Lcq;->c(Ljava/util/HashMap;)V

    goto :goto_1d

    .line 961
    :cond_3b
    iget-object v2, v0, Lcx;->D:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch;

    .line 962
    invoke-virtual {v3, v1}, Lch;->b(F)V

    goto :goto_1e

    :cond_3c
    return-void
.end method

.method a(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p3, v0, :cond_3

    if-eq p3, v1, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 p5, 0x4

    if-eq p3, p5, :cond_0

    goto/16 :goto_0

    .line 1063
    :cond_0
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget p5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, p5

    .line 1064
    iget p5, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p5, v0

    .line 1065
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr p5, v0

    div-int/2addr p5, v1

    sub-int/2addr p4, p5

    iput p4, p2, Landroid/graphics/Rect;->left:I

    .line 1066
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p4

    sub-int/2addr p3, p4

    div-int/2addr p3, v1

    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 1067
    iget p3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    add-int/2addr p3, p4

    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 1068
    iget p3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 1071
    :cond_1
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget p4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, p4

    .line 1072
    iget p4, p1, Landroid/graphics/Rect;->top:I

    iget p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 1073
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p4

    div-int/2addr p4, v1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, v0

    div-int/lit8 v0, p3, 0x2

    sub-int/2addr p4, v0

    iput p4, p2, Landroid/graphics/Rect;->left:I

    .line 1074
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p4

    add-int/2addr p3, p4

    div-int/2addr p3, v1

    sub-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->top:I

    .line 1075
    iget p3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    add-int/2addr p3, p4

    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 1076
    iget p3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1047
    :cond_2
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget p5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, p5

    .line 1048
    iget p5, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p5, v0

    .line 1049
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr p5, v0

    div-int/2addr p5, v1

    sub-int/2addr p4, p5

    iput p4, p2, Landroid/graphics/Rect;->left:I

    .line 1050
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p4

    sub-int/2addr p3, p4

    div-int/2addr p3, v1

    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 1051
    iget p3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    add-int/2addr p3, p4

    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 1052
    iget p3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1055
    :cond_3
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget p4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, p4

    .line 1056
    iget p4, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v0

    .line 1057
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p4, v0

    div-int/2addr p4, v1

    iput p4, p2, Landroid/graphics/Rect;->left:I

    .line 1058
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p4

    add-int/2addr p3, p4

    div-int/2addr p3, v1

    sub-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->top:I

    .line 1059
    iget p3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    add-int/2addr p3, p4

    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 1060
    iget p3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void
.end method

.method a(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/d;II)V
    .locals 7

    .line 1082
    iget v6, p2, Landroidx/constraintlayout/widget/d;->c:I

    if-eqz v6, :cond_0

    .line 1084
    iget-object v2, p0, Lcx;->a:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move v3, v6

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcx;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    .line 1086
    :cond_0
    iget-object p3, p0, Lcx;->l:Ldc;

    const/4 p4, 0x0

    iput p4, p3, Ldc;->d:F

    .line 1087
    iput p4, p3, Ldc;->e:F

    .line 1088
    invoke-direct {p0, p3}, Lcx;->b(Ldc;)V

    .line 1089
    iget-object p3, p0, Lcx;->l:Ldc;

    iget p4, p1, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3, p4, v0, v1, v2}, Ldc;->a(FFFF)V

    .line 1090
    iget p3, p0, Lcx;->c:I

    invoke-virtual {p2, p3}, Landroidx/constraintlayout/widget/d;->a(I)Landroidx/constraintlayout/widget/d$a;

    move-result-object p3

    .line 1091
    iget-object p4, p0, Lcx;->l:Ldc;

    invoke-virtual {p4, p3}, Ldc;->a(Landroidx/constraintlayout/widget/d$a;)V

    .line 1092
    iget-object p4, p3, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget p4, p4, Landroidx/constraintlayout/widget/d$c;->g:F

    iput p4, p0, Lcx;->f:F

    .line 1093
    iget-object p4, p0, Lcx;->n:Lcw;

    iget v0, p0, Lcx;->c:I

    invoke-virtual {p4, p1, p2, v6, v0}, Lcw;->a(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/d;II)V

    .line 1094
    iget-object p1, p3, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget p1, p1, Landroidx/constraintlayout/widget/d$e;->i:I

    iput p1, p0, Lcx;->G:I

    .line 1095
    iget-object p1, p3, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget p1, p1, Landroidx/constraintlayout/widget/d$c;->k:I

    iput p1, p0, Lcx;->I:I

    .line 1096
    iget-object p1, p3, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget p1, p1, Landroidx/constraintlayout/widget/d$c;->j:F

    iput p1, p0, Lcx;->J:F

    .line 1097
    iget-object p1, p0, Lcx;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p3, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget p2, p2, Landroidx/constraintlayout/widget/d$c;->m:I

    iget-object p4, p3, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget-object p4, p4, Landroidx/constraintlayout/widget/d$c;->l:Ljava/lang/String;

    iget-object p3, p3, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget p3, p3, Landroidx/constraintlayout/widget/d$c;->n:I

    invoke-static {p1, p2, p4, p3}, Lcx;->a(Landroid/content/Context;ILjava/lang/String;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcx;->K:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 996
    iput-object p1, p0, Lcx;->b:Landroid/view/View;

    .line 997
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcx;->c:I

    .line 998
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 999
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v0, :cond_0

    .line 1000
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcx;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Lcj;Landroid/view/View;III)V
    .locals 4

    .line 1016
    iget-object v0, p0, Lcx;->l:Ldc;

    const/4 v1, 0x0

    iput v1, v0, Ldc;->d:F

    .line 1017
    iput v1, v0, Ldc;->e:F

    .line 1019
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p3, v1, :cond_1

    if-eq p3, v2, :cond_0

    goto :goto_0

    .line 1022
    :cond_0
    iget p4, p1, Lcj;->b:I

    iget v1, p1, Lcj;->d:I

    add-int/2addr p4, v1

    .line 1023
    iget v1, p1, Lcj;->c:I

    iget v3, p1, Lcj;->e:I

    add-int/2addr v1, v3

    .line 1024
    invoke-virtual {p1}, Lcj;->a()I

    move-result v3

    add-int/2addr v1, v3

    div-int/2addr v1, v2

    sub-int/2addr p5, v1

    iput p5, v0, Landroid/graphics/Rect;->left:I

    .line 1025
    invoke-virtual {p1}, Lcj;->b()I

    move-result p5

    sub-int/2addr p4, p5

    div-int/2addr p4, v2

    iput p4, v0, Landroid/graphics/Rect;->top:I

    .line 1026
    iget p4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcj;->a()I

    move-result p5

    add-int/2addr p4, p5

    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 1027
    iget p4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcj;->b()I

    move-result p5

    add-int/2addr p4, p5

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1030
    :cond_1
    iget p5, p1, Lcj;->b:I

    iget v1, p1, Lcj;->d:I

    add-int/2addr p5, v1

    .line 1031
    iget v1, p1, Lcj;->c:I

    iget v3, p1, Lcj;->e:I

    add-int/2addr v1, v3

    .line 1032
    invoke-virtual {p1}, Lcj;->a()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1033
    invoke-virtual {p1}, Lcj;->b()I

    move-result v1

    add-int/2addr p5, v1

    div-int/2addr p5, v2

    sub-int/2addr p4, p5

    iput p4, v0, Landroid/graphics/Rect;->top:I

    .line 1034
    iget p4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcj;->a()I

    move-result p5

    add-int/2addr p4, p5

    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 1035
    iget p4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcj;->b()I

    move-result p5

    add-int/2addr p4, p5

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1038
    :goto_0
    iget-object p4, p0, Lcx;->l:Ldc;

    iget p5, v0, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p4, p5, v1, v2, v3}, Ldc;->a(FFFF)V

    .line 1039
    iget-object p4, p0, Lcx;->n:Lcw;

    iget p1, p1, Lcj;->a:F

    invoke-virtual {p4, v0, p2, p3, p1}, Lcw;->a(Landroid/graphics/Rect;Landroid/view/View;IF)V

    return-void
.end method

.method public a(Lco;)V
    .locals 1

    .line 619
    iget-object v0, p0, Lcx;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcx;)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcx;->l:Ldc;

    iget-object v1, p1, Lcx;->l:Ldc;

    invoke-virtual {v0, p1, v1}, Ldc;->a(Lcx;Ldc;)V

    .line 243
    iget-object v0, p0, Lcx;->m:Ldc;

    iget-object v1, p1, Lcx;->m:Ldc;

    invoke-virtual {v0, p1, v1}, Ldc;->a(Lcx;Ldc;)V

    return-void
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lco;",
            ">;)V"
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcx;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method a(Z)V
    .locals 4

    .line 1221
    iget-object v0, p0, Lcx;->b:Landroid/view/View;

    invoke-static {v0}, Lcl;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "button"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1222
    iget-object v0, p0, Lcx;->E:[Lcv;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1223
    :goto_0
    iget-object v1, p0, Lcx;->E:[Lcv;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1224
    aget-object v1, v1, v0

    if-eqz p1, :cond_0

    const/high16 v2, -0x3d380000    # -100.0f

    goto :goto_1

    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    :goto_1
    iget-object v3, p0, Lcx;->b:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lcv;->a(FLandroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method a([FI)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v8, p2

    add-int/lit8 v1, v8, -0x1

    int-to-float v1, v1

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v10, v9, v1

    .line 282
    iget-object v1, v0, Lcx;->C:Ljava/util/HashMap;

    const-string v2, "translationX"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v11, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lau;

    move-object v11, v1

    .line 283
    :goto_0
    iget-object v1, v0, Lcx;->C:Ljava/util/HashMap;

    const-string v4, "translationY"

    if-nez v1, :cond_1

    move-object v12, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lau;

    move-object v12, v1

    .line 284
    :goto_1
    iget-object v1, v0, Lcx;->D:Ljava/util/HashMap;

    if-nez v1, :cond_2

    move-object v13, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch;

    move-object v13, v1

    .line 285
    :goto_2
    iget-object v1, v0, Lcx;->D:Ljava/util/HashMap;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lch;

    :goto_3
    move-object v14, v3

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v8, :cond_10

    int-to-float v1, v7

    mul-float/2addr v1, v10

    .line 289
    iget v2, v0, Lcx;->h:F

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_5

    .line 290
    iget v2, v0, Lcx;->g:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    const/4 v1, 0x0

    .line 293
    :cond_4
    iget v2, v0, Lcx;->g:F

    cmpl-float v4, v1, v2

    if-lez v4, :cond_5

    float-to-double v4, v1

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v16

    if-gez v4, :cond_5

    sub-float/2addr v1, v2

    .line 295
    iget v2, v0, Lcx;->h:F

    mul-float/2addr v1, v2

    .line 296
    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :cond_5
    move v6, v1

    float-to-double v1, v6

    .line 301
    iget-object v4, v0, Lcx;->l:Ldc;

    iget-object v4, v4, Ldc;->b:Lan;

    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 304
    iget-object v3, v0, Lcx;->y:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v16, 0x0

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Ldc;

    .line 305
    iget-object v15, v9, Ldc;->b:Lan;

    if-eqz v15, :cond_7

    .line 306
    iget v15, v9, Ldc;->d:F

    cmpg-float v15, v15, v6

    if-gez v15, :cond_6

    .line 307
    iget-object v4, v9, Ldc;->b:Lan;

    .line 308
    iget v9, v9, Ldc;->d:F

    move/from16 v16, v9

    goto :goto_6

    .line 310
    :cond_6
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 311
    iget v5, v9, Ldc;->d:F

    :cond_7
    :goto_6
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_a

    .line 318
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_9

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_9
    sub-float v1, v6, v16

    sub-float v5, v5, v16

    div-float/2addr v1, v5

    float-to-double v1, v1

    .line 322
    invoke-virtual {v4, v1, v2}, Lan;->a(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v5

    add-float v1, v1, v16

    float-to-double v1, v1

    :cond_a
    move-wide v2, v1

    .line 327
    iget-object v1, v0, Lcx;->p:[Lam;

    const/4 v9, 0x0

    aget-object v1, v1, v9

    iget-object v4, v0, Lcx;->s:[D

    invoke-virtual {v1, v2, v3, v4}, Lam;->a(D[D)V

    .line 328
    iget-object v1, v0, Lcx;->q:Lam;

    if-eqz v1, :cond_b

    .line 329
    iget-object v4, v0, Lcx;->s:[D

    array-length v5, v4

    if-lez v5, :cond_b

    .line 330
    invoke-virtual {v1, v2, v3, v4}, Lam;->a(D[D)V

    .line 333
    :cond_b
    iget-object v1, v0, Lcx;->l:Ldc;

    iget-object v4, v0, Lcx;->r:[I

    iget-object v5, v0, Lcx;->s:[D

    mul-int/lit8 v15, v7, 0x2

    move v9, v6

    move-object/from16 v6, p1

    move/from16 v16, v7

    move v7, v15

    invoke-virtual/range {v1 .. v7}, Ldc;->a(D[I[D[FI)V

    if-eqz v13, :cond_c

    .line 336
    aget v1, p1, v15

    invoke-virtual {v13, v9}, Lch;->a(F)F

    move-result v2

    add-float/2addr v1, v2

    aput v1, p1, v15

    goto :goto_7

    :cond_c
    if-eqz v11, :cond_d

    .line 338
    aget v1, p1, v15

    invoke-virtual {v11, v9}, Lau;->a(F)F

    move-result v2

    add-float/2addr v1, v2

    aput v1, p1, v15

    :cond_d
    :goto_7
    if-eqz v14, :cond_e

    add-int/lit8 v15, v15, 0x1

    .line 341
    aget v1, p1, v15

    invoke-virtual {v14, v9}, Lch;->a(F)F

    move-result v2

    add-float/2addr v1, v2

    aput v1, p1, v15

    goto :goto_8

    :cond_e
    if-eqz v12, :cond_f

    add-int/lit8 v15, v15, 0x1

    .line 343
    aget v1, p1, v15

    invoke-virtual {v12, v9}, Lau;->a(F)F

    move-result v2

    add-float/2addr v1, v2

    aput v1, p1, v15

    :cond_f
    :goto_8
    add-int/lit8 v7, v16, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_4

    :cond_10
    return-void
.end method

.method a(Landroid/view/View;FJLao;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const/4 v1, 0x0

    move/from16 v2, p2

    .line 1240
    invoke-direct {v0, v2, v1}, Lcx;->a(F[F)F

    move-result v2

    .line 1242
    iget v3, v0, Lcx;->I:I

    sget v4, Lco;->a:I

    const/high16 v13, 0x3f800000    # 1.0f

    if-eq v3, v4, :cond_3

    .line 1244
    iget v3, v0, Lcx;->I:I

    int-to-float v3, v3

    div-float v3, v13, v3

    div-float v4, v2, v3

    float-to-double v4, v4

    .line 1245
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v3

    rem-float/2addr v2, v3

    div-float/2addr v2, v3

    .line 1248
    iget v5, v0, Lcx;->J:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1249
    iget v5, v0, Lcx;->J:F

    add-float/2addr v2, v5

    rem-float/2addr v2, v13

    .line 1251
    :cond_0
    iget-object v5, v0, Lcx;->K:Landroid/view/animation/Interpolator;

    if-eqz v5, :cond_1

    .line 1252
    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_0

    :cond_1
    float-to-double v5, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v5, v7

    if-lez v2, :cond_2

    move v2, v13

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    :cond_3
    move v14, v2

    .line 1259
    iget-object v2, v0, Lcx;->C:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    .line 1260
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lci;

    .line 1261
    invoke-virtual {v3, v11, v14}, Lci;->a(Landroid/view/View;F)V

    goto :goto_1

    .line 1265
    :cond_4
    iget-object v2, v0, Lcx;->B:Ljava/util/HashMap;

    const/4 v15, 0x0

    if-eqz v2, :cond_7

    .line 1266
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v9, v1

    move v8, v15

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lck;

    .line 1267
    instance-of v2, v1, Lck$d;

    if-eqz v2, :cond_5

    .line 1268
    move-object v9, v1

    check-cast v9, Lck$d;

    goto :goto_2

    :cond_5
    move-object/from16 v2, p1

    move v3, v14

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    .line 1271
    invoke-virtual/range {v1 .. v6}, Lck;->a(Landroid/view/View;FJLao;)Z

    move-result v1

    or-int/2addr v8, v1

    goto :goto_2

    :cond_6
    move/from16 v16, v8

    goto :goto_3

    :cond_7
    move-object v9, v1

    move/from16 v16, v15

    .line 1275
    :goto_3
    iget-object v1, v0, Lcx;->p:[Lam;

    const/4 v10, 0x1

    if-eqz v1, :cond_13

    .line 1276
    aget-object v1, v1, v15

    float-to-double v7, v14

    iget-object v2, v0, Lcx;->s:[D

    invoke-virtual {v1, v7, v8, v2}, Lam;->a(D[D)V

    .line 1277
    iget-object v1, v0, Lcx;->p:[Lam;

    aget-object v1, v1, v15

    iget-object v2, v0, Lcx;->t:[D

    invoke-virtual {v1, v7, v8, v2}, Lam;->b(D[D)V

    .line 1278
    iget-object v1, v0, Lcx;->q:Lam;

    if-eqz v1, :cond_8

    .line 1279
    iget-object v2, v0, Lcx;->s:[D

    array-length v3, v2

    if-lez v3, :cond_8

    .line 1280
    invoke-virtual {v1, v7, v8, v2}, Lam;->a(D[D)V

    .line 1281
    iget-object v1, v0, Lcx;->q:Lam;

    iget-object v2, v0, Lcx;->t:[D

    invoke-virtual {v1, v7, v8, v2}, Lam;->b(D[D)V

    .line 1285
    :cond_8
    iget-boolean v1, v0, Lcx;->L:Z

    if-nez v1, :cond_9

    .line 1286
    iget-object v1, v0, Lcx;->l:Ldc;

    iget-object v4, v0, Lcx;->r:[I

    iget-object v5, v0, Lcx;->s:[D

    iget-object v6, v0, Lcx;->t:[D

    const/16 v17, 0x0

    iget-boolean v3, v0, Lcx;->d:Z

    move v2, v14

    move/from16 v18, v3

    move-object/from16 v3, p1

    move-wide v12, v7

    move-object/from16 v7, v17

    move/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Ldc;->a(FLandroid/view/View;[I[D[D[DZ)V

    .line 1287
    iput-boolean v15, v0, Lcx;->d:Z

    goto :goto_4

    :cond_9
    move-wide v12, v7

    .line 1289
    :goto_4
    iget v1, v0, Lcx;->G:I

    sget v2, Lco;->a:I

    if-eq v1, v2, :cond_b

    .line 1290
    iget-object v1, v0, Lcx;->H:Landroid/view/View;

    if-nez v1, :cond_a

    .line 1291
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1292
    iget v2, v0, Lcx;->G:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcx;->H:Landroid/view/View;

    .line 1294
    :cond_a
    iget-object v1, v0, Lcx;->H:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 1295
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, v0, Lcx;->H:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 1296
    iget-object v3, v0, Lcx;->H:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, v0, Lcx;->H:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 1297
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_b

    .line 1298
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    .line 1299
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 1300
    invoke-virtual {v11, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1301
    invoke-virtual {v11, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1306
    :cond_b
    iget-object v1, v0, Lcx;->C:Ljava/util/HashMap;

    if-eqz v1, :cond_d

    .line 1307
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lau;

    .line 1308
    instance-of v2, v1, Lci$d;

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcx;->t:[D

    array-length v3, v2

    if-le v3, v10, :cond_c

    .line 1309
    check-cast v1, Lci$d;

    aget-wide v4, v2, v15

    aget-wide v6, v2, v10

    move-object/from16 v2, p1

    move v3, v14

    invoke-virtual/range {v1 .. v7}, Lci$d;->a(Landroid/view/View;FDD)V

    goto :goto_5

    :cond_d
    if-eqz v9, :cond_e

    .line 1315
    iget-object v1, v0, Lcx;->t:[D

    aget-wide v7, v1, v15

    aget-wide v17, v1, v10

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move v4, v14

    move-wide/from16 v5, p3

    move/from16 v19, v10

    move-wide/from16 v9, v17

    invoke-virtual/range {v1 .. v10}, Lck$d;->a(Landroid/view/View;Lao;FJDD)Z

    move-result v1

    or-int v1, v16, v1

    move/from16 v16, v1

    goto :goto_6

    :cond_e
    move/from16 v19, v10

    :goto_6
    move/from16 v1, v19

    .line 1319
    :goto_7
    iget-object v2, v0, Lcx;->p:[Lam;

    array-length v3, v2

    if-ge v1, v3, :cond_f

    .line 1320
    aget-object v2, v2, v1

    .line 1321
    iget-object v3, v0, Lcx;->x:[F

    invoke-virtual {v2, v12, v13, v3}, Lam;->a(D[F)V

    .line 1322
    iget-object v2, v0, Lcx;->l:Ldc;

    iget-object v2, v2, Ldc;->p:Ljava/util/LinkedHashMap;

    iget-object v3, v0, Lcx;->u:[Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/a;

    iget-object v3, v0, Lcx;->x:[F

    invoke-static {v2, v11, v3}, Lcf;->a(Landroidx/constraintlayout/widget/a;Landroid/view/View;[F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1325
    :cond_f
    iget-object v1, v0, Lcx;->n:Lcw;

    iget v1, v1, Lcw;->a:I

    if-nez v1, :cond_12

    const/4 v1, 0x0

    cmpg-float v1, v14, v1

    if-gtz v1, :cond_10

    .line 1327
    iget-object v1, v0, Lcx;->n:Lcw;

    iget v1, v1, Lcw;->b:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_10
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v14, v1

    if-ltz v1, :cond_11

    .line 1329
    iget-object v1, v0, Lcx;->o:Lcw;

    iget v1, v1, Lcw;->b:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 1330
    :cond_11
    iget-object v1, v0, Lcx;->o:Lcw;

    iget v1, v1, Lcw;->b:I

    iget-object v2, v0, Lcx;->n:Lcw;

    iget v2, v2, Lcw;->b:I

    if-eq v1, v2, :cond_12

    .line 1331
    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1335
    :cond_12
    :goto_8
    iget-object v1, v0, Lcx;->E:[Lcv;

    if-eqz v1, :cond_16

    move v1, v15

    .line 1336
    :goto_9
    iget-object v2, v0, Lcx;->E:[Lcv;

    array-length v3, v2

    if-ge v1, v3, :cond_16

    .line 1337
    aget-object v2, v2, v1

    invoke-virtual {v2, v14, v11}, Lcv;->a(FLandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    move/from16 v19, v10

    .line 1343
    iget-object v1, v0, Lcx;->l:Ldc;

    iget v1, v1, Ldc;->f:F

    iget-object v2, v0, Lcx;->m:Ldc;

    iget v2, v2, Ldc;->f:F

    iget-object v3, v0, Lcx;->l:Ldc;

    iget v3, v3, Ldc;->f:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v14

    add-float/2addr v1, v2

    .line 1344
    iget-object v2, v0, Lcx;->l:Ldc;

    iget v2, v2, Ldc;->g:F

    iget-object v3, v0, Lcx;->m:Ldc;

    iget v3, v3, Ldc;->g:F

    iget-object v4, v0, Lcx;->l:Ldc;

    iget v4, v4, Ldc;->g:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v14

    add-float/2addr v2, v3

    .line 1345
    iget-object v3, v0, Lcx;->l:Ldc;

    iget v3, v3, Ldc;->h:F

    iget-object v4, v0, Lcx;->m:Ldc;

    iget v4, v4, Ldc;->h:F

    iget-object v5, v0, Lcx;->l:Ldc;

    iget v5, v5, Ldc;->h:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v14

    add-float/2addr v3, v4

    .line 1346
    iget-object v4, v0, Lcx;->l:Ldc;

    iget v4, v4, Ldc;->i:F

    iget-object v5, v0, Lcx;->m:Ldc;

    iget v5, v5, Ldc;->i:F

    iget-object v6, v0, Lcx;->l:Ldc;

    iget v6, v6, Ldc;->i:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v14

    add-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v1, v5

    float-to-int v6, v1

    add-float/2addr v2, v5

    float-to-int v5, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    sub-int v3, v1, v6

    sub-int v4, v2, v5

    .line 1362
    iget-object v7, v0, Lcx;->m:Ldc;

    iget v7, v7, Ldc;->h:F

    iget-object v8, v0, Lcx;->l:Ldc;

    iget v8, v8, Ldc;->h:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_14

    iget-object v7, v0, Lcx;->m:Ldc;

    iget v7, v7, Ldc;->i:F

    iget-object v8, v0, Lcx;->l:Ldc;

    iget v8, v8, Ldc;->i:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_14

    iget-boolean v7, v0, Lcx;->d:Z

    if-eqz v7, :cond_15

    :cond_14
    const/high16 v7, 0x40000000    # 2.0f

    .line 1364
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1365
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1366
    invoke-virtual {v11, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1367
    iput-boolean v15, v0, Lcx;->d:Z

    .line 1369
    :cond_15
    invoke-virtual {v11, v6, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1372
    :cond_16
    iget-object v1, v0, Lcx;->D:Ljava/util/HashMap;

    if-eqz v1, :cond_18

    .line 1373
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch;

    .line 1374
    instance-of v2, v1, Lch$d;

    if-eqz v2, :cond_17

    .line 1375
    check-cast v1, Lch$d;

    iget-object v2, v0, Lcx;->t:[D

    aget-wide v4, v2, v15

    aget-wide v6, v2, v19

    move-object/from16 v2, p1

    move v3, v14

    invoke-virtual/range {v1 .. v7}, Lch$d;->a(Landroid/view/View;FDD)V

    goto :goto_a

    .line 1378
    :cond_17
    invoke-virtual {v1, v11, v14}, Lch;->a(Landroid/view/View;F)V

    goto :goto_a

    :cond_18
    return v16
.end method

.method public b()F
    .locals 1

    .line 191
    iget-object v0, p0, Lcx;->m:Ldc;

    iget v0, v0, Ldc;->g:F

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 626
    iput p1, p0, Lcx;->F:I

    return-void
.end method

.method b(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/d;II)V
    .locals 7

    .line 1143
    iget v6, p2, Landroidx/constraintlayout/widget/d;->c:I

    if-eqz v6, :cond_0

    .line 1145
    iget-object v2, p0, Lcx;->a:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move v3, v6

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcx;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    .line 1146
    iget-object p1, p0, Lcx;->a:Landroid/graphics/Rect;

    .line 1148
    :cond_0
    iget-object p3, p0, Lcx;->m:Ldc;

    const/high16 p4, 0x3f800000    # 1.0f

    iput p4, p3, Ldc;->d:F

    .line 1149
    iput p4, p3, Ldc;->e:F

    .line 1150
    invoke-direct {p0, p3}, Lcx;->b(Ldc;)V

    .line 1151
    iget-object p3, p0, Lcx;->m:Ldc;

    iget p4, p1, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3, p4, v0, v1, v2}, Ldc;->a(FFFF)V

    .line 1152
    iget-object p3, p0, Lcx;->m:Ldc;

    iget p4, p0, Lcx;->c:I

    invoke-virtual {p2, p4}, Landroidx/constraintlayout/widget/d;->a(I)Landroidx/constraintlayout/widget/d$a;

    move-result-object p4

    invoke-virtual {p3, p4}, Ldc;->a(Landroidx/constraintlayout/widget/d$a;)V

    .line 1153
    iget-object p3, p0, Lcx;->o:Lcw;

    iget p4, p0, Lcx;->c:I

    invoke-virtual {p3, p1, p2, v6, p4}, Lcw;->a(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/d;II)V

    return-void
.end method

.method b(Landroid/view/View;)V
    .locals 5

    .line 1009
    iget-object v0, p0, Lcx;->l:Ldc;

    const/4 v1, 0x0

    iput v1, v0, Ldc;->d:F

    .line 1010
    iput v1, v0, Ldc;->e:F

    .line 1011
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Ldc;->a(FFFF)V

    .line 1012
    iget-object v0, p0, Lcx;->n:Lcw;

    invoke-virtual {v0, p1}, Lcw;->b(Landroid/view/View;)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 238
    iget-object v0, p0, Lcx;->l:Ldc;

    iget v0, v0, Ldc;->m:I

    return v0
.end method

.method c(Landroid/view/View;)V
    .locals 5

    .line 1157
    iget-object v0, p0, Lcx;->l:Ldc;

    const/4 v1, 0x0

    iput v1, v0, Ldc;->d:F

    .line 1158
    iput v1, v0, Ldc;->e:F

    const/4 v1, 0x1

    .line 1159
    iput-boolean v1, p0, Lcx;->L:Z

    .line 1160
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Ldc;->a(FFFF)V

    .line 1161
    iget-object v0, p0, Lcx;->m:Ldc;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Ldc;->a(FFFF)V

    .line 1162
    iget-object v0, p0, Lcx;->n:Lcw;

    invoke-virtual {v0, p1}, Lcw;->b(Landroid/view/View;)V

    .line 1163
    iget-object v0, p0, Lcx;->o:Lcw;

    invoke-virtual {v0, p1}, Lcw;->b(Landroid/view/View;)V

    return-void
.end method

.method public d()F
    .locals 1

    .line 247
    iget v0, p0, Lcx;->i:F

    return v0
.end method

.method public e()F
    .locals 1

    .line 251
    iget v0, p0, Lcx;->j:F

    return v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcx;->d:Z

    return-void
.end method

.method public g()Landroid/view/View;
    .locals 1

    .line 1005
    iget-object v0, p0, Lcx;->b:Landroid/view/View;

    return-object v0
.end method

.method public h()I
    .locals 3

    .line 1508
    iget-object v0, p0, Lcx;->l:Ldc;

    iget v0, v0, Ldc;->c:I

    .line 1509
    iget-object v1, p0, Lcx;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldc;

    .line 1510
    iget v2, v2, Ldc;->c:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1512
    :cond_0
    iget-object v1, p0, Lcx;->m:Ldc;

    iget v1, v1, Ldc;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " start: x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcx;->l:Ldc;

    iget v1, v1, Ldc;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcx;->l:Ldc;

    iget v2, v2, Ldc;->g:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " end: x: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcx;->m:Ldc;

    iget v2, v2, Ldc;->f:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcx;->m:Ldc;

    iget v1, v1, Ldc;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
