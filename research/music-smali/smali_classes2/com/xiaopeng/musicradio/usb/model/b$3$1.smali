.class Lcom/xiaopeng/musicradio/usb/model/b$3$1;
.super Ljava/lang/Object;
.source "UsbMusicModel.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/model/b$3;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/model/b$3;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/model/b$3;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/model/b$3$1;->a:Lcom/xiaopeng/musicradio/usb/model/b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/model/b$3$1;->a:Lcom/xiaopeng/musicradio/usb/model/b$3;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/usb/model/b$3;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/model/b;->c(Lcom/xiaopeng/musicradio/usb/model/b;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 144
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usb/model/b$3$1;->a(Ljava/lang/Long;)V

    return-void
.end method
