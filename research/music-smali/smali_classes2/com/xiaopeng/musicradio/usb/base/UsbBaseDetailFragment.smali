.class public abstract Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "UsbBaseDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;>",
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "TUIInterface;TPresenter;>;"
    }
.end annotation


# instance fields
.field protected mAdapter:Lbrm;

.field protected mCurrentState:I

.field private mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

.field protected mFirstVisibleItemPosition:I

.field protected mLastVisibleItemPosition:I

.field protected mName:Ljava/lang/String;

.field protected mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

.field protected mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field protected mRvState:I

.field protected mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

.field protected vuilabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    const/4 v0, 0x2

    .line 53
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mCurrentState:I

    const/4 v1, 0x3

    .line 56
    new-array v1, v1, [Ljava/lang/String;

    sget v2, Lcom/xiaopeng/musicradio/usb/a$d;->bt_play_all:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/xiaopeng/musicradio/usb/a$d;->bt_continue_all:I

    .line 57
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget v2, Lcom/xiaopeng/musicradio/usb/a$d;->vui_label_stop:I

    .line 58
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->vuilabels:[Ljava/lang/String;

    .line 62
    iput v3, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRvState:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;)Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    return-object p0
.end method


# virtual methods
.method public findView()V
    .locals 1

    .line 90
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 91
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->dir_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 92
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->play_all:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    .line 93
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->song_fastscroller:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    return-void
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 253
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method protected getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMusicInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected isPlayCurrentCollect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 258
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 259
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mAdapter:Lbrm;

    invoke-virtual {p1}, Lbrm;->notifyDataSetChanged()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 217
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->updatePlayAll()V

    :cond_0
    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 226
    invoke-virtual {p2, p2}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->vuilabels:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_4

    .line 228
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 229
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayText()Ljava/lang/String;

    move-result-object p2

    sget v1, Lcom/xiaopeng/musicradio/usb/a$d;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 240
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 241
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayBtn()Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->performClick()Z

    goto :goto_1

    .line 243
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

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 231
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayText()Ljava/lang/String;

    move-result-object p2

    sget v1, Lcom/xiaopeng/musicradio/usb/a$d;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 232
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

    .line 233
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 235
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 236
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayBtn()Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->performClick()Z

    :cond_4
    :goto_1
    return-void
.end method

.method protected refreshLogo()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$4;-><init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mAdapter:Lbrm;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbrm;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mAdapter:Lbrm;

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mFirstVisibleItemPosition:I

    iget v2, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mLastVisibleItemPosition:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbrm;->notifyItemRangeChanged(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected request()V
    .locals 3

    .line 101
    new-instance v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;-><init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected resetPlayAll()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setPlayState(I)V

    return-void
.end method

.method public setAdapter()V
    .locals 5

    .line 194
    new-instance v0, Lbrm;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/usb/a$c;->music_list_item:I

    new-instance v3, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$5;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$5;-><init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;)V

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v4, v3}, Lbrm;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mAdapter:Lbrm;

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$3;-><init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public setView()V
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v2, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$2;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$2;-><init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v2, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->setAdapter()V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mAdapter:Lbrm;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;)V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->enableVuiInvisibleFeature(I)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    sget v1, Lcom/xiaopeng/musicradio/usb/a$c;->recycler_view_fast_scroller:I

    sget v2, Lcom/xiaopeng/musicradio/usb/a$b;->fastscroller_handle:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a(II)V

    return-void
.end method

.method public showData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setCountText(I)V

    .line 206
    invoke-static {p1}, Lbrp;->a(Ljava/util/List;)I

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mAdapter:Lbrm;

    invoke-virtual {v1, p1}, Lbrm;->a(Ljava/util/List;)V

    .line 208
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->scrollToPosition(I)V

    .line 209
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->requestLayout()V

    .line 211
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->updatePlayAll()V

    .line 212
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->request()V

    return-void
.end method

.method protected updatePlayAll()V
    .locals 5

    .line 67
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->isPlayCurrentCollect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v0

    .line 71
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setPlayState(I)V

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_3

    :cond_0
    move v1, v2

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->resetPlayAll()V

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->resetPlayAll()V

    .line 83
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->vuilabels:[Ljava/lang/String;

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

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 85
    iput v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mCurrentState:I

    return-void
.end method
