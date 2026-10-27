.class public abstract Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;
.super Ljava/lang/Object;
.source "SimpleSlider.java"

# interfaces
.implements Lxiaopeng/widget/SimpleSlider$TouchEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxiaopeng/widget/SimpleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleTouchEventHandler"
.end annotation


# instance fields
.field protected mSimpleSlider:Lxiaopeng/widget/SimpleSlider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected setProgress(FIZ)V
    .locals 1

    .line 1297
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    if-eqz v0, :cond_0

    .line 1298
    invoke-static {v0, p1, p2, p3}, Lxiaopeng/widget/SimpleSlider;->access$500(Lxiaopeng/widget/SimpleSlider;FIZ)V

    :cond_0
    return-void
.end method

.method public setSimpleSlider(Lxiaopeng/widget/SimpleSlider;)V
    .locals 0

    .line 1273
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    return-void
.end method

.method protected startDragDirectly()Z
    .locals 6

    .line 1277
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getScrollingContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1278
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v4, -0x1

    if-eqz v0, :cond_1

    .line 1279
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-nez v3, :cond_3

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v2

    :goto_3
    if-eqz v0, :cond_4

    .line 1281
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_4

    :cond_4
    move v5, v1

    :goto_4
    if-eqz v0, :cond_5

    .line 1282
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    if-nez v0, :cond_7

    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    move v0, v1

    goto :goto_7

    :cond_7
    :goto_6
    move v0, v2

    .line 1288
    :goto_7
    iget-object v4, p0, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v4}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v0, :cond_9

    goto :goto_8

    :cond_8
    if-nez v3, :cond_9

    :goto_8
    move v1, v2

    :cond_9
    return v1
.end method
