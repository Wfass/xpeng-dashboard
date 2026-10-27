.class Lcom/xiaopeng/musicradio/usb/model/b$10;
.super Ljava/lang/Object;
.source "UsbMusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/usb/model/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/model/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/model/b;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/model/b$10;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$10;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->j(Lcom/xiaopeng/musicradio/usb/model/b;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UsbMusicModel"

    const-string v1, "mParseTimeoutRun: ===="

    .line 688
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$10;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->k(Lcom/xiaopeng/musicradio/usb/model/b;)V

    :cond_0
    return-void
.end method
