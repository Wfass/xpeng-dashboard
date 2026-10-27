.class public Lcom/xiaopeng/xui/widget/XLinearLayout;
.super Landroid/widget/LinearLayout;
.source "XLinearLayout.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/a;


# instance fields
.field protected abs:Lcom/xiaopeng/xui/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/a;->a(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLinearLayout;->abs:Lcom/xiaopeng/xui/view/a;

    .line 37
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 38
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

    .line 91
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->qV()V

    .line 93
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLinearLayout;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLinearLayout;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onAttachedToWindow()V

    .line 55
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLinearLayout;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLinearLayout;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 47
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLinearLayout;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLinearLayout;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onDetachedFromWindow()V

    .line 63
    :cond_0
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    .line 80
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zx:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->a(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 81
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 86
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zx:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->a(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 87
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 74
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->e(Landroid/view/View;Z)V

    .line 75
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 68
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->e(Landroid/view/View;I)V

    .line 69
    return-void
.end method
