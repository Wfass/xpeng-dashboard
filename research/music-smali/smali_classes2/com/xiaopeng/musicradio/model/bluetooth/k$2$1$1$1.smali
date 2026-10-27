.class Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1$1;
.super Ljava/lang/Object;
.source "XpMusicBluetoothModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1$1;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 260
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1$1;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;

    .line 261
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->b:Ljava/lang/String;

    .line 262
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->a:Ljava/lang/String;

    .line 263
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->c:Lcom/xiaopeng/musicradio/model/bluetooth/k;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$1$1;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
