.class Lck$i;
.super Lck;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Lck;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;FJLao;)Z
    .locals 6

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    .line 175
    invoke-virtual/range {v0 .. v5}, Lck$i;->a(FJLandroid/view/View;Lao;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 176
    iget-boolean p1, p0, Lck$i;->i:Z

    return p1
.end method
