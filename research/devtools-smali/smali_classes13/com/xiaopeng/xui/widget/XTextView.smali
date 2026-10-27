.class public Lcom/xiaopeng/xui/widget/XTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "XTextView.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/a;


# instance fields
.field protected abs:Lcom/xiaopeng/xui/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/a;->b(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTextView;->abs:Lcom/xiaopeng/xui/view/a;

    .line 22
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XTextView;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/a;->a(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTextView;->abs:Lcom/xiaopeng/xui/view/a;

    .line 28
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XTextView;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 29
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

    .line 69
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextView;->qV()V

    .line 71
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onAttachedToWindow()V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onAttachedToWindow()V

    .line 45
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextView;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onDetachedFromWindow()V

    .line 53
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    .line 64
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->e(Landroid/view/View;Z)V

    .line 65
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 58
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->e(Landroid/view/View;I)V

    .line 59
    return-void
.end method
