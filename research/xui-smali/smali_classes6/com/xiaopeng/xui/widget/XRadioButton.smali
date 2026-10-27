.class public Lcom/xiaopeng/xui/widget/XRadioButton;
.super Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;
.source "XRadioButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 14
    const v0, 0x101007e

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XAppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XRadioButton;->setClickable(Z)V

    .line 20
    return-void
.end method
