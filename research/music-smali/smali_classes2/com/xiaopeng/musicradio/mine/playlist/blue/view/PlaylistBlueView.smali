.class public Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;
.super Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;
.source "PlaylistBlueView.java"

# interfaces
.implements Lbxt;
.implements Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout<",
        "Lavs;",
        "Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;",
        "Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;",
        ">;",
        "Lbxt;",
        "Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;"
    }
.end annotation


# static fields
.field private static final MAX_DATA_LIST_SIZE:I = 0x3

.field public static final TAG:Ljava/lang/String; = "PlaylistBlueView"


# instance fields
.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private bindLogo(Ljava/util/List;ILandroid/widget/ImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;I",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 127
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-lez p2, :cond_1

    if-nez p1, :cond_1

    .line 130
    sget p1, Lcom/xiaopeng/musicradio/mine/a$b;->pic_covers_music_220:I

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 132
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/xiaopeng/musicradio/mine/a$b;->pic_covers_music_220:I

    invoke-static {p1, p2, p3}, Lcom/xiaopeng/musicradio/utils/ac;->a(Ljava/lang/String;ILandroid/widget/ImageView;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->createPresenter()Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;
    .locals 3

    .line 60
    new-instance v0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;

    const/4 v1, 0x3

    const-string v2, "FROM_MAIN"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 92
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->playlist_blue_view:I

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 97
    invoke-static {}, Lawv;->a()Lawv;

    move-result-object v0

    invoke-virtual {v0}, Lawv;->c()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 162
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 163
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mDataList:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mDataList:Ljava/util/List;

    .line 166
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mDataList:Ljava/util/List;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavs;

    iget-object v1, v1, Lavs;->e:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->bindLogo(Ljava/util/List;ILandroid/widget/ImageView;)V

    .line 168
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mDataList:Ljava/util/List;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavs;

    iget-object v1, v1, Lavs;->f:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->bindLogo(Ljava/util/List;ILandroid/widget/ImageView;)V

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mDataList:Ljava/util/List;

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavs;

    iget-object v1, v1, Lavs;->g:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->bindLogo(Ljava/util/List;ILandroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public onDataListLoaded(Ljava/util/List;I)V
    .locals 2

    .line 112
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 113
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lavs;

    iget-object p2, p2, Lavs;->c:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lavs;

    iget-object p2, p2, Lavs;->e:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->bindLogo(Ljava/util/List;ILandroid/widget/ImageView;)V

    const/4 p2, 0x1

    .line 116
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavs;

    iget-object v1, v1, Lavs;->f:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-direct {p0, p1, p2, v1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->bindLogo(Ljava/util/List;ILandroid/widget/ImageView;)V

    const/4 p2, 0x2

    .line 117
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavs;

    iget-object v1, v1, Lavs;->g:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-direct {p0, p1, p2, v1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->bindLogo(Ljava/util/List;ILandroid/widget/ImageView;)V

    .line 118
    invoke-static {}, Laxu;->c()Z

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    .line 119
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lavs;

    iget-object p2, p2, Lavs;->c:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 121
    :goto_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mDataList:Ljava/util/List;

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected setListener()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavs;

    iget-object v0, v0, Lavs;->h:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView$1;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavs;

    iget-object v0, v0, Lavs;->d:Lcom/xiaopeng/musicradio/mine/widget/AlbumPlayStatusButton;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView$2;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/AlbumPlayStatusButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 4

    .line 65
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->setView()V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavs;

    iget-object v0, v0, Lavs;->c:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setClipToOutline(Z)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavs;

    iget-object v0, v0, Lavs;->c:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavs;

    iget-object v0, v0, Lavs;->h:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->playlist_blue_match_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title_playlist_blue"

    invoke-static {v0, v2, v3}, Laxt;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavs;

    iget-object v0, v0, Lavs;->h:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-static {v0, v1}, Laxt;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public updateCollectedStatus(Lcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 0

    return-void
.end method

.method public updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    if-nez p1, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-static {}, Laxu;->e()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    if-eqz p1, :cond_1

    const/16 v0, 0x14

    .line 143
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/aj;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    invoke-static {}, Laxu;->b()I

    move-result p2

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavs;

    iget-object p1, p1, Lavs;->d:Lcom/xiaopeng/musicradio/mine/widget/AlbumPlayStatusButton;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/mine/widget/AlbumPlayStatusButton;->a(I)Z

    move-result p1

    .line 147
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lavs;

    iget-object p2, p2, Lavs;->d:Lcom/xiaopeng/musicradio/mine/widget/AlbumPlayStatusButton;

    const-string v0, "blue_ms_play_all"

    invoke-static {p2, p1, v0}, Laxt;->a(Landroid/view/View;ZLjava/lang/String;)V

    return-void
.end method
