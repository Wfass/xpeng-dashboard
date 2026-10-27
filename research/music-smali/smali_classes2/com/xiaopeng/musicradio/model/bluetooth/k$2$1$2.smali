.class Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$2;
.super Ljava/lang/Object;
.source "XpMusicBluetoothModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$2;->b:Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 299
    new-instance v0, Lasj$o;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {v0, v1}, Lasj$o;-><init>(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 300
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->q()Lcom/xiaopeng/musicradio/model/music/n;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/music/n;->f(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method
