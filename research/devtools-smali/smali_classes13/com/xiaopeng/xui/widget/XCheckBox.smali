.class public Lcom/xiaopeng/xui/widget/XCheckBox;
.super Lcom/xiaopeng/xui/widget/XCompoundButton;
.source "XCheckBox.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 19
    sget v0, Lcom/xiaopeng/xpui/R$style;->XCheckBox:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XCheckBox;->setClickable(Z)V

    .line 25
    return-void
.end method
