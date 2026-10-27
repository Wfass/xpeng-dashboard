.class public final Lkotlin/collections/IndexingIterable;
.super Ljava/lang/Object;
.source "Iterables.kt"

# interfaces
.implements Lccm;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccm;",
        "Ljava/lang/Iterable<",
        "Lkotlin/collections/aa<",
        "+TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final iteratorFactory:Lcar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcar<",
            "Ljava/util/Iterator<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcar<",
            "+",
            "Ljava/util/Iterator<",
            "+TT;>;>;)V"
        }
    .end annotation

    const-string v0, "iteratorFactory"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/IndexingIterable;->iteratorFactory:Lcar;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/collections/aa<",
            "TT;>;>;"
        }
    .end annotation

    .line 25
    new-instance v0, Lkotlin/collections/ab;

    iget-object v1, p0, Lkotlin/collections/IndexingIterable;->iteratorFactory:Lcar;

    invoke-interface {v1}, Lcar;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    invoke-direct {v0, v1}, Lkotlin/collections/ab;-><init>(Ljava/util/Iterator;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
