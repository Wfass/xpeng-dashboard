.class Lcom/xiaopeng/musicradio/usb/model/b$5;
.super Lcom/xiaopeng/musicradio/common/b;
.source "UsbMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/model/b;->a(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Collection;JLjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Ljava/util/Map;

.field final synthetic f:Ljava/util/List;

.field final synthetic g:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic h:Ljava/util/Collection;

.field final synthetic i:J

.field final synthetic j:Lcom/xiaopeng/musicradio/usb/model/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/model/b;Ljava/io/File;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Collection;J)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->j:Lcom/xiaopeng/musicradio/usb/model/b;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->d:Ljava/util/Map;

    iput-object p6, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->e:Ljava/util/Map;

    iput-object p7, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->f:Ljava/util/List;

    iput-object p8, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p9, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->h:Ljava/util/Collection;

    iput-wide p10, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->i:J

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->j:Lcom/xiaopeng/musicradio/usb/model/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->d:Ljava/util/Map;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->e:Ljava/util/Map;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->f:Ljava/util/List;

    iget-object v7, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v8, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->h:Ljava/util/Collection;

    iget-wide v9, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->i:J

    invoke-static/range {v0 .. v10}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Lcom/xiaopeng/musicradio/usb/model/b;Ljava/io/File;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Collection;J)V

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->h:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/model/b$5;->a()Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "UsbMusicModel"

    if-eqz v0, :cond_1

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run: currentScanCanceled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/model/b$5;->a()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";currentNum:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";scanTime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->i:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->j:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->g(Lcom/xiaopeng/musicradio/usb/model/b;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->i:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->j:Lcom/xiaopeng/musicradio/usb/model/b;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->f:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Lcom/xiaopeng/musicradio/usb/model/b;Ljava/util/List;)V

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listCandidateMusics: mUsbFileCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaopeng/musicradio/usb/model/b$5;->i:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
