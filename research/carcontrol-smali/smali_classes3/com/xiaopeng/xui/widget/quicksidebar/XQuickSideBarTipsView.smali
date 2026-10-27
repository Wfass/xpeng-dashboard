.class public Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XQuickSideBarTipsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;
    }
.end annotation


# static fields
.field private static final SIDEBAR_TIPS_DELAY_CODE:I = 0x1


# instance fields
.field private isAnimationHideTips:Z

.field private mDelayHandler:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;

.field private mDelayedTime:J

.field private mTipsView:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 25
    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->isAnimationHideTips:Z

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->isAnimationHideTips:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->hideView(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;)Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mDelayHandler:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;

    return-object p0
.end method

.method private hideView(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$1;-><init>(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;)V

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 112
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 41
    new-instance v0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;-><init>(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mDelayHandler:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;

    if-eqz p2, :cond_0

    .line 43
    new-instance v0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mTipsView:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 45
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarTipsDelayTime:I

    const/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mDelayedTime:J

    .line 46
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mTipsView:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public display(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mDelayHandler:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;->removeMessages(I)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mDelayHandler:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;

    iget-wide v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mDelayedTime:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public setAnimationHideTips(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->isAnimationHideTips:Z

    return-void
.end method

.method public setDelayedTime(J)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mDelayedTime:J

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mTipsView:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->setText(Ljava/lang/String;)V

    return-void
.end method
