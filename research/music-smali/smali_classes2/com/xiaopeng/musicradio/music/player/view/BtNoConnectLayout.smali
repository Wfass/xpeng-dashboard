.class public Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "BtNoConnectLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/player/view/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/player/view/c;",
        "Lcom/xiaopeng/musicradio/music/player/presenter/BtNoConnectPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/player/view/c;"
    }
.end annotation


# instance fields
.field private mBtConnect:Lcom/xiaopeng/xui/widget/XButton;

.field private mTipTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTipTv:Lcom/xiaopeng/xui/widget/XTextView;

.field private mValue:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/BtNoConnectPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/BtNoConnectPresenter;
    .locals 1

    .line 44
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/BtNoConnectPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/BtNoConnectPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 49
    sget v0, Lbez$d;->btn_bt_connect:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->mBtConnect:Lcom/xiaopeng/xui/widget/XButton;

    .line 50
    sget v0, Lbez$d;->tv_bt_connect_no_sub_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->mTipTv:Lcom/xiaopeng/xui/widget/XTextView;

    .line 51
    sget v0, Lbez$d;->tv_bt_connect_no_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->mTipTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    .line 52
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->mValue:Z

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->showNoPhoneMusicTip(Z)V

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->setClipChildren(Z)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 88
    sget v0, Lbez$f;->layout_bt_no_connect:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 58
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onAttachedToWindow()V

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 61
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 62
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 64
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->mBtConnect:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method public showNoPhoneMusicTip(Z)V
    .locals 1

    .line 92
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->mValue:Z

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->mTipTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 97
    sget p1, Lbez$g;->music_play_on_phone_app:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->mTipTv:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->mBtConnect:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    goto :goto_0

    .line 101
    :cond_1
    sget p1, Lbez$g;->bt_connect_no_title:I

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->mTipTv:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lbez$g;->bt_connect_no_sub_title:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->mTipTv:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->mBtConnect:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateBtLoadingState(I)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->mValue:Z

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->showNoPhoneMusicTip(Z)V

    goto :goto_1

    .line 111
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->mTipTv:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lbez$g;->bt_phone_music_connecting_tips:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->mBtConnect:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    :goto_1
    return-void
.end method
