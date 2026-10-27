.class Lbrd$1;
.super Lbkv;
.source "UsbRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbrd;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbrd;


# direct methods
.method constructor <init>(Lbrd;Ljava/util/List;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lbrd$1;->b:Lbrd;

    iput-object p2, p0, Lbrd$1;->a:Ljava/util/List;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UsbRequestManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p1, p0, Lbrd$1;->b:Lbrd;

    iget-object p2, p0, Lbrd$1;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Lbrd;->d(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 99
    check-cast p1, Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;

    invoke-virtual {p0, p1}, Lbrd$1;->a(Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;)V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbRequestManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lbrd$1;->b:Lbrd;

    iget-object v1, p0, Lbrd$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbrd;->d(Ljava/util/List;)V

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;->a()Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;->a()Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult$DataBean;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lbrd$1;->b:Lbrd;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;->a()Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult$DataBean;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrd;->a(Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Lbrd$1;->b:Lbrd;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;->a()Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult$DataBean;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbrd;->a_(Ljava/util/List;)V

    :cond_0
    return-void
.end method
