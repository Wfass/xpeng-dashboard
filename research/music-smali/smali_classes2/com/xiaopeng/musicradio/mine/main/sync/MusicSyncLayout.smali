.class public Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "MusicSyncLayout.java"

# interfaces
.implements Lawz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lawz;",
        "Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;",
        ">;",
        "Lawz;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicSyncLayout"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

.field protected mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field protected mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/mine/ResultState;",
            ">;"
        }
    .end annotation
.end field

.field private mStartLoadTime:J

.field protected mSyncBackground:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mSyncCollect:Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

.field private mSyncImport:Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

.field protected mSyncLayout:Landroid/widget/LinearLayout;

.field private mSyncMusic:Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

.field protected mTvSyncBackground:Lcom/xiaopeng/xui/widget/XTextView;

.field protected mTvSyncTitle:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private showLoadingTip(I)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 146
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->createPresenter()Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;
    .locals 2

    .line 81
    new-instance v0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->getSyncType()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;-><init>(I)V

    return-object v0
.end method

.method protected findView()V
    .locals 3

    .line 90
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->sync_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mSyncLayout:Landroid/widget/LinearLayout;

    .line 91
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->sync_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mTvSyncTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 92
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->sync_music:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mSyncMusic:Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

    .line 93
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->sync_collect:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mSyncCollect:Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

    .line 94
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->sync_import:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mSyncImport:Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

    .line 95
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->sync_background:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mSyncBackground:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 96
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tv_sync_background:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mTvSyncBackground:Lcom/xiaopeng/xui/widget/XTextView;

    .line 97
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    .line 100
    invoke-static {}, Lbdz;->a()Lbdz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->getSyncType()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbdz;->a(IZ)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 127
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->music_sync_layout:I

    return v0
.end method

.method protected getSyncType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 241
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onDetachedFromWindow()V

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 243
    invoke-static {}, Lbdz;->a()Lbdz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->getSyncType()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbdz;->a(IZ)V

    return-void
.end method

.method public onSyncFail()V
    .locals 5

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 224
    iget-wide v2, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mStartLoadTime:J

    sub-long/2addr v0, v2

    .line 225
    new-instance v2, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout$2;-><init>(Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;)V

    const-wide/16 v3, 0x3e8

    sub-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onSyncNone()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    return-void
.end method

.method public onSyncState(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/mine/ResultState;",
            ">;)V"
        }
    .end annotation

    .line 218
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->setResults(Ljava/util/List;)V

    return-void
.end method

.method public setData()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mSyncLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 138
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->showLoadingTip(I)V

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mStartLoadTime:J

    .line 140
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-static {}, Lbek;->a()Lbek;

    move-result-object v2

    invoke-virtual {v2}, Lbek;->k()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->b(JI)V

    return-void
.end method

.method public setDialog(Lcom/xiaopeng/xui/app/XDialogPure;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mSyncBackground:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout$1;-><init>(Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setResults(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/mine/ResultState;",
            ">;)V"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mSyncLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mResults:Ljava/util/List;

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mResults:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    move v2, v0

    move p1, v1

    move v3, p1

    .line 159
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_7

    .line 160
    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mResults:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    if-eqz v4, :cond_6

    .line 162
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->getType()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v0, :cond_4

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    const/4 v7, 0x3

    if-eq v5, v7, :cond_0

    goto :goto_2

    .line 183
    :cond_0
    iget-object v5, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mSyncImport:Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->setResultState(Lcom/xiaopeng/musicradio/bean/mine/ResultState;)V

    .line 184
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->getState()I

    move-result v5

    if-ne v5, v0, :cond_1

    move v2, v1

    .line 187
    :cond_1
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->getState()I

    move-result v4

    if-ne v4, v6, :cond_6

    goto :goto_1

    .line 174
    :cond_2
    iget-object v5, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mSyncCollect:Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->setResultState(Lcom/xiaopeng/musicradio/bean/mine/ResultState;)V

    .line 175
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->getState()I

    move-result v5

    if-ne v5, v0, :cond_3

    move v2, v1

    .line 178
    :cond_3
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->getState()I

    move-result v4

    if-ne v4, v6, :cond_6

    goto :goto_1

    .line 164
    :cond_4
    iget-object v5, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mSyncMusic:Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->setResultState(Lcom/xiaopeng/musicradio/bean/mine/ResultState;)V

    .line 165
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->getState()I

    move-result v5

    if-ne v5, v0, :cond_5

    move v2, v1

    .line 169
    :cond_5
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->getState()I

    move-result v4

    if-ne v4, v6, :cond_6

    :goto_1
    move v3, v0

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    move v1, v3

    goto :goto_3

    :cond_8
    move v2, v0

    :goto_3
    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    const-string v1, "fail"

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a(ZLjava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mTvSyncBackground:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->sync_retry:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mTvSyncTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->text_dialog_kugou_sync_fail:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_4

    .line 201
    :cond_9
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    const-string v1, "finish"

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a(ZLjava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mTvSyncBackground:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->sync_success:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mTvSyncTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->text_dialog_kugou_sync_success:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 204
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v1, Lbfc;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbfc;

    .line 205
    invoke-interface {p1}, Lbfc;->fetchCollectedAlbum()V

    .line 206
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v1, Lbfd;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbfd;

    .line 207
    invoke-interface {p1, v0}, Lbfd;->checkoutDataCollect(I)V

    goto :goto_4

    .line 210
    :cond_a
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mTvSyncTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->text_dialog_kugou_sync_ing:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 211
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-static {}, Lbek;->a()Lbek;

    move-result-object v0

    invoke-virtual {v0}, Lbek;->k()J

    move-result-wide v0

    const/16 v2, 0x1e

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a(JI)V

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mTvSyncBackground:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->sync_background:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    :goto_4
    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method
