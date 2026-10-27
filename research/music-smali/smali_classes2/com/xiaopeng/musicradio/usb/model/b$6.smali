.class Lcom/xiaopeng/musicradio/usb/model/b$6;
.super Ljava/lang/Object;
.source "UsbMusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/model/b;->a(Ljava/io/File;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Collection;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic c:Lcom/xiaopeng/musicradio/usb/model/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/model/b;JLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/model/b$6;->c:Lcom/xiaopeng/musicradio/usb/model/b;

    iput-wide p2, p0, Lcom/xiaopeng/musicradio/usb/model/b$6;->a:J

    iput-object p4, p0, Lcom/xiaopeng/musicradio/usb/model/b$6;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 428
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$6;->a:J

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/model/b$6;->c:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/usb/model/b;->g(Lcom/xiaopeng/musicradio/usb/model/b;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "UsbMusicModel"

    const-string v1, "findAllFoldAndMusicFile: stopCurrent mLocal3:"

    .line 429
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$6;->c:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->h(Lcom/xiaopeng/musicradio/usb/model/b;)Lbri;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b$6;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, v1}, Lbri;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method
