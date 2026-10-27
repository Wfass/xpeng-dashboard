.class public Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;
.super Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;
.source "QQConFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/music/fragment/qqconcentration"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QQConFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createFragmentContext()Lcom/xiaopeng/musicradio/commonui/base/b;
    .locals 1

    .line 65
    invoke-static {}, Lcom/xiaopeng/musicradio/music/concentration/main/view/c;->a()Lcom/xiaopeng/musicradio/music/concentration/main/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/c;->r()Lcom/xiaopeng/musicradio/commonui/base/b;

    move-result-object v0

    return-object v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Special_Page"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/music/fragment/qqconcentration"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QQ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->aY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initMusicLayout()V
    .locals 17

    move-object/from16 v0, p0

    .line 47
    invoke-static {}, Lcom/xiaopeng/musicradio/music/concentration/main/view/c;->a()Lcom/xiaopeng/musicradio/music/concentration/main/view/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/c;->q()V

    .line 48
    invoke-static {}, Lcom/xiaopeng/musicradio/music/concentration/main/view/c;->a()Lcom/xiaopeng/musicradio/music/concentration/main/view/c;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->getAccountType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/concentration/main/view/c;->b(I)V

    .line 49
    invoke-static {}, Lcom/xiaopeng/musicradio/music/concentration/main/view/c;->a()Lcom/xiaopeng/musicradio/music/concentration/main/view/c;

    move-result-object v3

    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v4, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopEightCount:I

    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v5, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopCount:I

    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v6, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mZoneCount:I

    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v7, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmTitleCount:I

    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v8, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmItemCount:I

    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v9, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayTitleCount:I

    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v10, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayItemCount:I

    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v11, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerTitleCount:I

    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v12, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerItemCount:I

    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v13, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankTitleCount:I

    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v14, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankItemCount:I

    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v15, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioTitleCount:I

    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v1, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioItemCount:I

    move/from16 v16, v1

    invoke-virtual/range {v3 .. v16}, Lcom/xiaopeng/musicradio/music/concentration/main/view/c;->a(IIIIIIIIIIIII)V

    .line 54
    invoke-static {}, Lcom/xiaopeng/musicradio/music/concentration/main/view/c;->a()Lcom/xiaopeng/musicradio/music/concentration/main/view/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/c;->c()V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMusicLayout: mTopEightCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v2, v2, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopEightCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTopCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v2, v2, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mZoneCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v2, v2, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mZoneCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRmTitleCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v2, v2, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmTitleCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRmItemCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v2, v2, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mXpPlayTitleCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v2, v2, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayTitleCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mXpPlayItemCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v2, v2, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSingerTitleCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v2, v2, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerTitleCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSingerItemCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v2, v2, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRankTitleCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v2, v2, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankTitleCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRankItemCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v2, v2, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRadioTitleCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v2, v2, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioTitleCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRadioItemCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v2, v2, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QQConFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->onDestroyView()V

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->initMusicLayout()V

    return-void
.end method

.method public onMusicAuthCheck(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 25
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbdm;->a(I)Lbeg;

    move-result-object p1

    invoke-interface {p1}, Lbeg;->g()Z

    move-result p1

    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected preCacheLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
