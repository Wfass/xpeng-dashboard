.class public Lks;
.super Lkn;
.source "ScaleKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkn<",
        "Lpf;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lpf;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpc<",
            "Lpf;",
            ">;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lkn;-><init>(Ljava/util/List;)V

    .line 11
    new-instance p1, Lpf;

    invoke-direct {p1}, Lpf;-><init>()V

    iput-object p1, p0, Lks;->d:Lpf;

    return-void
.end method


# virtual methods
.method public synthetic a(Lpc;F)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lks;->b(Lpc;F)Lpf;

    move-result-object p1

    return-object p1
.end method

.method public b(Lpc;F)Lpf;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc<",
            "Lpf;",
            ">;F)",
            "Lpf;"
        }
    .end annotation

    .line 18
    iget-object v0, p1, Lpc;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lpc;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p1, Lpc;->a:Ljava/lang/Object;

    check-cast v0, Lpf;

    .line 22
    iget-object v1, p1, Lpc;->b:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lpf;

    .line 24
    iget-object v1, p0, Lks;->c:Lpe;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lks;->c:Lpe;

    iget v2, p1, Lpc;->f:F

    iget-object p1, p1, Lpc;->g:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 28
    invoke-virtual {p0}, Lks;->d()F

    move-result v7

    invoke-virtual {p0}, Lks;->h()F

    move-result v8

    move-object v4, v0

    move-object v5, v9

    move v6, p2

    .line 26
    invoke-virtual/range {v1 .. v8}, Lpe;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpf;

    if-eqz p1, :cond_0

    return-object p1

    .line 34
    :cond_0
    iget-object p1, p0, Lks;->d:Lpf;

    .line 35
    invoke-virtual {v0}, Lpf;->a()F

    move-result v1

    invoke-virtual {v9}, Lpf;->a()F

    move-result v2

    invoke-static {v1, v2, p2}, Lpa;->a(FFF)F

    move-result v1

    .line 36
    invoke-virtual {v0}, Lpf;->b()F

    move-result v0

    invoke-virtual {v9}, Lpf;->b()F

    move-result v2

    invoke-static {v0, v2, p2}, Lpa;->a(FFF)F

    move-result p2

    .line 34
    invoke-virtual {p1, v1, p2}, Lpf;->a(FF)V

    .line 38
    iget-object p1, p0, Lks;->d:Lpf;

    return-object p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
