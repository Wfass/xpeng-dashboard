.class public Lkp;
.super Lpc;
.source "PathKeyframe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpc<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Landroid/graphics/Path;

.field private final k:Lpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/d;Lpc;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/d;",
            "Lpc<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 18
    iget-object v0, p2, Lpc;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/graphics/PointF;

    iget-object v0, p2, Lpc;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/graphics/PointF;

    iget-object v5, p2, Lpc;->c:Landroid/view/animation/Interpolator;

    iget-object v6, p2, Lpc;->d:Landroid/view/animation/Interpolator;

    iget-object v7, p2, Lpc;->e:Landroid/view/animation/Interpolator;

    iget v8, p2, Lpc;->f:F

    iget-object v9, p2, Lpc;->g:Ljava/lang/Float;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lpc;-><init>(Lcom/airbnb/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 20
    iput-object p2, p0, Lkp;->k:Lpc;

    .line 21
    invoke-virtual {p0}, Lkp;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 27
    iget-object v0, p0, Lkp;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkp;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkp;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lkp;->b:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lkp;->b:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    iget-object v1, p0, Lkp;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkp;->b:Ljava/lang/Object;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 30
    iget-object v0, p0, Lkp;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lkp;->b:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lkp;->k:Lpc;

    iget-object v2, v2, Lpc;->h:Landroid/graphics/PointF;

    iget-object v3, p0, Lkp;->k:Lpc;

    iget-object v3, v3, Lpc;->i:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2, v3}, Lpb;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lkp;->j:Landroid/graphics/Path;

    :cond_1
    return-void
.end method

.method b()Landroid/graphics/Path;
    .locals 1

    .line 38
    iget-object v0, p0, Lkp;->j:Landroid/graphics/Path;

    return-object v0
.end method
