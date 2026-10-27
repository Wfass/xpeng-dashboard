.class public Lkr;
.super Lkn;
.source "PointKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkn<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpc<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lkn;-><init>(Ljava/util/List;)V

    .line 10
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lkr;->d:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public synthetic a(Lpc;F)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lkr;->b(Lpc;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic a(Lpc;FFF)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lkr;->b(Lpc;FFF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public b(Lpc;F)Landroid/graphics/PointF;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2, p2, p2}, Lkr;->b(Lpc;FFF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lpc;FFF)Landroid/graphics/PointF;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc<",
            "Landroid/graphics/PointF;",
            ">;FFF)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 21
    iget-object v0, p1, Lpc;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lpc;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p1, Lpc;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    .line 26
    iget-object v1, p1, Lpc;->b:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Landroid/graphics/PointF;

    .line 28
    iget-object v1, p0, Lkr;->c:Lpe;

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lkr;->c:Lpe;

    iget v2, p1, Lpc;->f:F

    iget-object p1, p1, Lpc;->g:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 31
    invoke-virtual {p0}, Lkr;->d()F

    move-result v7

    invoke-virtual {p0}, Lkr;->h()F

    move-result v8

    move-object v4, v0

    move-object v5, v9

    move v6, p2

    .line 30
    invoke-virtual/range {v1 .. v8}, Lpe;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    return-object p1

    .line 37
    :cond_0
    iget-object p1, p0, Lkr;->d:Landroid/graphics/PointF;

    iget p2, v0, Landroid/graphics/PointF;->x:F

    iget v1, v9, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr p3, v1

    add-float/2addr p2, p3

    iget p3, v0, Landroid/graphics/PointF;->y:F

    iget v1, v9, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    mul-float/2addr p4, v1

    add-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 39
    iget-object p1, p0, Lkr;->d:Landroid/graphics/PointF;

    return-object p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
