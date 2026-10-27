.class public Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;
.source "DirDetailActivity.java"

# interfaces
.implements Lbqu;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/usbview/usb_dir_detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity<",
        "Lbqu;",
        "Lcom/xiaopeng/musicradio/usb/dir/detail/present/UsbDirDetailPresenter;",
        ">;",
        "Lbqu;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

.field private mCurrentState:I

.field private mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field public mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

.field private mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

.field private mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

.field private vuilabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mInfos:Ljava/util/List;

    const/4 v0, 0x2

    .line 74
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mCurrentState:I

    const/4 v1, 0x3

    .line 78
    new-array v1, v1, [Ljava/lang/String;

    sget v2, Lcom/xiaopeng/musicradio/usb/a$d;->bt_play_all:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/xiaopeng/musicradio/usb/a$d;->bt_continue_all:I

    .line 79
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget v2, Lcom/xiaopeng/musicradio/usb/a$d;->vui_label_stop:I

    .line 80
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->vuilabels:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;)Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;)Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    return-object p0
.end method

.method private initBinder()V
    .locals 3

    .line 135
    new-instance v0, Lbqs;

    invoke-direct {v0}, Lbqs;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v2, Lbqv;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 137
    new-instance v0, Lbqt;

    invoke-direct {v0}, Lbqt;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v2, Lbqw;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemViewCacheSize(I)V

    return-void
.end method

.method private resetPlayAll()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setPlayState(I)V

    return-void
.end method

.method private updatePlayAll()V
    .locals 5

    .line 226
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->isPlayCurrentCollect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v0

    .line 230
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setPlayState(I)V

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_3

    :cond_0
    move v1, v2

    goto :goto_0

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->resetPlayAll()V

    goto :goto_0

    .line 240
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->resetPlayAll()V

    .line 242
    :cond_3
    :goto_0
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mCurrentState:I

    if-eq v1, v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->vuilabels:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lbxx;->SETVALUE:Lbxx;

    invoke-virtual {v4}, Lbxx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v4}, Lbxx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {p0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->getSceneId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 245
    iput v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mCurrentState:I

    :cond_4
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->createPresenter()Lcom/xiaopeng/musicradio/usb/dir/detail/present/UsbDirDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/usb/dir/detail/present/UsbDirDetailPresenter;
    .locals 1

    .line 85
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/detail/present/UsbDirDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/present/UsbDirDetailPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 2

    .line 95
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->ms_top_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    .line 96
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->dir_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 97
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->play_all:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    .line 98
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->loadingview:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    sget v1, Lcom/xiaopeng/musicradio/usb/a$d;->no_usb_music:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(I)V

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 90
    sget v0, Lcom/xiaopeng/musicradio/usb/a$c;->layout_usb_dir_detail:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public isPlayCurrentCollect()Z
    .locals 3

    .line 255
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    .line 257
    const-class v2, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usb_dir_prefix_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    .line 266
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->onResume()V

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->updatePlayAll()V

    :cond_0
    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 280
    invoke-virtual {p2, p2}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->vuilabels:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_4

    .line 282
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 283
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayText()Ljava/lang/String;

    move-result-object p2

    sget v1, Lcom/xiaopeng/musicradio/usb/a$d;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 294
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 295
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->performClick()Z

    goto :goto_1

    .line 297
    :cond_1
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    sget v0, Lcom/xiaopeng/musicradio/usb/a$d;->vui_feed_back_pause:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p2

    .line 298
    invoke-static {p0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 285
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayText()Ljava/lang/String;

    move-result-object p2

    sget v1, Lcom/xiaopeng/musicradio/usb/a$d;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 286
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    sget v0, Lcom/xiaopeng/musicradio/usb/a$d;->vui_feed_back_play:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p2

    .line 287
    invoke-static {p0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 289
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 290
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->performClick()Z

    :cond_4
    :goto_1
    return-void
.end method

.method public setListener()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity$1;-><init>(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity$2;-><init>(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setView()V
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->showRtLayout(Z)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v3, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    const/16 v4, 0xc

    const/16 v5, 0x64

    invoke-direct {v3, v4, v5, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->enableVuiInvisibleFeature(I)V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mList:Ljava/util/List;

    .line 115
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    .line 116
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->initBinder()V

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_dir_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbne;->c(Ljava/lang/String;)Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->showData(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->vuilabels:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lbxx;->SETVALUE:Lbxx;

    invoke-virtual {v5}, Lbxx;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v5}, Lbxx;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->enableVuiInvisibleFeature(I)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->b(Lcom/xiaopeng/xui/vui/VuiView;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    sget-object v1, Lbyb;->LEVEL2:Lbyb;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setVuiPriority(Lbyb;)V

    return-void
.end method

.method public showData(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;)V
    .locals 12

    .line 183
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    .line 184
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->b()Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->a()Ljava/util/List;

    move-result-object v1

    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 187
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setVisibility(I)V

    return-void

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    .line 193
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 194
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 196
    invoke-static {p1}, Lbrp;->a(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;)Ljava/util/List;

    move-result-object p1

    .line 197
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 198
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mInfos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v2, v3

    .line 199
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 200
    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mList:Ljava/util/List;

    new-instance v5, Lbqv;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->getSceneId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v2, v7}, Lbqv;-><init>(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;ILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 204
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mList:Ljava/util/List;

    new-instance v11, Lbqw;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mInfos:Ljava/util/List;

    iget-object v7, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int v8, v3, v4

    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->getSceneId()Ljava/lang/String;

    move-result-object v10

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lbqw;-><init>(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/util/List;Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;IILjava/lang/String;)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/util/List;)V

    .line 207
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 208
    invoke-static {p1}, Lbrp;->a(Ljava/util/List;)I

    move-result p1

    .line 209
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->scrollToPosition(I)V

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setCountText(I)V

    .line 211
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->updatePlayAll()V

    return-void
.end method

.method public showLoadingView()V
    .locals 0

    return-void
.end method

.method public showNoDataView()V
    .locals 0

    .line 179
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->finish()V

    return-void
.end method

.method public updateLogo()V
    .locals 0

    return-void
.end method

.method public updatePlayState()V
    .locals 0

    .line 216
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->updatePlayAll()V

    return-void
.end method
