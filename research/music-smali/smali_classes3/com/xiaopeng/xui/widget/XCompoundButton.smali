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

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 41
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XCompoundButton;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 42
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/xui/widget/XCompoundButton$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/XCompoundButton$1;-><init>(Lcom/xiaopeng/xui/widget/XCompoundButton;)V

    invoke-virtual {p1, p2}, Lapr;->b(Lapr$a;)V

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XCompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private setFromUser(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mFromUser:Z

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 96
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->releaseVui()V

    return-void
.end method

.method public isFromUser()Z
    .locals 1

    .line 113
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
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->vuiViewAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 137
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onVisibilityChanged(Landroid/view/View;I)V

    .line 138
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XCompoundButton;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public performClick()Z
    .locals 2

    const/4 v0, 0x1

    .line 102
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setFromUser(Z)V

    .line 103
    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result v0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setFromUser(Z)V

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->isChecked()Z

    move-result v0

    .line 88
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eq v0, p1, :cond_0

    .line 90
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->updateVui(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 119
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 121
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 123
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lapr;->b(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 82
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
