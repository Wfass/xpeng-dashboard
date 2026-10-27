.class Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;
.super Lbkv;
.source "XpMusicBluetoothModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->run()V
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

.field final synthetic b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XpMusicBluetoothModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->c:Lcom/xiaopeng/musicradio/model/bluetooth/k;

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V
    .locals 8

    .line 222
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getDuration()I

    move-result v2

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response playingSong: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,singer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpMusicBluetoothModel"

    invoke-static {v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->c:Lcom/xiaopeng/musicradio/model/bluetooth/k;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->e(Lcom/xiaopeng/musicradio/model/bluetooth/k;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/xiaopeng/musicradio/model/bluetooth/a;->a:Ljava/lang/String;

    .line 227
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/xiaopeng/musicradio/model/bluetooth/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/xiaopeng/musicradio/model/bluetooth/a;->c:Ljava/lang/String;

    .line 228
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "response: ======== matchNetMusic"

    .line 229
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ag;->c(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->c:Lcom/xiaopeng/musicradio/model/bluetooth/k;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object v4, v4, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object v4, v4, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object v5, v5, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object v5, v5, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSearchSongText(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->c:Lcom/xiaopeng/musicradio/model/bluetooth/k;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->b(Lcom/xiaopeng/musicradio/model/bluetooth/k;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    iget-object v4, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object v4, v4, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object v4, v4, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->c:Lcom/xiaopeng/musicradio/model/bluetooth/k;

    invoke-static {v4}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->b(Lcom/xiaopeng/musicradio/model/bluetooth/k;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->l()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object v5, v5, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object v5, v5, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->c:Lcom/xiaopeng/musicradio/model/bluetooth/k;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object v6, v6, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object v6, v6, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object v7, v7, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object v7, v7, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try2SaveUser : hash = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", from = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isInMatchHistory="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Layr;->a()Layr;

    move-result-object v1

    invoke-virtual {v1}, Layr;->b()Layq;

    move-result-object v1

    invoke-virtual {v1, v0}, Layq;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 247
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    iget-object v4, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "saveBlueHistory : hash = %s, from = %d, lrc = %s"

    invoke-static {v3, v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v0

    invoke-virtual {v0}, Lbaf;->b()Lbae;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->clone()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbae;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 254
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getLyricContent()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/mnt/sdcard/xiaopengmusic/lrc"

    invoke-static {v3, v1, v0}, Lcom/xiaopeng/musicradio/utils/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->c:Lcom/xiaopeng/musicradio/model/bluetooth/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getLyricContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(ILjava/lang/String;)V

    .line 257
    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1$1;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    .line 268
    new-instance p1, Lasj$a;

    invoke-direct {p1}, Lasj$a;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 219
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V

    return-void
.end method
