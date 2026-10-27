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
    .locals 0

    .line 1575
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x9

    .line 1584
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->curNum:I

    const/4 p1, 0x1

    .line 1585
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->positive:I

    return-void
.end method

.method private correctVal(I)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-lez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 1588
    :goto_0
    iput v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->positive:I

    .line 1590
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_2

    return p1

    .line 1594
    :cond_2
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->curNum:I

    if-gtz p1, :cond_3

    const/4 p1, 0x0

    return p1

    .line 1598
    :cond_3
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->positive:I

    mul-int/2addr v1, p1

    const/4 v2, 0x3

    if-gt p1, v2, :cond_4

    sub-int/2addr p1, v0

    .line 1600
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->curNum:I

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x2

    .line 1602
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->curNum:I

    :goto_1
    return v1
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1578
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1580
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$4;->correctVal(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Laml;->moveSpinner(IZ)Laml;

    return-void
.end method
