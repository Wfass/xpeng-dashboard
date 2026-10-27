.class public final Lqx;
.super Ljava/lang/Object;
.source "FieldBiConsumer.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "TT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lqy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqy<",
            "TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lqx;->b:Lqy;

    iget v1, p0, Lqx;->a:I

    invoke-interface {v0, p1, v1, p2}, Lqy;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method
