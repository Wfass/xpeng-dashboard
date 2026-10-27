.class public Lcom/xiaopeng/xui/widget/XRecyclerView;
.super Lcom/xiaopeng/xui/vui/VuiRecyclerView;
.source "XRecyclerView.java"


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XRecyclerView;->init(Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/xiaopeng/xui/widget/XRecyclerView;->init(Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xui/widget/XRecyclerView;->init(Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XRecyclerView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    const-string v1, "extra_global"

    const-string v2, "scrollbarThumbVertical"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->asMaps(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XRecyclerView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->onAttachedToWindow()V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRecyclerView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRecyclerView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 56
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 44
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRecyclerView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRecyclerView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 48
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->onDetachedFromWindow()V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRecyclerView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRecyclerView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 64
    :cond_0
    return-void
.end method
