.class public Lkt;
.super Lkh;
.source "ShapeKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkh<",
        "Lmk;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lmk;

.field private final e:Landroid/graphics/Path;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpc<",
            "Lmk;",
            ">;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lkh;-><init>(Ljava/util/List;)V

    .line 15
    new-instance p1, Lmk;

    invoke-direct {p1}, Lmk;-><init>()V

    iput-object p1, p0, Lkt;->d:Lmk;

    .line 16
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lkt;->e:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public synthetic a(Lpc;F)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lkt;->b(Lpc;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lke;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lkt;->f:Ljava/util/List;

    return-void
.end method

.method public b(Lpc;F)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc<",
            "Lmk;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 25
    iget-object v0, p1, Lpc;->a:Ljava/lang/Object;

    check-cast v0, Lmk;

    .line 26
    iget-object p1, p1, Lpc;->b:Ljava/lang/Object;

    check-cast p1, Lmk;

    .line 28
    iget-object v1, p0, Lkt;->d:Lmk;

    invoke-virtual {v1, v0, p1, p2}, Lmk;->a(Lmk;Lmk;F)V

    .line 29
    iget-object p1, p0, Lkt;->d:Lmk;

    .line 30
    iget-object p2, p0, Lkt;->f:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 31
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    .line 32
    iget-object v0, p0, Lkt;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lke;

    invoke-interface {v0, p1}, Lke;->a(Lmk;)Lmk;

    move-result-object p1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 35
    :cond_0
    iget-object p2, p0, Lkt;->e:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lpa;->a(Lmk;Landroid/graphics/Path;)V

    .line 36
    iget-object p1, p0, Lkt;->e:Landroid/graphics/Path;

    return-object p1
.end method
