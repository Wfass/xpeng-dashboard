.class Lbrb$1$1;
.super Ljava/lang/Object;
.source "UsbDurationRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbrb$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbrb$1;


# direct methods
.method constructor <init>(Lbrb$1;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lbrb$1$1;->a:Lbrb$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 66
    iget-object v0, p0, Lbrb$1$1;->a:Lbrb$1;

    iget-object v0, v0, Lbrb$1;->b:Lbrb;

    iget-object v1, p0, Lbrb$1$1;->a:Lbrb$1;

    iget-object v1, v1, Lbrb$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, v1}, Lbrb;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 67
    invoke-static {}, Lcom/xiaopeng/musicradio/usb/model/b;->a()Lcom/xiaopeng/musicradio/usb/model/b;

    move-result-object v0

    iget-object v1, p0, Lbrb$1$1;->a:Lbrb$1;

    iget-object v1, v1, Lbrb$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method
