.class Lbio$2;
.super Lbkv;
.source "QqMusicPlayHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbio;->f(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic b:Lbio;


# direct methods
.method constructor <init>(Lbio;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lbio$2;->b:Lbio;

    iput-object p2, p0, Lbio$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 244
    iget-object v0, p0, Lbio$2;->b:Lbio;

    invoke-virtual {v0}, Lbio;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: lrc code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object p1, p0, Lbio$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 246
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$l;

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$l;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lbio$2;->b:Lbio;

    invoke-virtual {v0}, Lbio;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "response:lrc ======== "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lbio$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean;->getData()Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean$DataEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean$DataEntity;->getSongLyric()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean;->getData()Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean$DataEntity;->getSongLyric()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 228
    new-instance p1, Lbio$2$1;

    invoke-direct {p1, p0}, Lbio$2$1;-><init>(Lbio$2;)V

    invoke-static {p1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 239
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$l;

    iget-object v0, p0, Lbio$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$l;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 223
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean;

    invoke-virtual {p0, p1}, Lbio$2;->a(Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean;)V

    return-void
.end method
