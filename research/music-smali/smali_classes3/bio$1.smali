.class Lbio$1;
.super Lbkv;
.source "QqMusicPlayHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbio;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;ZZLcom/xiaopeng/musicradio/model/music/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic c:Z

.field final synthetic d:Lcom/xiaopeng/musicradio/model/music/f;

.field final synthetic e:Lbio;


# direct methods
.method constructor <init>(Lbio;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ZLcom/xiaopeng/musicradio/model/music/f;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lbio$1;->e:Lbio;

    iput-object p2, p0, Lbio$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lbio$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iput-boolean p4, p0, Lbio$1;->c:Z

    iput-object p5, p0, Lbio$1;->d:Lcom/xiaopeng/musicradio/model/music/f;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detail error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QqMusicPlayHandler"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lbio$1;->d:Lcom/xiaopeng/musicradio/model/music/f;

    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lbio$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object v2, p0, Lbio$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/xiaopeng/musicradio/model/music/f;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V
    .locals 4

    .line 141
    iget-object v0, p0, Lbio$1;->e:Lbio;

    invoke-virtual {v0}, Lbio;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response: listenFile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getListenFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    iget-object v1, p0, Lbio$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lbio$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isPlayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayable(Z)V

    .line 144
    iget-object v0, p0, Lbio$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getFileList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFileList(Ljava/util/List;)V

    .line 145
    iget-object v0, p0, Lbio$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isTryPlayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryPlayable(Z)V

    .line 146
    iget-object v0, p0, Lbio$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V

    .line 147
    iget-object v0, p0, Lbio$1;->e:Lbio;

    iget-object v1, p0, Lbio$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, v1, p1}, Lbio;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V

    .line 148
    iget-object v0, p0, Lbio$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getUnplayableCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableCode(I)V

    .line 149
    iget-object v0, p0, Lbio$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getUnplayableMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableMsg(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lbio$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongPlayTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongPlayTime(I)V

    .line 152
    iget-object v0, p0, Lbio$1;->e:Lbio;

    iget-object v1, p0, Lbio$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, p1, v1}, Lbio;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 153
    new-instance v0, Lbio$1$1;

    invoke-direct {v0, p0, p1}, Lbio$1$1;-><init>(Lbio$1;Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 166
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbio$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lbio$1;->e:Lbio;

    invoke-virtual {v0}, Lbio;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response: playing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " infoHash = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lbio$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 173
    :cond_0
    iget-object p1, p0, Lbio$1;->e:Lbio;

    iget-object v0, p0, Lbio$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object v1, p0, Lbio$1;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lbio$1;->c:Z

    iget-object v3, p0, Lbio$1;->d:Lcom/xiaopeng/musicradio/model/music/f;

    invoke-static {p1, v0, v1, v2, v3}, Lbio;->a(Lbio;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;ZLcom/xiaopeng/musicradio/model/music/f;)V

    .line 175
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ac;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ac;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 176
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 137
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;

    invoke-virtual {p0, p1}, Lbio$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V

    return-void
.end method
