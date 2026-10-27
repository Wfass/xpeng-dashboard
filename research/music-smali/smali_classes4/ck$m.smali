.class Lck$m;
.super Lck;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Lck;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;FJLao;)Z
    .locals 6

    .line 207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    .line 208
    invoke-virtual/range {v0 .. v5}, Lck$m;->a(FJLandroid/view/View;Lao;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationZ(F)V

    .line 210
    :cond_0
    iget-boolean p1, p0, Lck$m;->i:Z

    return p1
.end method
