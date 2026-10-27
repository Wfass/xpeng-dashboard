.class public Lanb;
.super Ljava/lang/Object;
.source "SimpleBoundaryDecider.java"

# interfaces
.implements Lana;


# instance fields
.field public a:Landroid/graphics/PointF;

.field public b:Lana;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lanb;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Z
    .locals 1

    .line 24
    iget-object v0, p0, Lanb;->b:Lana;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p1}, Lana;->a(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 28
    :cond_0
    iget-object v0, p0, Lanb;->a:Landroid/graphics/PointF;

    invoke-static {p1, v0}, Lane;->a(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/view/View;)Z
    .locals 2

    .line 33
    iget-object v0, p0, Lanb;->b:Lana;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p1}, Lana;->b(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 37
    :cond_0
    iget-object v0, p0, Lanb;->a:Landroid/graphics/PointF;

    iget-boolean v1, p0, Lanb;->c:Z

    invoke-static {p1, v0, v1}, Lane;->a(Landroid/view/View;Landroid/graphics/PointF;Z)Z

    move-result p1

    return p1
.end method
