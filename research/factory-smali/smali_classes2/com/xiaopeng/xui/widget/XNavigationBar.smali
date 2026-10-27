.class public Lcom/xiaopeng/xui/widget/XNavigationBar;
.super Lcom/xiaopeng/xui/widget/XRadioGroup;
.source "XNavigationBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 10
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XRadioGroup;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XRadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method
