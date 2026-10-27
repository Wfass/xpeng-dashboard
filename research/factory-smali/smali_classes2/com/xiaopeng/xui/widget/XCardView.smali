.class public Lcom/xiaopeng/xui/widget/XCardView;
.super Landroidx/cardview/widget/CardView;
.source "XCardView.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 30
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XCardView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x0

    invoke-static {p0, p2, p3, v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 36
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XCardView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 37
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

    .line 83
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCardView;->releaseVui()V

    .line 85
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->onAttachedToWindow()V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 53
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 41
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->onDetachedFromWindow()V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 61
    :cond_0
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 71
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onViewAdded(Landroid/view/View;)V

    .line 72
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xui/widget/XCardView;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 73
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 77
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onViewRemoved(Landroid/view/View;)V

    .line 78
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xui/widget/XCardView;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 79
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 65
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 66
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XCardView;->setVuiVisibility(Landroid/view/View;I)V

    .line 67
    return-void
.end method
