.class Lcom/xiaopeng/musicradio/usb/model/b$4;
.super Ljava/lang/Object;
.source "UsbMusicModel.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


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

    .line 344
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/model/b$4;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 347
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "UsbThread"

    .line 348
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
