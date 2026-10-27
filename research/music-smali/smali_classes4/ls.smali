.class public Lls;
.super Llw;
.source "AnimatableTextFrame.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llw<",
        "Llb;",
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

    .line 12
    invoke-direct {p0, p1}, Llw;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Lkh;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lls;->d()Lkv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Z
    .locals 1

    .line 9
    invoke-super {p0}, Llw;->b()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Ljava/util/List;
    .locals 1

    .line 9
    invoke-super {p0}, Llw;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Lkv;
    .locals 2

    .line 16
    new-instance v0, Lkv;

    iget-object v1, p0, Lls;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lkv;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 9
    invoke-super {p0}, Llw;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
