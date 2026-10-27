.class public Lkl;
.super Lkn;
.source "GradientColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkn<",
        "Lma;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lma;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpc<",
            "Lma;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lkn;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpc;

    iget-object p1, p1, Lpc;->a:Ljava/lang/Object;

    check-cast p1, Lma;

    if-nez p1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lma;->c()I

    move-result v0

    .line 15
    :goto_0
    new-instance p1, Lma;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lma;-><init>([F[I)V

    iput-object p1, p0, Lkl;->d:Lma;

    return-void
.end method


# virtual methods
.method synthetic a(Lpc;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lkl;->b(Lpc;F)Lma;

    move-result-object p1

    return-object p1
.end method

.method b(Lpc;F)Lma;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc<",
            "Lma;",
            ">;F)",
            "Lma;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lkl;->d:Lma;

    iget-object v1, p1, Lpc;->a:Ljava/lang/Object;

    check-cast v1, Lma;

    iget-object p1, p1, Lpc;->b:Ljava/lang/Object;

    check-cast p1, Lma;

    invoke-virtual {v0, v1, p1, p2}, Lma;->a(Lma;Lma;F)V

    .line 20
    iget-object p1, p0, Lkl;->d:Lma;

    return-object p1
.end method
