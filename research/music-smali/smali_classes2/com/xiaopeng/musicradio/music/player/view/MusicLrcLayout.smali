.class public Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "MusicLrcLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/player/view/d;
.implements Lcom/xiaopeng/musicradio/music/player/widget/LyricView$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/player/view/d;",
        "Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/player/view/d;",
        "Lcom/xiaopeng/musicradio/music/player/widget/LyricView$d;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicLrcLayout"


# instance fields
.field private mLrcLoading:Z

.field private mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcLoading:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcLoading:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcLoading:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;
    .locals 1

    .line 51
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 57
    sget v0, Lbez$d;->lrcview:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 89
    sget v0, Lbez$f;->layout_lrc:I

    return v0
.end method

.method public onDownloadLrcStart()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->b()V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbez$g;->main_searching_lrc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setLrcLabel(Ljava/lang/String;)V

    return-void
.end method

.method public onLrcLoaded(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcLoading:Z

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->onNoLrc()V

    :cond_1
    return-void
.end method

.method public onLrcLoading()V
    .locals 3

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcLoading:Z

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbez$g;->main_searching_lrc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setLrcLabel(Ljava/lang/String;)V

    return-void
.end method

.method public onNoLrc()V
    .locals 3

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcLoading:Z

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->b()V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbez$g;->main_lrc_no:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setLrcLabel(Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 176
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a()V

    return-void
.end method

.method public refreshBgColor(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    if-nez p1, :cond_0

    const-string p1, "#ffffff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setNightColor(I)V

    return-void
.end method

.method public refreshColor(IIII)V
    .locals 0

    .line 126
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    if-eqz p2, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lapo;->d(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 128
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "refreshColor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicLrcLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    const-string p2, "#66272A33"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setOtherTxtColor(I)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setOtherNightColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshLrcView(Ljava/lang/String;I)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->b()V

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    .line 112
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcLoading:Z

    if-nez p1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lbez$g;->main_searching_lrc:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setLrcLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lbez$g;->main_lrc_no:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setLrcLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Ljava/lang/String;I)V

    .line 121
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->updateIndex(I)V

    :goto_0
    return-void
.end method

.method public refreshTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setOnLoadLrcListener(Lcom/xiaopeng/musicradio/music/player/widget/LyricView$d;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 165
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->setVisibility(I)V

    const-string v0, "VIEW_PLAY_LRC"

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->c()V

    .line 168
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateIndex(I)V
    .locals 2

    .line 94
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcLoading:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mPosition:I

    if-le v1, p1, :cond_1

    mul-int/lit16 v1, p1, 0x3e8

    .line 98
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(I)V

    goto :goto_0

    :cond_1
    mul-int/lit16 v1, p1, 0x3e8

    .line 100
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->b(I)V

    .line 102
    :goto_0
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->mPosition:I

    :cond_2
    :goto_1
    return-void
.end method
