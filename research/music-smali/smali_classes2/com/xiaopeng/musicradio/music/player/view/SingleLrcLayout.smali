.class public Lcom/xiaopeng/musicradio/music/player/view/SingleLrcLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "SingleLrcLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/player/view/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/player/view/j;",
        "Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/player/view/j;"
    }
.end annotation


# instance fields
.field private mLrcTxt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/SingleLrcLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;
    .locals 1

    .line 32
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 37
    sget v0, Lbez$d;->txt_lrc:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/SingleLrcLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SingleLrcLayout;->mLrcTxt:Landroid/widget/TextView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 52
    sget v0, Lbez$f;->layout_single_lrc:I

    return v0
.end method

.method public refreshLrc(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SingleLrcLayout;->mLrcTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method
