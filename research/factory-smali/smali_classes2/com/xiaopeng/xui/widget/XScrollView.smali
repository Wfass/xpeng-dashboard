.class public Lcom/xiaopeng/xui/widget/XScrollView;
.super Landroid/widget/ScrollView;
.source "XScrollView.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcom/xiaopeng/xui/widget/XScrollView;->init(Landroid/util/AttributeSet;II)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, v0}, Lcom/xiaopeng/xui/widget/XScrollView;->init(Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XScrollView;->init(Landroid/util/AttributeSet;II)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    invoke-direct {p0, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XScrollView;->init(Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const-string v0, "extra_global"

    const-string v1, "scrollbarThumbVertical"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->asMaps(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 54
    :cond_0
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 101
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XScrollView;->releaseVui()V

    .line 103
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 71
    :cond_0
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "iVuiElementBuilder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XScrollView;->setVuiAction(Ljava/lang/String;)V

    .line 110
    :cond_1
    return-object v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 59
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 63
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 79
    :cond_0
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 89
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onViewAdded(Landroid/view/View;)V

    .line 90
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xui/widget/XScrollView;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 91
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 95
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onViewRemoved(Landroid/view/View;)V

    .line 96
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xui/widget/XScrollView;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 97
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 83
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 84
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->setVuiVisibility(Landroid/view/View;I)V

    .line 85
    return-void
.end method
