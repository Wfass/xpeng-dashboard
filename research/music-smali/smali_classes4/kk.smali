.class public Lkk;
.super Lkn;
.source "FloatKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkn<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpc<",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lkn;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic a(Lpc;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lkk;->b(Lpc;F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method b(Lpc;F)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc<",
            "Ljava/lang/Float;",
            ">;F)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lkk;->c(Lpc;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method c(Lpc;F)F
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc<",
            "Ljava/lang/Float;",
            ">;F)F"
        }
    .end annotation

    .line 22
    iget-object v0, p1, Lpc;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lpc;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lkk;->c:Lpe;

    if-eqz v0, :cond_0

    .line 28
    iget-object v1, p0, Lkk;->c:Lpe;

    iget v2, p1, Lpc;->f:F

    iget-object v0, p1, Lpc;->g:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v0, p1, Lpc;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/Float;

    iget-object v0, p1, Lpc;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Float;

    .line 30
    invoke-virtual {p0}, Lkk;->d()F

    move-result v7

    invoke-virtual {p0}, Lkk;->h()F

    move-result v8

    move v6, p2

    .line 28
    invoke-virtual/range {v1 .. v8}, Lpe;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 36
    :cond_0
    invoke-virtual {p1}, Lpc;->f()F

    move-result v0

    invoke-virtual {p1}, Lpc;->g()F

    move-result p1

    invoke-static {v0, p1, p2}, Lpa;->a(FFF)F

    move-result p1

    return p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()F
    .locals 2

    .line 43
    invoke-virtual {p0}, Lkk;->c()Lpc;

    move-result-object v0

    invoke-virtual {p0}, Lkk;->e()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lkk;->c(Lpc;F)F

    move-result v0

    return v0
.end method
