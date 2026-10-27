.class Lcom/xiaopeng/musicradio/usb/model/b$1;
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

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/model/b$1;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$1;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Lcom/xiaopeng/musicradio/usb/model/b;)V

    return-void
.end method
