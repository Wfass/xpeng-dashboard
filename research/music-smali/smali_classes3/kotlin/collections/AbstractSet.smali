.class public abstract Lkotlin/collections/AbstractSet;
.super Lkotlin/collections/AbstractCollection;
.source "AbstractSet.kt"

# interfaces
.implements Lccm;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/AbstractSet$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractCollection<",
        "TE;>;",
        "Lccm;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# static fields
.field public static final Companion:Lkotlin/collections/AbstractSet$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/collections/AbstractSet$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/AbstractSet$a;-><init>(Lccc;)V

    sput-object v0, Lkotlin/collections/AbstractSet;->Companion:Lkotlin/collections/AbstractSet$a;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lkotlin/collections/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 24
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 25
    :cond_1
    sget-object v0, Lkotlin/collections/AbstractSet;->Companion:Lkotlin/collections/AbstractSet$a;

    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {v0, v1, p1}, Lkotlin/collections/AbstractSet$a;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 31
    sget-object v0, Lkotlin/collections/AbstractSet;->Companion:Lkotlin/collections/AbstractSet$a;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lkotlin/collections/AbstractSet$a;->a(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
