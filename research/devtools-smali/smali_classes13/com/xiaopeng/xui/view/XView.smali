.class public Lcom/xiaopeng/xui/view/XView;
.super Landroid/view/View;
.source "XView.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/a;


# instance fields
.field protected abs:Lcom/xiaopeng/xui/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/a;->a(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/view/XView;->abs:Lcom/xiaopeng/xui/view/a;

    .line 33
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/view/XView;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 34
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

    .line 74
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/XView;->qV()V

    .line 76
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onAttachedToWindow()V

    .line 50
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onDetachedFromWindow()V

    .line 58
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 69
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/view/XView;->e(Landroid/view/View;Z)V

    .line 70
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/view/XView;->e(Landroid/view/View;I)V

    .line 64
    return-void
.end method
