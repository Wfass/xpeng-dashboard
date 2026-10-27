.class public Lcom/xiaopeng/xui/widget/XImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "XImageView.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/a;


# instance fields
.field protected abs:Lcom/xiaopeng/xui/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/a;->b(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XImageView;->abs:Lcom/xiaopeng/xui/view/a;

    .line 26
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XImageView;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/a;->a(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XImageView;->abs:Lcom/xiaopeng/xui/view/a;

    .line 32
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XImageView;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 33
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

    .line 82
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XImageView;->qV()V

    .line 84
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onAttachedToWindow()V

    .line 58
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onDetachedFromWindow()V

    .line 66
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->qN()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->qN()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setImageResource(I)V

    .line 41
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setSelected(Z)V

    .line 77
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->e(Landroid/view/View;Z)V

    .line 78
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 71
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->e(Landroid/view/View;I)V

    .line 72
    return-void
.end method
