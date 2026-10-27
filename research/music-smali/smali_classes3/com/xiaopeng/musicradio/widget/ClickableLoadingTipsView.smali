.class public Lcom/xiaopeng/musicradio/widget/ClickableLoadingTipsView;
.super Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
.source "ClickableLoadingTipsView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/ClickableLoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/widget/ClickableLoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/ClickableLoadingTipsView;->setAutoClickLoadingEnable(Z)V

    return-void
.end method
