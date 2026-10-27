.class public abstract Lkotlin/collections/ao;
.super Ljava/lang/Object;
.source "PrimitiveIterators.kt"

# interfaces
.implements Lccm;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccm;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()S
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lkotlin/collections/ao;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
