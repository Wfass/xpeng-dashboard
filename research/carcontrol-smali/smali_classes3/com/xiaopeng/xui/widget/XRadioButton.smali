.class public Lcom/xiaopeng/xui/widget/XRadioButton;
.super Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;
.source "XRadioButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007e

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XRadioButton;->setClickable(Z)V

    return-void
.end method
