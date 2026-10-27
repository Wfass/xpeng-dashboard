.class public abstract Lcom/xiaopeng/xui/widget/XViewGroup;
.super Landroid/view/ViewGroup;
.source "XViewGroup.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/a;


# instance fields
.field protected abs:Lcom/xiaopeng/xui/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/a;->a(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XViewGroup;->abs:Lcom/xiaopeng/xui/view/a;

    .line 36
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XViewGroup;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

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

    .line 88
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->qV()V

    .line 90
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XViewGroup;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XViewGroup;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onAttachedToWindow()V

    .line 53
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XViewGroup;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XViewGroup;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XViewGroup;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XViewGroup;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onDetachedFromWindow()V

    .line 61
    :cond_0
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 78
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zx:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->a(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 79
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 84
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zx:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->a(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 85
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 72
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->e(Landroid/view/View;Z)V

    .line 73
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 66
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->e(Landroid/view/View;I)V

    .line 67
    return-void
.end method
