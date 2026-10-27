.class public Lkm;
.super Lkn;
.source "IntegerKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkn<",
        "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
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
    invoke-virtual {p0, p1, p2}, Lkm;->b(Lpc;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method b(Lpc;F)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc<",
            "Ljava/lang/Integer;",
            ">;F)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2}, Lkm;->c(Lpc;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method c(Lpc;F)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc<",
            "Ljava/lang/Integer;",
            ">;F)I"
        }
    .end annotation

    .line 23
    iget-object v0, p1, Lpc;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lpc;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lkm;->c:Lpe;

    if-eqz v0, :cond_0

    .line 29
    iget-object v1, p0, Lkm;->c:Lpe;

    iget v2, p1, Lpc;->f:F

    iget-object v0, p1, Lpc;->g:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v0, p1, Lpc;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    iget-object v0, p1, Lpc;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    .line 31
    invoke-virtual {p0}, Lkm;->d()F

    move-result v7

    invoke-virtual {p0}, Lkm;->h()F

    move-result v8

    move v6, p2

    .line 29
    invoke-virtual/range {v1 .. v8}, Lpe;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 37
    :cond_0
    invoke-virtual {p1}, Lpc;->h()I

    move-result v0

    invoke-virtual {p1}, Lpc;->i()I

    move-result p1

    invoke-static {v0, p1, p2}, Lpa;->a(IIF)I

    move-result p1

    return p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()I
    .locals 2

    .line 44
    invoke-virtual {p0}, Lkm;->c()Lpc;

    move-result-object v0

    invoke-virtual {p0}, Lkm;->e()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lkm;->c(Lpc;F)I

    move-result v0

    return v0
.end method
