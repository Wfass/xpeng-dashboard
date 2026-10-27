.class public Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XQuickSideBarTipsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$a;
    }
.end annotation


# instance fields
.field private aji:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;

.field private ajj:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$a;

.field private ajk:J

.field private ajl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->ajl:Z

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->bq(Z)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->ajl:Z

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;)Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$a;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->ajj:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$a;

    return-object p0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 40
    new-instance v0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$a;-><init>(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->ajj:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$a;

    .line 41
    if-eqz p2, :cond_0

    .line 42
    new-instance v0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->aji:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 44
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarTipsDelayTime:I

    const/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->ajk:J

    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->aji:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    :cond_0
    return-void
.end method

.method private bq(Z)V
    .locals 2

    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$1;-><init>(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;)V

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 110
    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->setVisibility(I)V

    .line 113
    :goto_0
    return-void
.end method


# virtual methods
.method public setAnimationHideTips(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->ajl:Z

    .line 53
    return-void
.end method

.method public setDelayedTime(J)V
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->ajk:J

    .line 61
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->aji:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->setText(Ljava/lang/String;)V

    .line 57
    return-void
.end method
