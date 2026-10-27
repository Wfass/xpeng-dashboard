.class public Ljr;
.super Ljava/lang/Object;
.source "EllipseContent.java"

# interfaces
.implements Ljw;
.implements Ljy;
.implements Lkh$a;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/airbnb/lottie/f;

.field private final d:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lly;

.field private final g:Ljn;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lmq;Lly;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ljr;->a:Landroid/graphics/Path;

    .line 32
    new-instance v0, Ljn;

    invoke-direct {v0}, Ljn;-><init>()V

    iput-object v0, p0, Ljr;->g:Ljn;

    .line 36
    invoke-virtual {p3}, Lly;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljr;->b:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Ljr;->c:Lcom/airbnb/lottie/f;

    .line 38
    invoke-virtual {p3}, Lly;->c()Llo;

    move-result-object p1

    invoke-virtual {p1}, Llo;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljr;->d:Lkh;

    .line 39
    invoke-virtual {p3}, Lly;->b()Llv;

    move-result-object p1

    invoke-interface {p1}, Llv;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljr;->e:Lkh;

    .line 40
    iput-object p3, p0, Ljr;->f:Lly;

    .line 42
    iget-object p1, p0, Ljr;->d:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 43
    iget-object p1, p0, Ljr;->e:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 45
    iget-object p1, p0, Ljr;->d:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 46
    iget-object p1, p0, Ljr;->e:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Ljr;->h:Z

    .line 55
    iget-object v0, p0, Ljr;->c:Lcom/airbnb/lottie/f;

    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Ljr;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lpe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lpe<",
            "TT;>;)V"
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/airbnb/lottie/k;->k:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    .line 128
    iget-object p1, p0, Ljr;->d:Lkh;

    invoke-virtual {p1, p2}, Lkh;->a(Lpe;)V

    goto :goto_0

    .line 129
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/k;->n:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 130
    iget-object p1, p0, Ljr;->e:Lkh;

    invoke-virtual {p1, p2}, Lkh;->a(Lpe;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljo;",
            ">;",
            "Ljava/util/List<",
            "Ljo;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 59
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 60
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljo;

    .line 61
    instance-of v1, v0, Lkg;

    if-eqz v1, :cond_0

    check-cast v0, Lkg;

    invoke-virtual {v0}, Lkg;->b()Lmp$a;

    move-result-object v1

    sget-object v2, Lmp$a;->SIMULTANEOUSLY:Lmp$a;

    if-ne v1, v2, :cond_0

    .line 63
    iget-object v1, p0, Ljr;->g:Ljn;

    invoke-virtual {v1, v0}, Ljn;->a(Lkg;)V

    .line 64
    invoke-virtual {v0, p0}, Lkg;->a(Lkh$a;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lle;ILjava/util/List;Lle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lle;",
            "I",
            "Ljava/util/List<",
            "Lle;",
            ">;",
            "Lle;",
            ")V"
        }
    .end annotation

    .line 121
    invoke-static {p1, p2, p3, p4, p0}, Lpa;->a(Lle;ILjava/util/List;Lle;Ljw;)V

    return-void
.end method

.method public d()Landroid/graphics/Path;
    .locals 22

    move-object/from16 v0, p0

    .line 74
    iget-boolean v1, v0, Ljr;->h:Z

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, v0, Ljr;->a:Landroid/graphics/Path;

    return-object v1

    .line 78
    :cond_0
    iget-object v1, v0, Ljr;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 80
    iget-object v1, v0, Ljr;->f:Lly;

    invoke-virtual {v1}, Lly;->e()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 81
    iput-boolean v2, v0, Ljr;->h:Z

    .line 82
    iget-object v1, v0, Ljr;->a:Landroid/graphics/Path;

    return-object v1

    .line 85
    :cond_1
    iget-object v1, v0, Ljr;->d:Lkh;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 86
    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 87
    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v4

    const v4, 0x3f0d6239    # 0.55228f

    mul-float v12, v3, v4

    mul-float/2addr v4, v1

    .line 93
    iget-object v5, v0, Ljr;->a:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 94
    iget-object v5, v0, Ljr;->f:Lly;

    invoke-virtual {v5}, Lly;->d()Z

    move-result v5

    const/4 v13, 0x0

    if-eqz v5, :cond_2

    .line 95
    iget-object v5, v0, Ljr;->a:Landroid/graphics/Path;

    neg-float v11, v1

    invoke-virtual {v5, v13, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 96
    iget-object v14, v0, Ljr;->a:Landroid/graphics/Path;

    sub-float v8, v13, v12

    neg-float v6, v3

    sub-float v21, v13, v4

    const/16 v20, 0x0

    move v15, v8

    move/from16 v16, v11

    move/from16 v17, v6

    move/from16 v18, v21

    move/from16 v19, v6

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 97
    iget-object v5, v0, Ljr;->a:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v7, v4

    move v9, v1

    move v14, v11

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 98
    iget-object v5, v0, Ljr;->a:Landroid/graphics/Path;

    add-float/2addr v12, v13

    const/4 v11, 0x0

    move v6, v12

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 99
    iget-object v5, v0, Ljr;->a:Landroid/graphics/Path;

    const/4 v10, 0x0

    move v6, v3

    move/from16 v7, v21

    move v8, v12

    move v9, v14

    move v11, v14

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v5, v0, Ljr;->a:Landroid/graphics/Path;

    neg-float v15, v1

    invoke-virtual {v5, v13, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 102
    iget-object v5, v0, Ljr;->a:Landroid/graphics/Path;

    add-float v14, v12, v13

    sub-float v16, v13, v4

    const/4 v11, 0x0

    move v6, v14

    move v7, v15

    move v8, v3

    move/from16 v9, v16

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 103
    iget-object v5, v0, Ljr;->a:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v6, v3

    move v7, v4

    move v8, v14

    move v9, v1

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 104
    iget-object v5, v0, Ljr;->a:Landroid/graphics/Path;

    sub-float v17, v13, v12

    neg-float v3, v3

    const/4 v11, 0x0

    move/from16 v6, v17

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 105
    iget-object v14, v0, Ljr;->a:Landroid/graphics/Path;

    const/16 v19, 0x0

    move v1, v15

    move v15, v3

    move/from16 v18, v1

    move/from16 v20, v1

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 108
    :goto_0
    iget-object v1, v0, Ljr;->e:Lkh;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 109
    iget-object v3, v0, Ljr;->a:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 111
    iget-object v1, v0, Ljr;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 113
    iget-object v1, v0, Ljr;->g:Ljn;

    iget-object v3, v0, Ljr;->a:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Ljn;->a(Landroid/graphics/Path;)V

    .line 115
    iput-boolean v2, v0, Ljr;->h:Z

    .line 116
    iget-object v1, v0, Ljr;->a:Landroid/graphics/Path;

    return-object v1
.end method

.method public onValueChanged()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljr;->b()V

    return-void
.end method
