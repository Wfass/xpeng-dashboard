.class public Lmv;
.super Lmq;
.source "ShapeLayer.java"


# instance fields
.field private final g:Ljp;

.field private final h:Lmr;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;Lmt;Lmr;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1, p2}, Lmq;-><init>(Lcom/airbnb/lottie/f;Lmt;)V

    .line 27
    iput-object p3, p0, Lmv;->h:Lmr;

    .line 30
    new-instance p3, Lmm;

    invoke-virtual {p2}, Lmt;->n()Ljava/util/List;

    move-result-object p2

    const-string v0, "__container"

    const/4 v1, 0x0

    invoke-direct {p3, v0, p2, v1}, Lmm;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 31
    new-instance p2, Ljp;

    invoke-direct {p2, p1, p0, p3}, Ljp;-><init>(Lcom/airbnb/lottie/f;Lmq;Lmm;)V

    iput-object p2, p0, Lmv;->g:Ljp;

    .line 32
    iget-object p1, p0, Lmv;->g:Ljp;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljp;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 40
    invoke-super {p0, p1, p2, p3}, Lmq;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 41
    iget-object p2, p0, Lmv;->g:Ljp;

    iget-object v0, p0, Lmv;->a:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0, p3}, Ljp;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1

    .line 36
    iget-object v0, p0, Lmv;->g:Ljp;

    invoke-virtual {v0, p1, p2, p3}, Ljp;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method protected b(Lle;ILjava/util/List;Lle;)V
    .locals 1
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

    .line 63
    iget-object v0, p0, Lmv;->g:Ljp;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljp;->a(Lle;ILjava/util/List;Lle;)V

    return-void
.end method

.method public e()Llx;
    .locals 1

    .line 45
    invoke-super {p0}, Lmq;->e()Llx;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 49
    :cond_0
    iget-object v0, p0, Lmv;->h:Lmr;

    invoke-virtual {v0}, Lmr;->e()Llx;

    move-result-object v0

    return-object v0
.end method

.method public f()Lnp;
    .locals 1

    .line 53
    invoke-super {p0}, Lmq;->f()Lnp;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 57
    :cond_0
    iget-object v0, p0, Lmv;->h:Lmr;

    invoke-virtual {v0}, Lmr;->f()Lnp;

    move-result-object v0

    return-object v0
.end method
