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
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1293
    const/4 v0, 0x0

    return v0
.end method

.method protected setProgress(FIZ)V
    .locals 1
    .param p1, "slideDelta"    # F
    .param p2, "fromProgress"    # I
    .param p3, "touchEnd"    # Z

    .line 1297
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-static {v0, p1, p2, p3}, Lxiaopeng/widget/SimpleSlider;->access$500(Lxiaopeng/widget/SimpleSlider;FIZ)V

    .line 1300
    :cond_0
    return-void
.end method

.method public setSimpleSlider(Lxiaopeng/widget/SimpleSlider;)V
    .locals 0
    .param p1, "simpleSlider"    # Lxiaopeng/widget/SimpleSlider;

    .line 1273
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    .line 1274
    return-void
.end method

.method protected startDragDirectly()Z
    .locals 10

    .line 1277
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getScrollingContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1278
    .local v0, "scrollableParent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1279
    .local v3, "canScrollDown":Z
    :goto_0
    const/4 v4, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    .line 1280
    .local v5, "canScrollUp":Z
    :goto_1
    if-nez v3, :cond_3

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v6, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v2

    .line 1281
    .local v6, "canScrollVertical":Z
    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v2

    goto :goto_4

    :cond_4
    move v7, v1

    .line 1282
    .local v7, "canScrollRight":Z
    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_5

    :cond_5
    move v4, v1

    .line 1283
    .local v4, "canScrollLeft":Z
    :goto_5
    if-nez v4, :cond_7

    if-eqz v7, :cond_6

    goto :goto_6

    :cond_6
    move v8, v1

    goto :goto_7

    :cond_7
    :goto_6
    move v8, v2

    .line 1288
    .local v8, "canScrollHorizontal":Z
    :goto_7
    iget-object v9, p0, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v9}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez v8, :cond_8

    :goto_8
    move v1, v2

    goto :goto_9

    :cond_8
    goto :goto_9

    :cond_9
    if-nez v6, :cond_8

    goto :goto_8

    :goto_9
    return v1
.end method
