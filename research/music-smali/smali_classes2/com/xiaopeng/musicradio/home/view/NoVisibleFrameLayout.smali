.class public Lcom/xiaopeng/musicradio/home/view/NoVisibleFrameLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "NoVisibleFrameLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 36
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    return-void
.end method
