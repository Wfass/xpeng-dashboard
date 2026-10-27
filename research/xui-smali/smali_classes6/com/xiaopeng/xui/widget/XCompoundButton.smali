.class public Lcom/xiaopeng/xui/widget/XCompoundButton;
.super Landroid/widget/CompoundButton;
.source "XCompoundButton.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field private buttonDrawable:Landroid/graphics/drawable/Drawable;

.field private mFromUser:Z

.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 41
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XCompoundButton;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 42
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/widget/XCompoundButton$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/XCompoundButton$1;-><init>(Lcom/xiaopeng/xui/widget/XCompoundButton;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XCompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XCompoundButton;

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private setFromUser(Z)V
    .locals 0
    .param p1, "fromUser"    # Z

    .line 107
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mFromUser:Z

    .line 108
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

    .line 94
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->releaseVui()V

    .line 96
    return-void
.end method

.method public isFromUser()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mFromUser:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 67
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 55
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 59
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 75
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 135
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onVisibilityChanged(Landroid/view/View;I)V

    .line 136
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XCompoundButton;->onVisibilityChangedThemeRefresh(I)V

    .line 137
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setFromUser(Z)V

    .line 101
    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result v0

    .line 102
    .local v0, "handled":Z
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setFromUser(Z)V

    .line 103
    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->isChecked()Z

    move-result v0

    .line 86
    .local v0, "isChecked":Z
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 87
    if-eq v0, p1, :cond_0

    .line 88
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->updateVui(Landroid/view/View;)V

    .line 90
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 116
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 117
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    if-eqz p1, :cond_0

    .line 119
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setAlpha(F)V

    goto :goto_0

    .line 121
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setAlpha(F)V

    .line 124
    :cond_1
    :goto_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 131
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 79
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 80
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setVuiVisibility(Landroid/view/View;I)V

    .line 81
    return-void
.end method
