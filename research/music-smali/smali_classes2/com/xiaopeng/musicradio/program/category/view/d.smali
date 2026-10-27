.class public Lcom/xiaopeng/musicradio/program/category/view/d;
.super Landroid/widget/LinearLayout;
.source "RdDetailXHeaderView.java"

# interfaces
.implements Lcom/lcodecore/tkrefreshlayout/b;


# instance fields
.field private a:Lcom/xiaopeng/xui/widget/XLoading;

.field private b:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/category/view/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/category/view/d;->setOrientation(I)V

    const/16 v1, 0x11

    .line 50
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/program/category/view/d;->setGravity(I)V

    .line 51
    new-instance v1, Lcom/xiaopeng/xui/widget/XLoading;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xui/widget/XLoading;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->a:Lcom/xiaopeng/xui/widget/XLoading;

    .line 52
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->a:Lcom/xiaopeng/xui/widget/XLoading;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setType(I)V

    .line 53
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x48

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->a:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p0, v3, v1}, Lcom/xiaopeng/musicradio/program/category/view/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v1, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->b:Lcom/xiaopeng/xui/widget/XTextView;

    .line 56
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->b:Lcom/xiaopeng/xui/widget/XTextView;

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->loading_string:I

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->b:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->b:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lcom/xiaopeng/musicradio/program/b$a;->x_theme_text_02:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->b:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/view/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/program/b$b;->x_font_body_02_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    .line 60
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    .line 61
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->b:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/musicradio/program/category/view/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 104
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->b:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/view/d;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/program/b$a;->x_theme_text_02:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    return-void
.end method

.method public onFinish(Lcom/lcodecore/tkrefreshlayout/c;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->a:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XLoading;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/program/category/view/d$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/program/category/view/d$1;-><init>(Lcom/xiaopeng/musicradio/program/category/view/d;Lcom/lcodecore/tkrefreshlayout/c;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onPullReleasing(FFF)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->b:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    return-void
.end method

.method public onPullingDown(FFF)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->a:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XLoading;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->a:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->a:Lcom/xiaopeng/xui/widget/XLoading;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p1, p3}, Lgj;->e(Landroid/view/View;F)V

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->a:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-static {p1, p3}, Lgj;->f(Landroid/view/View;F)V

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->b:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->a:Lcom/xiaopeng/xui/widget/XLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->b:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->a:Lcom/xiaopeng/xui/widget/XLoading;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgj;->e(Landroid/view/View;F)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->a:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-static {v0, v1}, Lgj;->f(Landroid/view/View;F)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->a:Lcom/xiaopeng/xui/widget/XLoading;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lgj;->c(Landroid/view/View;F)V

    return-void
.end method

.method public startAnim(FF)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->a:Lcom/xiaopeng/xui/widget/XLoading;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->a:Lcom/xiaopeng/xui/widget/XLoading;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lgj;->e(Landroid/view/View;F)V

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/d;->a:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-static {p1, p2}, Lgj;->f(Landroid/view/View;F)V

    return-void
.end method
