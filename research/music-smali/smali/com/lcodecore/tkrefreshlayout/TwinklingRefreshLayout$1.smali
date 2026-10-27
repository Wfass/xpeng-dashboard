.class Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$1;
.super Ljava/lang/Object;
.source "TwinklingRefreshLayout.java"

# interfaces
.implements Lcom/lcodecore/tkrefreshlayout/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$1;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$1;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$000(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lama;

    move-result-object v0

    invoke-interface {v0, p1}, Lama;->d(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 8

    .line 248
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$1;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$000(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lama;

    move-result-object v1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$1;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$100(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F

    move-result v6

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$1;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F

    move-result v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lama;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;Z)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$1;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$000(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lama;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lama;->a(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$1;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$000(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lama;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lama;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method
