.class public Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivityFrameLayout;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;
.source "BaseActivityFrameLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivityFrameLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivityFrameLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivityFrameLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivityFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/musicradio/widget/lifecycle/f;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivityFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/lifecycle/f;

    invoke-interface {v0, p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/f;->registerSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V

    :cond_0
    return-void
.end method
