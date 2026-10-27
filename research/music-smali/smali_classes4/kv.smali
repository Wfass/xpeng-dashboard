.class public Lkv;
.super Lkn;
.source "TextKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkn<",
        "Llb;",
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
            "Llb;",
            ">;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lkn;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic a(Lpc;F)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lkv;->b(Lpc;F)Llb;

    move-result-object p1

    return-object p1
.end method

.method b(Lpc;F)Llb;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc<",
            "Llb;",
            ">;F)",
            "Llb;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lkv;->c:Lpe;

    if-eqz v0, :cond_2

    .line 19
    iget-object v1, p0, Lkv;->c:Lpe;

    iget v2, p1, Lpc;->f:F

    iget-object v0, p1, Lpc;->g:Ljava/lang/Float;

    if-nez v0, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lpc;->g:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    move v3, v0

    iget-object v0, p1, Lpc;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Llb;

    .line 20
    iget-object v0, p1, Lpc;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object p1, p1, Lpc;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lpc;->b:Ljava/lang/Object;

    :goto_1
    check-cast p1, Llb;

    move-object v5, p1

    .line 21
    invoke-virtual {p0}, Lkv;->e()F

    move-result v7

    invoke-virtual {p0}, Lkv;->h()F

    move-result v8

    move v6, p2

    .line 19
    invoke-virtual/range {v1 .. v8}, Lpe;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llb;

    return-object p1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_4

    .line 22
    iget-object p2, p1, Lpc;->b:Ljava/lang/Object;

    if-nez p2, :cond_3

    goto :goto_2

    .line 25
    :cond_3
    iget-object p1, p1, Lpc;->b:Ljava/lang/Object;

    check-cast p1, Llb;

    return-object p1

    .line 23
    :cond_4
    :goto_2
    iget-object p1, p1, Lpc;->a:Ljava/lang/Object;

    check-cast p1, Llb;

    return-object p1
.end method

.method public b(Lpe;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpe<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    new-instance v0, Lpd;

    invoke-direct {v0}, Lpd;-><init>()V

    .line 31
    new-instance v1, Llb;

    invoke-direct {v1}, Llb;-><init>()V

    .line 32
    new-instance v2, Lkv$1;

    invoke-direct {v2, p0, v0, p1, v1}, Lkv$1;-><init>(Lkv;Lpd;Lpe;Llb;)V

    invoke-super {p0, v2}, Lkn;->a(Lpe;)V

    return-void
.end method
