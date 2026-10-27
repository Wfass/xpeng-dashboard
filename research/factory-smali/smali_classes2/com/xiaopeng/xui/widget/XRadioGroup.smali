.class public Lcom/xiaopeng/xui/widget/XRadioGroup;
.super Landroid/widget/RadioGroup;
.source "XRadioGroup.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 29
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XRadioGroup;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 30
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

    .line 76
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XRadioGroup;->releaseVui()V

    .line 78
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 42
    invoke-super {p0}, Landroid/widget/RadioGroup;->onAttachedToWindow()V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 46
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 34
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 38
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/widget/RadioGroup;->onDetachedFromWindow()V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 54
    :cond_0
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 64
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->onViewAdded(Landroid/view/View;)V

    .line 65
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xui/widget/XRadioGroup;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 66
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 70
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->onViewRemoved(Landroid/view/View;)V

    .line 71
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xui/widget/XRadioGroup;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 72
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 58
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 59
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XRadioGroup;->setVuiVisibility(Landroid/view/View;I)V

    .line 60
    return-void
.end method
