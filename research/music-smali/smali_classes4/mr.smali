.class public Lmr;
.super Lmq;
.source "CompositionLayer.java"


# instance fields
.field private g:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmq;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/graphics/RectF;

.field private final j:Landroid/graphics/RectF;

.field private final k:Landroid/graphics/Paint;

.field private l:Ljava/lang/Boolean;

.field private m:Ljava/lang/Boolean;

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lmt;Ljava/util/List;Lcom/airbnb/lottie/d;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/f;",
            "Lmt;",
            "Ljava/util/List<",
            "Lmt;",
            ">;",
            "Lcom/airbnb/lottie/d;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Lmq;-><init>(Lcom/airbnb/lottie/f;Lmt;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmr;->h:Ljava/util/List;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmr;->i:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmr;->j:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmr;->k:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lmr;->n:Z

    .line 42
    invoke-virtual {p2}, Lmt;->u()Llk;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p2}, Llk;->a()Lkh;

    move-result-object p2

    iput-object p2, p0, Lmr;->g:Lkh;

    .line 45
    iget-object p2, p0, Lmr;->g:Lkh;

    invoke-virtual {p0, p2}, Lmr;->a(Lkh;)V

    .line 47
    iget-object p2, p0, Lmr;->g:Lkh;

    invoke-virtual {p2, p0}, Lkh;->a(Lkh$a;)V

    goto :goto_0

    .line 49
    :cond_0
    iput-object v1, p0, Lmr;->g:Lkh;

    .line 52
    :goto_0
    new-instance p2, Landroidx/collection/c;

    .line 53
    invoke-virtual {p4}, Lcom/airbnb/lottie/d;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p2, v2}, Landroidx/collection/c;-><init>(I)V

    .line 56
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    move-object v3, v1

    :goto_1
    const/4 v4, 0x0

    if-ltz v2, :cond_4

    .line 57
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmt;

    .line 58
    invoke-static {p0, v5, p1, p4}, Lmq;->a(Lmr;Lmt;Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/d;)Lmq;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 62
    :cond_1
    invoke-virtual {v6}, Lmq;->b()Lmt;

    move-result-object v7

    invoke-virtual {v7}, Lmt;->e()J

    move-result-wide v7

    invoke-virtual {p2, v7, v8, v6}, Landroidx/collection/c;->b(JLjava/lang/Object;)V

    if-eqz v3, :cond_2

    .line 64
    invoke-virtual {v3, v6}, Lmq;->a(Lmq;)V

    move-object v3, v1

    goto :goto_2

    .line 67
    :cond_2
    iget-object v7, p0, Lmr;->h:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 68
    sget-object v4, Lmr$1;->a:[I

    invoke-virtual {v5}, Lmt;->l()Lmt$b;

    move-result-object v5

    invoke-virtual {v5}, Lmt$b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v0, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v6

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 77
    :cond_4
    :goto_3
    invoke-virtual {p2}, Landroidx/collection/c;->b()I

    move-result p1

    if-ge v4, p1, :cond_7

    .line 78
    invoke-virtual {p2, v4}, Landroidx/collection/c;->b(I)J

    move-result-wide p3

    .line 79
    invoke-virtual {p2, p3, p4}, Landroidx/collection/c;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmq;

    if-nez p1, :cond_5

    goto :goto_4

    .line 86
    :cond_5
    invoke-virtual {p1}, Lmq;->b()Lmt;

    move-result-object p3

    invoke-virtual {p3}, Lmt;->m()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroidx/collection/c;->a(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmq;

    if-eqz p3, :cond_6

    .line 88
    invoke-virtual {p1, p3}, Lmq;->b(Lmq;)V

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 3

    .line 145
    invoke-super {p0, p1}, Lmq;->a(F)V

    .line 146
    iget-object v0, p0, Lmr;->g:Lkh;

    if-eqz v0, :cond_0

    .line 150
    iget-object p1, p0, Lmr;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {p1}, Lcom/airbnb/lottie/f;->getComposition()Lcom/airbnb/lottie/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/d;->m()F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    add-float/2addr p1, v0

    .line 151
    iget-object v0, p0, Lmr;->c:Lmt;

    invoke-virtual {v0}, Lmt;->a()Lcom/airbnb/lottie/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->f()F

    move-result v0

    .line 152
    iget-object v1, p0, Lmr;->g:Lkh;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lmr;->c:Lmt;

    invoke-virtual {v2}, Lmt;->a()Lcom/airbnb/lottie/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/d;->h()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v1, v0

    div-float p1, v1, p1

    .line 155
    :cond_0
    iget-object v0, p0, Lmr;->g:Lkh;

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lmr;->c:Lmt;

    invoke-virtual {v0}, Lmt;->c()F

    move-result v0

    sub-float/2addr p1, v0

    .line 159
    :cond_1
    iget-object v0, p0, Lmr;->c:Lmt;

    invoke-virtual {v0}, Lmt;->b()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmr;->c:Lmt;

    invoke-virtual {v0}, Lmt;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lmr;->c:Lmt;

    invoke-virtual {v0}, Lmt;->b()F

    move-result v0

    div-float/2addr p1, v0

    .line 162
    :cond_2
    iget-object v0, p0, Lmr;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 163
    iget-object v1, p0, Lmr;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmq;

    invoke-virtual {v1, p1}, Lmq;->a(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 136
    invoke-super {p0, p1, p2, p3}, Lmq;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 137
    iget-object p2, p0, Lmr;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_0

    .line 138
    iget-object v0, p0, Lmr;->i:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 139
    iget-object v0, p0, Lmr;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmq;

    iget-object v1, p0, Lmr;->i:Landroid/graphics/RectF;

    iget-object v2, p0, Lmr;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, p3}, Lmq;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 140
    iget-object v0, p0, Lmr;->i:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
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

    .line 215
    invoke-super {p0, p1, p2}, Lmq;->a(Ljava/lang/Object;Lpe;)V

    .line 217
    sget-object v0, Lcom/airbnb/lottie/k;->E:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    .line 219
    iget-object p1, p0, Lmr;->g:Lkh;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 220
    invoke-virtual {p1, p2}, Lkh;->a(Lpe;)V

    goto :goto_0

    .line 223
    :cond_0
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Lmr;->g:Lkh;

    .line 224
    iget-object p1, p0, Lmr;->g:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 225
    iget-object p1, p0, Lmr;->g:Lkh;

    invoke-virtual {p0, p1}, Lmr;->a(Lkh;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Lmq;->a(Z)V

    .line 99
    iget-object v0, p0, Lmr;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmq;

    .line 100
    invoke-virtual {v1, p1}, Lmq;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7

    const-string v0, "CompositionLayer#draw"

    .line 105
    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lmr;->j:Landroid/graphics/RectF;

    iget-object v2, p0, Lmr;->c:Lmt;

    invoke-virtual {v2}, Lmt;->h()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lmr;->c:Lmt;

    invoke-virtual {v3}, Lmt;->i()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 107
    iget-object v1, p0, Lmr;->j:Landroid/graphics/RectF;

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 110
    iget-object v1, p0, Lmr;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v1}, Lcom/airbnb/lottie/f;->isApplyingOpacityToLayersEnabled()Z

    move-result v1

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmr;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_0

    if-eq p3, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 112
    iget-object v5, p0, Lmr;->k:Landroid/graphics/Paint;

    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget-object v5, p0, Lmr;->j:Landroid/graphics/RectF;

    iget-object v6, p0, Lmr;->k:Landroid/graphics/Paint;

    invoke-static {p1, v5, v6}, Lpb;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_1
    if-eqz v1, :cond_2

    move p3, v2

    .line 119
    :cond_2
    iget-object v1, p0, Lmr;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_2
    if-ltz v1, :cond_6

    .line 122
    iget-boolean v2, p0, Lmr;->n:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lmr;->c:Lmt;

    invoke-virtual {v2}, Lmt;->f()Ljava/lang/String;

    move-result-object v2

    const-string v5, "__container"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    if-nez v2, :cond_4

    .line 123
    iget-object v2, p0, Lmr;->j:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 124
    iget-object v2, p0, Lmr;->j:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v4

    :goto_4
    if-eqz v2, :cond_5

    .line 127
    iget-object v2, p0, Lmr;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmq;

    .line 128
    invoke-virtual {v2, p1, p2, p3}, Lmq;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 131
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 132
    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void
.end method

.method protected b(Lle;ILjava/util/List;Lle;)V
    .locals 2
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

    const/4 v0, 0x0

    .line 207
    :goto_0
    iget-object v1, p0, Lmr;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 208
    iget-object v1, p0, Lmr;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmq;

    invoke-virtual {v1, p1, p2, p3, p4}, Lmq;->a(Lle;ILjava/util/List;Lle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lmr;->n:Z

    return-void
.end method

.method public g()Z
    .locals 4

    .line 168
    iget-object v0, p0, Lmr;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 169
    iget-object v0, p0, Lmr;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 170
    iget-object v2, p0, Lmr;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmq;

    .line 171
    instance-of v3, v2, Lmv;

    if-eqz v3, :cond_0

    .line 172
    invoke-virtual {v2}, Lmq;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmr;->m:Ljava/lang/Boolean;

    return v1

    .line 176
    :cond_0
    instance-of v3, v2, Lmr;

    if-eqz v3, :cond_1

    check-cast v2, Lmr;

    invoke-virtual {v2}, Lmr;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmr;->m:Ljava/lang/Boolean;

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 181
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmr;->m:Ljava/lang/Boolean;

    .line 183
    :cond_3
    iget-object v0, p0, Lmr;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 3

    .line 187
    iget-object v0, p0, Lmr;->l:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 188
    invoke-virtual {p0}, Lmr;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 189
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmr;->l:Ljava/lang/Boolean;

    return v1

    .line 193
    :cond_0
    iget-object v0, p0, Lmr;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 194
    iget-object v2, p0, Lmr;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmq;

    invoke-virtual {v2}, Lmq;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmr;->l:Ljava/lang/Boolean;

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 199
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmr;->l:Ljava/lang/Boolean;

    .line 201
    :cond_3
    iget-object v0, p0, Lmr;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
