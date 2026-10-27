.class public Lju;
.super Ljm;
.source "GradientStrokeContent.java"


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Landroidx/collection/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/c<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroidx/collection/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/c<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/graphics/RectF;

.field private final i:Lmd;

.field private final j:I

.field private final k:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Lma;",
            "Lma;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lkx;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lmq;Lmc;)V
    .locals 11

    .line 45
    invoke-virtual {p3}, Lmc;->h()Lmo$a;

    move-result-object v0

    invoke-virtual {v0}, Lmo$a;->a()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 46
    invoke-virtual {p3}, Lmc;->i()Lmo$b;

    move-result-object v0

    invoke-virtual {v0}, Lmo$b;->a()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lmc;->l()F

    move-result v6

    invoke-virtual {p3}, Lmc;->d()Llm;

    move-result-object v7

    .line 47
    invoke-virtual {p3}, Lmc;->g()Llk;

    move-result-object v8

    invoke-virtual {p3}, Lmc;->j()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lmc;->k()Llk;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 45
    invoke-direct/range {v1 .. v10}, Ljm;-><init>(Lcom/airbnb/lottie/f;Lmq;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLlm;Llk;Ljava/util/List;Llk;)V

    .line 32
    new-instance v0, Landroidx/collection/c;

    invoke-direct {v0}, Landroidx/collection/c;-><init>()V

    iput-object v0, p0, Lju;->f:Landroidx/collection/c;

    .line 33
    new-instance v0, Landroidx/collection/c;

    invoke-direct {v0}, Landroidx/collection/c;-><init>()V

    iput-object v0, p0, Lju;->g:Landroidx/collection/c;

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lju;->h:Landroid/graphics/RectF;

    .line 49
    invoke-virtual {p3}, Lmc;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lju;->d:Ljava/lang/String;

    .line 50
    invoke-virtual {p3}, Lmc;->b()Lmd;

    move-result-object v0

    iput-object v0, p0, Lju;->i:Lmd;

    .line 51
    invoke-virtual {p3}, Lmc;->m()Z

    move-result v0

    iput-boolean v0, p0, Lju;->e:Z

    .line 52
    invoke-virtual {p1}, Lcom/airbnb/lottie/f;->getComposition()Lcom/airbnb/lottie/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/d;->e()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lju;->j:I

    .line 54
    invoke-virtual {p3}, Lmc;->c()Lll;

    move-result-object p1

    invoke-virtual {p1}, Lll;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Lju;->k:Lkh;

    .line 55
    iget-object p1, p0, Lju;->k:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 56
    iget-object p1, p0, Lju;->k:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 58
    invoke-virtual {p3}, Lmc;->e()Llo;

    move-result-object p1

    invoke-virtual {p1}, Llo;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Lju;->l:Lkh;

    .line 59
    iget-object p1, p0, Lju;->l:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 60
    iget-object p1, p0, Lju;->l:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 62
    invoke-virtual {p3}, Lmc;->f()Llo;

    move-result-object p1

    invoke-virtual {p1}, Llo;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Lju;->m:Lkh;

    .line 63
    iget-object p1, p0, Lju;->m:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 64
    iget-object p1, p0, Lju;->m:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    return-void
.end method

.method private a([I)[I
    .locals 4

    .line 148
    iget-object v0, p0, Lju;->n:Lkx;

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Lkx;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 150
    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 151
    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_1

    .line 152
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    :cond_0
    array-length p1, v0

    new-array p1, p1, [I

    .line 156
    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_1

    .line 157
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private b()Landroid/graphics/LinearGradient;
    .locals 14

    .line 90
    invoke-direct {p0}, Lju;->d()I

    move-result v0

    .line 91
    iget-object v1, p0, Lju;->f:Landroidx/collection/c;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/c;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 95
    :cond_0
    iget-object v0, p0, Lju;->l:Lkh;

    invoke-virtual {v0}, Lkh;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 96
    iget-object v1, p0, Lju;->m:Lkh;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 97
    iget-object v4, p0, Lju;->k:Lkh;

    invoke-virtual {v4}, Lkh;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lma;

    .line 98
    invoke-virtual {v4}, Lma;->b()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lju;->a([I)[I

    move-result-object v11

    .line 99
    invoke-virtual {v4}, Lma;->a()[F

    move-result-object v12

    .line 100
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 101
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 102
    iget v9, v1, Landroid/graphics/PointF;->x:F

    .line 103
    iget v10, v1, Landroid/graphics/PointF;->y:F

    .line 104
    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 105
    iget-object v1, p0, Lju;->f:Landroidx/collection/c;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/c;->b(JLjava/lang/Object;)V

    return-object v0
.end method

.method private c()Landroid/graphics/RadialGradient;
    .locals 13

    .line 110
    invoke-direct {p0}, Lju;->d()I

    move-result v0

    .line 111
    iget-object v1, p0, Lju;->g:Landroidx/collection/c;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/c;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lju;->l:Lkh;

    invoke-virtual {v0}, Lkh;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 116
    iget-object v1, p0, Lju;->m:Lkh;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 117
    iget-object v4, p0, Lju;->k:Lkh;

    invoke-virtual {v4}, Lkh;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lma;

    .line 118
    invoke-virtual {v4}, Lma;->b()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lju;->a([I)[I

    move-result-object v10

    .line 119
    invoke-virtual {v4}, Lma;->a()[F

    move-result-object v11

    .line 120
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 121
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 122
    iget v0, v1, Landroid/graphics/PointF;->x:F

    .line 123
    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v7

    float-to-double v4, v0

    sub-float/2addr v1, v8

    float-to-double v0, v1

    .line 124
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v9, v0

    .line 125
    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 126
    iget-object v1, p0, Lju;->g:Landroidx/collection/c;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/c;->b(JLjava/lang/Object;)V

    return-object v0
.end method

.method private d()I
    .locals 4

    .line 131
    iget-object v0, p0, Lju;->l:Lkh;

    invoke-virtual {v0}, Lkh;->h()F

    move-result v0

    iget v1, p0, Lju;->j:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 132
    iget-object v1, p0, Lju;->m:Lkh;

    invoke-virtual {v1}, Lkh;->h()F

    move-result v1

    iget v2, p0, Lju;->j:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 133
    iget-object v2, p0, Lju;->k:Lkh;

    invoke-virtual {v2}, Lkh;->h()F

    move-result v2

    iget v3, p0, Lju;->j:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eqz v0, :cond_0

    const/16 v3, 0x20f

    mul-int/2addr v3, v0

    goto :goto_0

    :cond_0
    const/16 v3, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    mul-int/2addr v3, v1

    :cond_1
    if-eqz v2, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    mul-int/2addr v3, v2

    :cond_2
    return v3
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lju;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 68
    iget-boolean v0, p0, Lju;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lju;->h:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lju;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 74
    iget-object v0, p0, Lju;->i:Lmd;

    sget-object v1, Lmd;->LINEAR:Lmd;

    if-ne v0, v1, :cond_1

    .line 75
    invoke-direct {p0}, Lju;->b()Landroid/graphics/LinearGradient;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0}, Lju;->c()Landroid/graphics/RadialGradient;

    move-result-object v0

    .line 79
    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 80
    iget-object v1, p0, Lju;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 82
    invoke-super {p0, p1, p2, p3}, Ljm;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
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

    .line 166
    invoke-super {p0, p1, p2}, Ljm;->a(Ljava/lang/Object;Lpe;)V

    .line 167
    sget-object v0, Lcom/airbnb/lottie/k;->L:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    .line 168
    iget-object p1, p0, Lju;->n:Lkx;

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lju;->a:Lmq;

    iget-object v0, p0, Lju;->n:Lkx;

    invoke-virtual {p1, v0}, Lmq;->b(Lkh;)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 173
    iput-object p1, p0, Lju;->n:Lkx;

    goto :goto_0

    .line 175
    :cond_1
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Lju;->n:Lkx;

    .line 176
    iget-object p1, p0, Lju;->n:Lkx;

    invoke-virtual {p1, p0}, Lkx;->a(Lkh$a;)V

    .line 177
    iget-object p1, p0, Lju;->a:Lmq;

    iget-object p2, p0, Lju;->n:Lkx;

    invoke-virtual {p1, p2}, Lmq;->a(Lkh;)V

    :cond_2
    :goto_0
    return-void
.end method
