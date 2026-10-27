.class public Lcom/xiaopeng/xui/widget/XCompoundButton;
.super Landroid/widget/CompoundButton;
.source "XCompoundButton.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/a;


# instance fields
.field protected abs:Lcom/xiaopeng/xui/view/a;

.field private ada:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/a;->a(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->abs:Lcom/xiaopeng/xui/view/a;

    .line 35
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XCompoundButton;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private setFromUser(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->ada:Z

    .line 93
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

    .line 79
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->qV()V

    .line 81
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onAttachedToWindow()V

    .line 52
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 44
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onDetachedFromWindow()V

    .line 60
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setFromUser(Z)V

    .line 86
    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result v0

    .line 87
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setFromUser(Z)V

    .line 88
    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->isChecked()Z

    move-result v0

    .line 71
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 72
    if-eq v0, p1, :cond_0

    .line 73
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->l(Landroid/view/View;)V

    .line 75
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 65
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->e(Landroid/view/View;I)V

    .line 66
    return-void
.end method
