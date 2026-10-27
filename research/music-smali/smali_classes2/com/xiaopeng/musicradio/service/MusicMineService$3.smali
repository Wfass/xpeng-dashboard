.class Lcom/xiaopeng/musicradio/service/MusicMineService$3;
.super Lbkv;
.source "MusicMineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/MusicMineService;->play(Ljava/lang/Object;Lbff;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

.field final synthetic b:Lbff;

.field final synthetic c:Lcom/xiaopeng/musicradio/service/MusicMineService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Lbff;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$3;->c:Lcom/xiaopeng/musicradio/service/MusicMineService;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$3;->b:Lbff;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$3;->b:Lbff;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 536
    invoke-interface {v0, v1, p1, p2}, Lbff;->a(ZILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;)V
    .locals 9

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMineService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 517
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 520
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 521
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setUid(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setCacheId(Ljava/lang/Long;)V

    .line 524
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 527
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bd;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$3;->c:Lcom/xiaopeng/musicradio/service/MusicMineService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x32

    iget-object v8, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$3;->b:Lbff;

    invoke-static/range {v1 .. v8}, Lcom/xiaopeng/musicradio/service/MusicMineService;->a(Lcom/xiaopeng/musicradio/service/MusicMineService;Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IILjava/lang/String;ILbff;)V

    .line 529
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object v0

    invoke-virtual {v0}, Lbak;->b()Lbaj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 512
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/service/MusicMineService$3;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;)V

    return-void
.end method
