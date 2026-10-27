.class public Llp;
.super Llw;
.source "AnimatableScaleValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llw<",
        "Lpf;",
        "Lpf;",
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
            "Lpf;",
            ">;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Llw;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Lkh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkh<",
            "Lpf;",
            "Lpf;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lks;

    iget-object v1, p0, Llp;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lks;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic b()Z
    .locals 1

    .line 10
    invoke-super {p0}, Llw;->b()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Ljava/util/List;
    .locals 1

    .line 10
    invoke-super {p0}, Llw;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-super {p0}, Llw;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
