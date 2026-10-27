.class public final Lkotlin/collections/CollectionsKt__IterablesKt$Iterable$1;
.super Ljava/lang/Object;
.source "Iterables.kt"

# interfaces
.implements Lccm;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccm;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic $iterator:Lcar;
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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcar<",
            "+",
            "Ljava/util/Iterator<",
            "+TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/collections/CollectionsKt__IterablesKt$Iterable$1;->$iterator:Lcar;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lkotlin/collections/CollectionsKt__IterablesKt$Iterable$1;->$iterator:Lcar;

    invoke-interface {v0}, Lcar;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
