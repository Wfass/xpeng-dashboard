.class Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter$1;
.super Ljava/lang/Object;
.source "MsConcentrationPresenter.java"

# interfaces
.implements Lber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "MsConcentrationPresente"

    const-string v1, "loadConcentrationData: get result fail"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 219
    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;

    if-eqz v0, :cond_0

    const-string v1, "MsConcentrationPresente"

    const-string v2, "setQQConcentration: success"

    .line 184
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;->b()V

    .line 186
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;->a(Ljava/util/List;)V

    .line 187
    invoke-interface {v0, p2}, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;->b(Ljava/util/List;)V

    .line 188
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCategoryId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCollectList()Ljava/util/List;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 189
    invoke-interface {v0, p4}, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;->c(Ljava/util/List;)V

    .line 190
    invoke-interface {v0, p5}, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;->d(Ljava/util/List;)V

    :cond_0
    return-void
.end method
