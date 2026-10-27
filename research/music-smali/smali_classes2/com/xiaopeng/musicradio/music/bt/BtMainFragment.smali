.class public Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "BtMainFragment.java"

# interfaces
.implements Lbfi;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/fragment/btmain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lbfi;",
        "Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;",
        ">;",
        "Lbfi;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BtMainFragent"


# instance fields
.field private mBtnChange:Lcom/xiaopeng/xui/widget/XButton;

.field private mBtnOpen:Lcom/xiaopeng/xui/widget/XButton;

.field private mImgLogo:Lcom/xiaopeng/xui/widget/XImageView;

.field protected mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field protected mLeftView:Landroid/view/View;

.field private mPlayBtn:Lcom/xiaopeng/xui/widget/XButton;

.field protected mRightContentLayout:Landroid/widget/LinearLayout;

.field private mTvPlay:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTvTips1:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTvTips2:Lcom/xiaopeng/xui/widget/XLinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private setPlayState(Z)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mPlayBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mPlayBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {p1, v0}, Lbxo;->a(ILcom/xiaopeng/xui/widget/XButton;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mPlayBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {p1, v0}, Lbxo;->a(ILcom/xiaopeng/xui/widget/XButton;)V

    :goto_0
    return-void
.end method

.method private updateScene()V
    .locals 6

    .line 197
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/xiaopeng/xui/widget/XButton;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mBtnChange:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mBtnOpen:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mPlayBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;
    .locals 1

    .line 128
    new-instance v0, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 68
    sget v0, Lbez$d;->play_txt:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mTvPlay:Lcom/xiaopeng/xui/widget/XTextView;

    .line 69
    sget v0, Lbez$d;->img_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mImgLogo:Lcom/xiaopeng/xui/widget/XImageView;

    .line 70
    sget v0, Lbez$d;->tv_tips1:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mTvTips1:Lcom/xiaopeng/xui/widget/XTextView;

    .line 71
    sget v0, Lbez$d;->tv_tips2:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mTvTips2:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 72
    sget v0, Lbez$d;->btn_open:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mBtnOpen:Lcom/xiaopeng/xui/widget/XButton;

    .line 73
    sget v0, Lbez$d;->btn_change:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mBtnChange:Lcom/xiaopeng/xui/widget/XButton;

    .line 74
    sget v0, Lbez$d;->btn_play:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mPlayBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 75
    sget v0, Lbez$d;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 63
    sget v0, Lbez$f;->bt_fragment_main:I

    return v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Bluetooth_Main_Page"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 207
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 223
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->f()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 212
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onPause()V

    .line 213
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_BT"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->f()V

    .line 103
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_BT"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method public refresMusicNoConnect()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mTvTips1:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mTvTips1:Lcom/xiaopeng/xui/widget/XTextView;

    sget v2, Lbez$g;->bt_main_tips3:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mTvTips2:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mBtnChange:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mBtnOpen:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mPlayBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mImgLogo:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->x_ic_emptystate_nobluetooth:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 176
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->updateScene()V

    return-void
.end method

.method public refresNoConnect()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mTvTips1:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mTvTips1:Lcom/xiaopeng/xui/widget/XTextView;

    sget v2, Lbez$g;->bt_main_no_title:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mTvTips2:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mBtnChange:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mBtnOpen:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mPlayBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mImgLogo:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->x_ic_emptystate_nobluetooth:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 150
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->updateScene()V

    return-void
.end method

.method public refresNoPhoneMusic()V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mTvTips1:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mTvTips1:Lcom/xiaopeng/xui/widget/XTextView;

    sget v2, Lbez$g;->bt_main_tips1:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mTvTips2:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mPlayBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mPlayBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v3, 0x3

    invoke-static {v3, v0}, Lbxo;->a(ILcom/xiaopeng/xui/widget/XButton;)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mBtnChange:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mBtnOpen:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mImgLogo:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->x_ic_emptystate_nobluetooth:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 163
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->updateScene()V

    return-void
.end method

.method public refreshPlayState(ZZ)V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mTvTips1:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mTvTips2:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mBtnChange:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mBtnOpen:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mImgLogo:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->x_ic_emptystate_bluetoothlink:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    if-eqz p1, :cond_1

    .line 187
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->setPlayState(Z)V

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mTvPlay:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz p2, :cond_0

    sget p2, Lbez$g;->bt_main_tips2:I

    goto :goto_0

    :cond_0
    sget p2, Lbez$g;->bt_main_tips4:I

    :goto_0
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_1

    .line 190
    :cond_1
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->setPlayState(Z)V

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mTvPlay:Lcom/xiaopeng/xui/widget/XTextView;

    sget p2, Lbez$g;->bt_main_tips5:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 193
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->updateScene()V

    return-void
.end method

.method protected reviewOnScreenChange()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mRightContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 231
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 233
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 234
    sget v1, Lbez$d;->left_view:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 237
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 238
    sget v1, Lbez$d;->item_space:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mRightContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->f()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mBtnOpen:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment$2;-><init>(Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mBtnChange:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment$3;-><init>(Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    .line 81
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->k()I

    move-result v0

    const-string v1, "SELECT_MENU_SCENE"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mPlayBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment$1;-><init>(Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget v0, Lbez$d;->left_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mLeftView:Landroid/view/View;

    .line 89
    sget v0, Lbez$d;->item_space:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 90
    sget v0, Lbez$d;->right_content_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->mRightContentLayout:Landroid/widget/LinearLayout;

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->reviewOnScreenChange()V

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
