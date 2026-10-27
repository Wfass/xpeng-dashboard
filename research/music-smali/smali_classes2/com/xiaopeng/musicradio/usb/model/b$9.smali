.class Lcom/xiaopeng/musicradio/usb/model/b$9;
.super Ljava/lang/Object;
.source "UsbMusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/model/b;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic c:Lcom/xiaopeng/musicradio/usb/model/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/model/b;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/model/b$9;->c:Lcom/xiaopeng/musicradio/usb/model/b;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/usb/model/b$9;->a:Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/usb/model/b$9;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$9;->a:Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->isAudio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$9;->c:Lcom/xiaopeng/musicradio/usb/model/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b$9;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Lcom/xiaopeng/musicradio/usb/model/b;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$9;->c:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->i(Lcom/xiaopeng/musicradio/usb/model/b;)V

    return-void
.end method
