.class public abstract Lkotlin/collections/AbstractMutableCollection;
.super Ljava/util/AbstractCollection;
.source "AbstractMutableCollection.kt"

# interfaces
.implements Lccn;
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Lccn;",
        "Ljava/util/Collection<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method public abstract getSize()I
.end method

.method public final size()I
    .locals 1

    .line 15
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableCollection;->getSize()I

    move-result v0

    return v0
.end method
