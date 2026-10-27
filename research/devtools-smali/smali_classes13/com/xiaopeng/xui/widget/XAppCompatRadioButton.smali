.class public Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;
.super Landroidx/appcompat/widget/AppCompatRadioButton;
.source "XAppCompatRadioButton.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/a;


# instance fields
.field protected abs:Lcom/xiaopeng/xui/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/a;->b(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->abs:Lcom/xiaopeng/xui/view/a;

    .line 25
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/a;->a(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->abs:Lcom/xiaopeng/xui/view/a;

    .line 31
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 32
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

    .line 75
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->qV()V

    .line 77
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatRadioButton;->onAttachedToWindow()V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onAttachedToWindow()V

    .line 48
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatRadioButton;->onDetachedFromWindow()V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onDetachedFromWindow()V

    .line 56
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->isChecked()Z

    move-result v0

    .line 67
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 68
    if-eq v0, p1, :cond_0

    .line 69
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->l(Landroid/view/View;)V

    .line 71
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setVisibility(I)V

    .line 61
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;->e(Landroid/view/View;I)V

    .line 62
    return-void
.end method
