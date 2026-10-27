.class public Lazk;
.super Lazh;
.source "KugouAddSongsCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lazh;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lbae;
    .locals 1

    .line 20
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lazh;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 30
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;

    if-eqz v0, :cond_1

    .line 31
    check-cast p1, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;

    .line 32
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;->getData()Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;->getData()Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;->getSongExtraIdMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;->getData()Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;->getSongExtraIdMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSongExtraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KugouAddSongsCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongExtraId(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->s()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongExtraId(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
