.class Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;
.super Ljava/lang/Object;
.source "XSmartRefreshLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field curNum:I

.field positive:I

.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    .line 1575
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1584
    const/16 v0, 0x9

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->curNum:I

    .line 1585
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->positive:I

    return-void
.end method

.method private correctVal(I)I
    .locals 4
    .param p1, "val"    # I

    .line 1587
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1588
    if-lez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->positive:I

    .line 1590
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_2

    .line 1591
    return p1

    .line 1594
    :cond_2
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->curNum:I

    if-gtz v1, :cond_3

    .line 1595
    const/4 v0, 0x0

    return v0

    .line 1598
    :cond_3
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->positive:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->curNum:I

    mul-int/2addr v1, v2

    .line 1599
    .local v1, "res":I
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->curNum:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_4

    .line 1600
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->curNum:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->curNum:I

    goto :goto_1

    .line 1602
    :cond_4
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->curNum:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->curNum:I

    .line 1604
    :goto_1
    return v1
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 1578
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1580
    .local v0, "val":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->correctVal(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 1582
    return-void
.end method
