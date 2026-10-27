.class final Lkh$e;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"

# interfaces
.implements Lkh$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkh$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lpc<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 237
    iput v0, p0, Lkh$e;->b:F

    const/4 v0, 0x0

    .line 240
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpc;

    iput-object p1, p0, Lkh$e;->a:Lpc;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(F)Z
    .locals 0

    .line 250
    iget-object p1, p0, Lkh$e;->a:Lpc;

    invoke-virtual {p1}, Lpc;->e()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public b()Lpc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpc<",
            "TT;>;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lkh$e;->a:Lpc;

    return-object v0
.end method

.method public b(F)Z
    .locals 1

    .line 270
    iget v0, p0, Lkh$e;->b:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 273
    :cond_0
    iput p1, p0, Lkh$e;->b:F

    const/4 p1, 0x0

    return p1
.end method

.method public c()F
    .locals 1

    .line 260
    iget-object v0, p0, Lkh$e;->a:Lpc;

    invoke-virtual {v0}, Lpc;->c()F

    move-result v0

    return v0
.end method

.method public d()F
    .locals 1

    .line 265
    iget-object v0, p0, Lkh$e;->a:Lpc;

    invoke-virtual {v0}, Lpc;->d()F

    move-result v0

    return v0
.end method
