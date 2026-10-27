.class Lkotlin/sequences/g;
.super Ljava/lang/Object;
.source "SequenceBuilder.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method public static final a(Lcbd;)Lkotlin/sequences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcbd<",
            "-",
            "Lkotlin/sequences/e<",
            "-TT;>;-",
            "Lbzq<",
            "-",
            "Lkotlin/w;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/sequences/c<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lkotlin/sequences/g$a;

    invoke-direct {v0, p0}, Lkotlin/sequences/g$a;-><init>(Lcbd;)V

    check-cast v0, Lkotlin/sequences/c;

    return-object v0
.end method

.method public static final b(Lcbd;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcbd<",
            "-",
            "Lkotlin/sequences/e<",
            "-TT;>;-",
            "Lbzq<",
            "-",
            "Lkotlin/w;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lkotlin/sequences/d;

    invoke-direct {v0}, Lkotlin/sequences/d;-><init>()V

    .line 38
    move-object v1, v0

    check-cast v1, Lbzq;

    invoke-static {p0, v0, v1}, Lbzv;->a(Lcbd;Ljava/lang/Object;Lbzq;)Lbzq;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/sequences/d;->a(Lbzq;)V

    .line 39
    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
