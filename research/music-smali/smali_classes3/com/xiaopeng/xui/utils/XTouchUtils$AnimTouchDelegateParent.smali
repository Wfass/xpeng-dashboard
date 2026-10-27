.class abstract Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegateParent;
.super Landroid/view/TouchDelegate;
.source "XTouchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/utils/XTouchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AnimTouchDelegateParent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParamsParent;",
        ">",
        "Landroid/view/TouchDelegate;"
    }
.end annotation


# instance fields
.field protected mDelegate:Landroid/view/TouchDelegate;

.field protected mDelegateView:Landroid/view/View;

.field protected mParamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


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
            "TT;>;)V"
        }
    .end annotation

    .line 310
    invoke-direct {p0, p1, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 311
    iput-object p2, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegateParent;->mDelegateView:Landroid/view/View;

    .line 312
    iput-object p3, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegateParent;->mDelegate:Landroid/view/TouchDelegate;

    .line 313
    iput-object p4, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegateParent;->mParamList:Ljava/util/List;

    .line 314
    iget-object p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegateParent;->mDelegateView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method protected abstract doAnim(ZLandroid/view/MotionEvent;)V
.end method

.method public getDelegate()Landroid/view/TouchDelegate;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegateParent;->mDelegate:Landroid/view/TouchDelegate;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegateParent;->doAnim(ZLandroid/view/MotionEvent;)V

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegateParent;->doAnim(ZLandroid/view/MotionEvent;)V

    .line 328
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegateParent;->mDelegate:Landroid/view/TouchDelegate;

    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {v0, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method
