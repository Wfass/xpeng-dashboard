.class public Lcom/xiaopeng/xui/widget/XEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "XEditText.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XEditText;->init(Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/xiaopeng/xui/widget/XEditText;->init(Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xui/widget/XEditText;->init(Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method private disableTextActionModeMenu()V
    .locals 1

    .line 51
    new-instance v0, Lcom/xiaopeng/xui/widget/XEditText$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XEditText$1;-><init>(Lcom/xiaopeng/xui/widget/XEditText;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 72
    new-instance v0, Lcom/xiaopeng/xui/widget/XEditText$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XEditText$2;-><init>(Lcom/xiaopeng/xui/widget/XEditText;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XEditText;->setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 94
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XEditText;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    const-string v1, "extra_global"

    const-string v2, "scrollbarThumbVertical"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->asMaps(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 46
    :cond_0
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XEditText;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XEditText;->disableTextActionModeMenu()V

    .line 48
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

    .line 128
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XEditText;->releaseVui()V

    .line 130
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onAttachedToWindow()V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 110
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 98
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 102
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 114
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onDetachedFromWindow()V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 118
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 154
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onVisibilityChanged(Landroid/view/View;I)V

    .line 155
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XEditText;->onVisibilityChangedThemeRefresh(I)V

    .line 156
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 134
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setEnabled(Z)V

    .line 135
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    if-eqz p1, :cond_0

    .line 137
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XEditText;->setAlpha(F)V

    goto :goto_0

    .line 139
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XEditText;->setAlpha(F)V

    .line 142
    :cond_1
    :goto_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 149
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 122
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setVisibility(I)V

    .line 123
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XEditText;->setVuiVisibility(Landroid/view/View;I)V

    .line 124
    return-void
.end method
