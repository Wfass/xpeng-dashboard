.class Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$1;
.super Lbkv;
.source "MsMusicDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->c()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " s = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NrAllRadioActPresenter"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->c(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 110
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->b(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setCacheId(Ljava/lang/Long;)V

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCacheId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->b(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " musicRadioItem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NrAllRadioActPresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v3

    invoke-virtual {v3}, Lbdm;->e()Lbej;

    move-result-object v3

    invoke-virtual {v3}, Lbej;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setUid(Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->b(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 124
    invoke-static {}, Lbav;->a()Lbav;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lbav;->a(Ljava/util/List;Ljava/util/List;Z)V

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d:Ljava/lang/String;

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;I)I

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->c(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->c(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 103
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;)V

    return-void
.end method
