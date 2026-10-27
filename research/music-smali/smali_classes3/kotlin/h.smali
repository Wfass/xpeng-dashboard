.class Lkotlin/h;
.super Ljava/lang/Object;
.source "LazyJVM.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method public static final a(Lcar;)Lkotlin/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcar<",
            "+TT;>;)",
            "Lkotlin/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lkotlin/n;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lkotlin/n;-><init>(Lcar;Ljava/lang/Object;ILccc;)V

    check-cast v0, Lkotlin/f;

    return-object v0
.end method
