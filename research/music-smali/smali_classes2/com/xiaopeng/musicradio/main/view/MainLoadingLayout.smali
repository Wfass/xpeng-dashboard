.class public Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "MainLoadingLayout.java"


# instance fields
.field protected mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field protected mRightContentLayout:Landroid/view/View;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/main/a$e;->main_loading_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->left_content_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 42
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->right_content_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->mRightContentLayout:Landroid/view/View;

    .line 43
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->item_space:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->reviewOnScreenChange()V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->reviewOnScreenChange()V

    :cond_0
    return-void
.end method

.method protected reviewOnScreenChange()V
    .locals 8

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->mRightContentLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    iget-object v1, p0, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 61
    iget-object v2, p0, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x9

    const/16 v5, 0xe

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 63
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 64
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 65
    sget v2, Lbez$d;->left_view:I

    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 66
    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 69
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 70
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 71
    sget v2, Lbez$d;->item_space:I

    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72
    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 74
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->mRightContentLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
