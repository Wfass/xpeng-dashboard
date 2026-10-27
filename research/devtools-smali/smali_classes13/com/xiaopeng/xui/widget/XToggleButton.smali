.class public Lcom/xiaopeng/xui/widget/XToggleButton;
.super Landroid/widget/ToggleButton;
.source "XToggleButton.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/a;


# instance fields
.field protected abs:Lcom/xiaopeng/xui/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 27
    sget v0, Lcom/xiaopeng/xpui/R$style;->XButton_CompoundButton_ToggleButton_Fill:I

    sget v1, Lcom/xiaopeng/xpui/R$style;->XButton_CompoundButton_ToggleButton_Fill:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaopeng/xui/widget/XToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 23
    sget v0, Lcom/xiaopeng/xpui/R$style;->XButton_CompoundButton_ToggleButton_Fill:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/a;->a(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->abs:Lcom/xiaopeng/xui/view/a;

    .line 19
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XToggleButton;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 20
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

    .line 81
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XToggleButton;->qV()V

    .line 83
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/widget/ToggleButton;->onAttachedToWindow()V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onAttachedToWindow()V

    .line 48
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/ToggleButton;->onDetachedFromWindow()V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onDetachedFromWindow()V

    .line 56
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XToggleButton;->isChecked()Z

    move-result v0

    .line 73
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 74
    if-eq v0, p1, :cond_0

    .line 75
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XToggleButton;->l(Landroid/view/View;)V

    .line 77
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setSelected(Z)V

    .line 67
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XToggleButton;->e(Landroid/view/View;Z)V

    .line 68
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 61
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XToggleButton;->e(Landroid/view/View;I)V

    .line 62
    return-void
.end method
