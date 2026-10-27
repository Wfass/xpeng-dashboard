.class public final Lkotlin/sequences/SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;
.super Ljava/lang/Object;
.source "Iterables.kt"

# interfaces
.implements Lccm;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/k;->c(Lkotlin/sequences/c;)Ljava/lang/Iterable;
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
.field final synthetic $this_asIterable$inlined:Lkotlin/sequences/c;


# direct methods
.method public constructor <init>(Lkotlin/sequences/c;)V
    .locals 0

    iput-object p1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;->$this_asIterable$inlined:Lkotlin/sequences/c;

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

    .line 71
    iget-object v0, p0, Lkotlin/sequences/SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;->$this_asIterable$inlined:Lkotlin/sequences/c;

    invoke-interface {v0}, Lkotlin/sequences/c;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
