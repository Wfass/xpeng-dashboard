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
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->isAnimationHideTips:Z

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;

    .line 18
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->isAnimationHideTips:Z

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;
    .param p1, "x1"    # Z

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->hideView(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;)Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mDelayHandler:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;

    return-object v0
.end method

.method private hideView(Z)V
    .locals 3
    .param p1, "isAnimate"    # Z

    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$1;-><init>(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 110
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->setVisibility(I)V

    .line 113
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    new-instance v0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;-><init>(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mDelayHandler:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;

    .line 41
    if-eqz p2, :cond_0

    .line 42
    new-instance v0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mTipsView:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarTipsDelayTime:I

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mDelayedTime:J

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mTipsView:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public display(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .line 64
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 65
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->setVisibility(I)V

    .line 66
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mDelayHandler:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;->removeMessages(I)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mDelayHandler:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;

    iget-wide v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mDelayedTime:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 70
    :goto_0
    return-void
.end method

.method public setAnimationHideTips(Z)V
    .locals 0
    .param p1, "animationHideTips"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->isAnimationHideTips:Z

    .line 53
    return-void
.end method

.method public setDelayedTime(J)V
    .locals 0
    .param p1, "delayedTime"    # J

    .line 60
    iput-wide p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mDelayedTime:J

    .line 61
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->mTipsView:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->setText(Ljava/lang/String;)V

    .line 57
    return-void
.end method
