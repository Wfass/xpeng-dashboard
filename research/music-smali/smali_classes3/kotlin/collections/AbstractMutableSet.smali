.class public abstract Lkotlin/collections/AbstractMutableSet;
.super Ljava/util/AbstractSet;
.source "AbstractMutableSet.kt"

# interfaces
.implements Lcct;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Lcct;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

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
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableSet;->getSize()I

    move-result v0

    return v0
.end method
