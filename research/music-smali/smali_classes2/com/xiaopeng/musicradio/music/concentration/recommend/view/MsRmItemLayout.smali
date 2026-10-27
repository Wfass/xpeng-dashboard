.class public Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "MsRmItemLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/concentration/recommend/view/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/view/c;",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmItemPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/view/c;"
    }
.end annotation


# static fields
.field public static final COLLECT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MsRmItemLayout"

.field public static final XP:I


# instance fields
.field private mAlbumItemLayout:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

.field private mContext:Landroid/content/Context;

.field private mId:Ljava/lang/String;

.field private mLogo:Ljava/lang/String;

.field private mStartPosition:I

.field private mThemeViewModel:Lapr;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 47
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mStartPosition:I

    .line 50
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mStartPosition:I

    .line 50
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mType:I

    .line 60
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 47
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mStartPosition:I

    .line 50
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mType:I

    .line 65
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mType:I

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private refreshLogo()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mAlbumItemLayout:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->d()V

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mAlbumItemLayout:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->c()V

    return-void
.end method

.method private setStatus(I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mAlbumItemLayout:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPlayState(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmItemPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmItemPresenter;
    .locals 1

    .line 71
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmItemPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmItemPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 83
    sget v0, Lbez$d;->album_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mAlbumItemLayout:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 76
    sget v0, Lbez$f;->ms_layout_rm_item:I

    return v0
.end method

.method public isPlayIng()Z
    .locals 3

    .line 175
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->g()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "listsign_recommend_music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"collectId\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifySpeechChange()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mAlbumItemLayout:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->c()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 225
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onAttachedToWindow()V

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 217
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 219
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->refreshLogo()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 230
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onDetachedFromWindow()V

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 205
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 206
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mAlbumItemLayout:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->c()V

    .line 207
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mAlbumItemLayout:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->b()V

    return-void
.end method

.method public openDaily()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mAlbumItemLayout:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->callOnClick()Z

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V
    .locals 7

    .line 96
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mId:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mLogo:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "MsRmItemLayout"

    const-string v3, "setData: logo is same"

    .line 99
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mAlbumItemLayout:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setNeedRefreshLogo(Z)V

    .line 102
    :cond_0
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mLogo:Ljava/lang/String;

    .line 104
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    .line 105
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->g()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->isPlayIng()Z

    move-result v2

    :cond_1
    const/4 v0, -0x1

    if-eqz v2, :cond_2

    .line 111
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    .line 112
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setPlayState(I)V

    :cond_2
    move v6, v0

    .line 114
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mAlbumItemLayout:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mLogo:Ljava/lang/String;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mStartPosition:I

    add-int v4, v0, p2

    sget v5, Lbez$c;->pic_covers_music_220:I

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(Ljava/lang/String;Ljava/lang/String;III)V

    .line 115
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mAlbumItemLayout:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mAlbumItemLayout:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setOpenDetailClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->mType:I

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showLoadingView()V
    .locals 0

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updatePlayState(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 156
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    if-nez p1, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->isPlayIng()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->q()I

    move-result p1

    .line 162
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setStatus(I)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setStatus(I)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setStatus(I)V

    goto :goto_0

    .line 170
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setStatus(I)V

    :goto_0
    return-void
.end method
