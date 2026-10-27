.class public final Lkotlin/collections/ArraysKt___ArraysKt$asIterable$$inlined$Iterable$6;
.super Ljava/lang/Object;
.source "Iterables.kt"

# interfaces
.implements Lccm;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/g;
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic $this_asIterable$inlined:[F


# direct methods
.method public constructor <init>([F)V
    .locals 0

    iput-object p1, p0, Lkotlin/collections/ArraysKt___ArraysKt$asIterable$$inlined$Iterable$6;->$this_asIterable$inlined:[F

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
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysKt$asIterable$$inlined$Iterable$6;->$this_asIterable$inlined:[F

    invoke-static {v0}, Lcbw;->a([F)Lkotlin/collections/z;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
