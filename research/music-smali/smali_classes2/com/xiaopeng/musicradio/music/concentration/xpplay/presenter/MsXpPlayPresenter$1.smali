.class Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter$1;
.super Lbkv;
.source "MsXpPlayPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    const-string p1, "MsXpPlayPresenter"

    const-string v0, "getXpPlayData error"

    .line 66
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/a;

    if-eqz p1, :cond_0

    .line 69
    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/a;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;)V
    .locals 6

    const-string v0, "MsXpPlayPresenter"

    const-string v1, "getXpPlayData getresult"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/a;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCollectList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCollectList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCollectList()Ljava/util/List;

    move-result-object v2

    .line 41
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    const-string v5, "listsign_recommend_music"

    .line 42
    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getXpPlayData datas.size():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v0, p1, v3}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1, v2}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 54
    :goto_1
    invoke-static {}, Layb;->a()Layb;

    move-result-object p1

    invoke-virtual {p1, v2}, Layb;->a(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    const-string p1, "getXpPlayData error"

    .line 56
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    const-string p1, ""

    .line 58
    invoke-interface {v1, p1}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/a;->showErrorView(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;)V

    return-void
.end method
