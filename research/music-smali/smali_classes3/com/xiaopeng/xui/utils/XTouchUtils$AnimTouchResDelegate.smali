.class Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchResDelegate;
.super Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegateParent;
.source "XTouchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/utils/XTouchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimTouchResDelegate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegateParent<",
        "Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/TouchDelegate;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/view/View;",
            "Landroid/view/TouchDelegate;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;",
            ">;)V"
        }
    .end annotation

    .line 497
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegateParent;-><init>(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/TouchDelegate;Ljava/util/List;)V

    return-void
.end method

.method private doAnim(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;Z)V
    .locals 2

    if-eqz p1, :cond_3

    .line 514
    invoke-virtual {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;->getTarget()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;->getTarget()Landroid/view/View;

    move-result-object v0

    .line 518
    invoke-virtual {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;->getDownRes()I

    move-result v1

    if-eqz p2, :cond_1

    .line 520
    invoke-virtual {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;->getUpRes()I

    move-result v1

    .line 523
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 524
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 528
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected doAnim(ZLandroid/view/MotionEvent;)V
    .locals 1

    .line 502
    iget-object p2, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchResDelegate;->mParamList:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 503
    iget-object p2, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchResDelegate;->mParamList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;

    .line 504
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchResDelegate;->doAnim(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 508
    iget-object p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchResDelegate;->mDelegateView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    return-void
.end method
