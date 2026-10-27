.class Lbzw;
.super Ljava/lang/Object;
.source "IntrinsicsJvm.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method public static final a(Lcbd;Ljava/lang/Object;Lbzq;)Lbzq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcbd<",
            "-TR;-",
            "Lbzq<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lbzq<",
            "-TT;>;)",
            "Lbzq<",
            "Lkotlin/w;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {p2}, Lcae;->a(Lbzq;)Lbzq;

    move-result-object p2

    .line 123
    instance-of v0, p0, Lbzy;

    if-eqz v0, :cond_0

    .line 124
    check-cast p0, Lbzy;

    invoke-virtual {p0, p1, p2}, Lbzy;->create(Ljava/lang/Object;Lbzq;)Lbzq;

    move-result-object p0

    goto :goto_0

    .line 210
    :cond_0
    invoke-interface {p2}, Lbzq;->getContext()Lbzs;

    move-result-object v0

    .line 212
    sget-object v1, Lbzt;->INSTANCE:Lbzt;

    if-ne v0, v1, :cond_1

    .line 213
    new-instance v0, Lbzw$a;

    invoke-direct {v0, p2, p0, p1}, Lbzw$a;-><init>(Lbzq;Lcbd;Ljava/lang/Object;)V

    check-cast v0, Lbzq;

    move-object p0, v0

    goto :goto_0

    .line 214
    :cond_1
    new-instance v1, Lbzw$b;

    invoke-direct {v1, p2, v0, p0, p1}, Lbzw$b;-><init>(Lbzq;Lbzs;Lcbd;Ljava/lang/Object;)V

    check-cast v1, Lbzq;

    move-object p0, v1

    :goto_0
    return-object p0
.end method
