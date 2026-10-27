.class public Lll;
.super Llw;
.source "AnimatableGradientColorValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llw<",
        "Lma;",
        "Lma;",
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
            "Lma;",
            ">;>;)V"
        }
    .end annotation

    .line 14
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
            "Lma;",
            "Lma;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lkl;

    iget-object v1, p0, Lll;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lkl;-><init>(Ljava/util/List;)V

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
