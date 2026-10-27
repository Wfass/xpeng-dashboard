.class public Ljs;
.super Ljava/lang/Object;
.source "FillContent.java"

# interfaces
.implements Ljq;
.implements Ljw;
.implements Lkh$a;


# instance fields
.field a:F

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Paint;

.field private final d:Lmq;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljy;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/airbnb/lottie/f;

.field private l:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lkj;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lmq;Lml;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ljs;->b:Landroid/graphics/Path;

    .line 35
    new-instance v0, Ljl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljl;-><init>(I)V

    iput-object v0, p0, Ljs;->c:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljs;->g:Ljava/util/List;

    .line 50
    iput-object p2, p0, Ljs;->d:Lmq;

    .line 51
    invoke-virtual {p3}, Lml;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljs;->e:Ljava/lang/String;

    .line 52
    invoke-virtual {p3}, Lml;->e()Z

    move-result v0

    iput-boolean v0, p0, Ljs;->f:Z

    .line 53
    iput-object p1, p0, Ljs;->k:Lcom/airbnb/lottie/f;

    .line 54
    invoke-virtual {p2}, Lmq;->e()Llx;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p2}, Lmq;->e()Llx;

    move-result-object p1

    invoke-virtual {p1}, Llx;->a()Llk;

    move-result-object p1

    invoke-virtual {p1}, Llk;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljs;->l:Lkh;

    .line 56
    iget-object p1, p0, Ljs;->l:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 57
    iget-object p1, p0, Ljs;->l:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 59
    :cond_0
    invoke-virtual {p2}, Lmq;->f()Lnp;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 60
    new-instance p1, Lkj;

    invoke-virtual {p2}, Lmq;->f()Lnp;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lkj;-><init>(Lkh$a;Lmq;Lnp;)V

    iput-object p1, p0, Ljs;->m:Lkj;

    .line 63
    :cond_1
    invoke-virtual {p3}, Lml;->b()Llj;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lml;->c()Llm;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Ljs;->b:Landroid/graphics/Path;

    invoke-virtual {p3}, Lml;->d()Landroid/graphics/Path$FillType;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 71
    invoke-virtual {p3}, Lml;->b()Llj;

    move-result-object p1

    invoke-virtual {p1}, Llj;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljs;->h:Lkh;

    .line 72
    iget-object p1, p0, Ljs;->h:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 73
    iget-object p1, p0, Ljs;->h:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 74
    invoke-virtual {p3}, Lml;->c()Llm;

    move-result-object p1

    invoke-virtual {p1}, Llm;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljs;->i:Lkh;

    .line 75
    iget-object p1, p0, Ljs;->i:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 76
    iget-object p1, p0, Ljs;->i:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Ljs;->h:Lkh;

    .line 65
    iput-object p1, p0, Ljs;->i:Lkh;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Ljs;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 97
    iget-boolean v0, p0, Ljs;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FillContent#draw"

    .line 100
    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Ljs;->h:Lkh;

    check-cast v1, Lki;

    invoke-virtual {v1}, Lki;->i()I

    move-result v1

    int-to-float p3, p3

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p3, v2

    .line 102
    iget-object v3, p0, Ljs;->i:Lkh;

    invoke-virtual {v3}, Lkh;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr p3, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p3, v3

    mul-float/2addr p3, v2

    float-to-int p3, p3

    .line 103
    iget-object v2, p0, Ljs;->c:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-static {p3, v4, v3}, Lpa;->a(III)I

    move-result p3

    shl-int/lit8 p3, p3, 0x18

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr p3, v1

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object p3, p0, Ljs;->j:Lkh;

    if-eqz p3, :cond_1

    .line 106
    iget-object v1, p0, Ljs;->c:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lkh;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 109
    :cond_1
    iget-object p3, p0, Ljs;->l:Lkh;

    if-eqz p3, :cond_4

    .line 110
    invoke-virtual {p3}, Lkh;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_2

    .line 112
    iget-object v1, p0, Ljs;->c:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 113
    :cond_2
    iget v1, p0, Ljs;->a:F

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_3

    .line 114
    iget-object v1, p0, Ljs;->d:Lmq;

    invoke-virtual {v1, p3}, Lmq;->b(F)Landroid/graphics/BlurMaskFilter;

    move-result-object v1

    .line 115
    iget-object v2, p0, Ljs;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 117
    :cond_3
    :goto_0
    iput p3, p0, Ljs;->a:F

    .line 119
    :cond_4
    iget-object p3, p0, Ljs;->m:Lkj;

    if-eqz p3, :cond_5

    .line 120
    iget-object v1, p0, Ljs;->c:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Lkj;->a(Landroid/graphics/Paint;)V

    .line 123
    :cond_5
    iget-object p3, p0, Ljs;->b:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 124
    :goto_1
    iget-object p3, p0, Ljs;->g:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v4, p3, :cond_6

    .line 125
    iget-object p3, p0, Ljs;->b:Landroid/graphics/Path;

    iget-object v1, p0, Ljs;->g:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljy;

    invoke-interface {v1}, Ljy;->d()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 128
    :cond_6
    iget-object p2, p0, Ljs;->b:Landroid/graphics/Path;

    iget-object p3, p0, Ljs;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 130
    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 134
    iget-object p3, p0, Ljs;->b:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    .line 135
    :goto_0
    iget-object v1, p0, Ljs;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 136
    iget-object v1, p0, Ljs;->b:Landroid/graphics/Path;

    iget-object v2, p0, Ljs;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljy;

    invoke-interface {v2}, Ljy;->d()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    iget-object p2, p0, Ljs;->b:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 140
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

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

    .line 156
    sget-object v0, Lcom/airbnb/lottie/k;->a:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 157
    iget-object p1, p0, Ljs;->h:Lkh;

    invoke-virtual {p1, p2}, Lkh;->a(Lpe;)V

    goto/16 :goto_0

    .line 158
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/k;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    .line 159
    iget-object p1, p0, Ljs;->i:Lkh;

    invoke-virtual {p1, p2}, Lkh;->a(Lpe;)V

    goto/16 :goto_0

    .line 160
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/k;->K:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_4

    .line 161
    iget-object p1, p0, Ljs;->j:Lkh;

    if-eqz p1, :cond_2

    .line 162
    iget-object v0, p0, Ljs;->d:Lmq;

    invoke-virtual {v0, p1}, Lmq;->b(Lkh;)V

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x0

    .line 166
    iput-object p1, p0, Ljs;->j:Lkh;

    goto/16 :goto_0

    .line 168
    :cond_3
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Ljs;->j:Lkh;

    .line 170
    iget-object p1, p0, Ljs;->j:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 171
    iget-object p1, p0, Ljs;->d:Lmq;

    iget-object p2, p0, Ljs;->j:Lkh;

    invoke-virtual {p1, p2}, Lmq;->a(Lkh;)V

    goto :goto_0

    .line 173
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/k;->j:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    .line 174
    iget-object p1, p0, Ljs;->l:Lkh;

    if-eqz p1, :cond_5

    .line 175
    invoke-virtual {p1, p2}, Lkh;->a(Lpe;)V

    goto :goto_0

    .line 177
    :cond_5
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Ljs;->l:Lkh;

    .line 179
    iget-object p1, p0, Ljs;->l:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 180
    iget-object p1, p0, Ljs;->d:Lmq;

    iget-object p2, p0, Ljs;->l:Lkh;

    invoke-virtual {p1, p2}, Lmq;->a(Lkh;)V

    goto :goto_0

    .line 182
    :cond_6
    sget-object v0, Lcom/airbnb/lottie/k;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Ljs;->m:Lkj;

    if-eqz v0, :cond_7

    .line 183
    invoke-virtual {v0, p2}, Lkj;->a(Lpe;)V

    goto :goto_0

    .line 184
    :cond_7
    sget-object v0, Lcom/airbnb/lottie/k;->G:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Ljs;->m:Lkj;

    if-eqz v0, :cond_8

    .line 185
    invoke-virtual {v0, p2}, Lkj;->b(Lpe;)V

    goto :goto_0

    .line 186
    :cond_8
    sget-object v0, Lcom/airbnb/lottie/k;->H:Ljava/lang/Float;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Ljs;->m:Lkj;

    if-eqz v0, :cond_9

    .line 187
    invoke-virtual {v0, p2}, Lkj;->c(Lpe;)V

    goto :goto_0

    .line 188
    :cond_9
    sget-object v0, Lcom/airbnb/lottie/k;->I:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Ljs;->m:Lkj;

    if-eqz v0, :cond_a

    .line 189
    invoke-virtual {v0, p2}, Lkj;->d(Lpe;)V

    goto :goto_0

    .line 190
    :cond_a
    sget-object v0, Lcom/airbnb/lottie/k;->J:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Ljs;->m:Lkj;

    if-eqz p1, :cond_b

    .line 191
    invoke-virtual {p1, p2}, Lkj;->e(Lpe;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    const/4 p1, 0x0

    .line 84
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 85
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljo;

    .line 86
    instance-of v1, v0, Ljy;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Ljs;->g:Ljava/util/List;

    check-cast v0, Ljy;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

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

    .line 150
    invoke-static {p1, p2, p3, p4, p0}, Lpa;->a(Lle;ILjava/util/List;Lle;Ljw;)V

    return-void
.end method

.method public onValueChanged()V
    .locals 1

    .line 80
    iget-object v0, p0, Ljs;->k:Lcom/airbnb/lottie/f;

    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    return-void
.end method
