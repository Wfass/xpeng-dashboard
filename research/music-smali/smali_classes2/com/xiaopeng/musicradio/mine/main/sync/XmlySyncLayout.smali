.class public Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;
.super Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;
.source "XmlySyncLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XmlySyncLayout"


# instance fields
.field private mSyncRadio:Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

.field private mSyncRead:Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->createPresenter()Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;
    .locals 2

    .line 47
    new-instance v0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->getSyncType()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;-><init>(I)V

    return-object v0
.end method

.method protected findView()V
    .locals 3

    .line 57
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->sync_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mSyncLayout:Landroid/widget/LinearLayout;

    .line 58
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->sync_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mTvSyncTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 59
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->sync_read:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mSyncRead:Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

    .line 60
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->sync_radio:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mSyncRadio:Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

    .line 61
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->sync_background:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mSyncBackground:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 62
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tv_sync_background:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mTvSyncBackground:Lcom/xiaopeng/xui/widget/XTextView;

    .line 63
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    .line 66
    invoke-static {}, Lbdz;->a()Lbdz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->getSyncType()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbdz;->a(IZ)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 71
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->xmly_sync_layout:I

    return v0
.end method

.method protected getSyncType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 129
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->onDetachedFromWindow()V

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

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mSyncLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mResults:Ljava/util/List;

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mResults:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mResults:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    move v2, v0

    move p1, v1

    move v3, p1

    .line 82
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_5

    .line 83
    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mResults:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    if-eqz v4, :cond_4

    .line 85
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->getType()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, -0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x6

    if-eq v5, v6, :cond_0

    goto :goto_2

    .line 96
    :cond_0
    iget-object v5, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mSyncRadio:Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->setResultState(Lcom/xiaopeng/musicradio/bean/mine/ResultState;)V

    .line 97
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->getState()I

    move-result v5

    if-ne v5, v0, :cond_1

    move v2, v1

    .line 100
    :cond_1
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->getState()I

    move-result v4

    if-ne v4, v7, :cond_4

    goto :goto_1

    .line 87
    :cond_2
    iget-object v5, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mSyncRead:Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->setResultState(Lcom/xiaopeng/musicradio/bean/mine/ResultState;)V

    .line 88
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->getState()I

    move-result v5

    if-ne v5, v0, :cond_3

    move v2, v1

    .line 91
    :cond_3
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->getState()I

    move-result v4

    if-ne v4, v7, :cond_4

    :goto_1
    move v3, v0

    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    if-eqz v2, :cond_8

    if-eqz v1, :cond_7

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    const-string v1, "fail"

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a(ZLjava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mTvSyncBackground:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->sync_retry:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mTvSyncTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->text_dialog_xmly_sync_fail:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_4

    .line 114
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    const-string v1, "finish"

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a(ZLjava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mTvSyncBackground:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->sync_success:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 116
    invoke-static {}, Lbee;->a()Lbee;

    move-result-object p1

    invoke-virtual {p1}, Lbee;->d()V

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mTvSyncTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->text_dialog_xmly_sync_success:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_4

    .line 121
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mTvSyncTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->text_dialog_xmly_sync_ing:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-static {}, Lbek;->a()Lbek;

    move-result-object v0

    invoke-virtual {v0}, Lbek;->k()J

    move-result-wide v0

    const/16 v2, 0x1e

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a(JI)V

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/XmlySyncLayout;->mTvSyncBackground:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->sync_background:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    :goto_4
    return-void
.end method
