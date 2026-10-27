.class public Llr;
.super Ljava/lang/Object;
.source "AnimatableSplitDimensionPathValue.java"

# interfaces
.implements Llv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llv<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Llk;

.field private final b:Llk;


# direct methods
.method public constructor <init>(Llk;Llk;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Llr;->a:Llk;

    .line 19
    iput-object p2, p0, Llr;->b:Llk;

    return-void
.end method


# virtual methods
.method public a()Lkh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkh<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lku;

    iget-object v1, p0, Llr;->a:Llk;

    .line 34
    invoke-virtual {v1}, Llk;->a()Lkh;

    move-result-object v1

    iget-object v2, p0, Llr;->b:Llk;

    invoke-virtual {v2}, Llk;->a()Lkh;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lku;-><init>(Lkh;Lkh;)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 29
    iget-object v0, p0, Llr;->a:Llk;

    invoke-virtual {v0}, Llk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llr;->b:Llk;

    invoke-virtual {v0}, Llk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpc<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
