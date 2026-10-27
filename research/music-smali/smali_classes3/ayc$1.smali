.class Layc$1;
.super Lbkv;
.source "MusicLrcModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layc;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic b:Layc;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Layc;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 54
    iput-object p1, p0, Layc$1;->b:Layc;

    iput-object p2, p0, Layc$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Lbkv;-><init>()V

    .line 57
    iget-object p1, p0, Layc$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Layc$1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 4

    .line 82
    iget-object v0, p0, Layc$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v0

    invoke-virtual {v0}, Lbaf;->b()Lbae;

    move-result-object v0

    iget-object v2, p0, Layc$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lbae;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    .line 84
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$l;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$l;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call getLocalLrc error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicLrcModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V
    .locals 3

    .line 61
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicLrcModel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v1, p0, Layc$1;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getLyricContent()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string p1, "getLocalLrc lrcContent is empty"

    .line 69
    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Layc$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object p1

    invoke-virtual {p1}, Lbaf;->b()Lbae;

    move-result-object p1

    iget-object v2, p0, Layc$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1, v2, v1}, Lbae;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    .line 72
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$l;

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$l;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Layc$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v0

    invoke-virtual {v0}, Lbaf;->b()Lbae;

    move-result-object v0

    iget-object v2, p0, Layc$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, v2, v1}, Lbae;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    .line 77
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$l;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$l;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;

    invoke-virtual {p0, p1}, Layc$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V

    return-void
.end method
