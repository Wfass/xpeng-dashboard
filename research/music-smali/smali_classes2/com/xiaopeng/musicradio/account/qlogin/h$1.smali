.class Lcom/xiaopeng/musicradio/account/qlogin/h$1;
.super Lbkv;
.source "QrCodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/account/qlogin/h;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/account/qlogin/h;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/account/qlogin/h;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getQrCode:onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QQrCodePresenter"

    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Lcom/xiaopeng/musicradio/account/qlogin/h;Z)Z

    .line 105
    iget-object p2, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Lcom/xiaopeng/musicradio/account/qlogin/h;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean;)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getQrCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Lcom/xiaopeng/musicradio/account/qlogin/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Lcom/xiaopeng/musicradio/account/qlogin/h;Z)Z

    .line 90
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean;->data:Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean$a;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean;->data:Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean;->data:Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean$a;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Lcom/xiaopeng/musicradio/account/qlogin/h;Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean$a;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Lcom/xiaopeng/musicradio/account/qlogin/h;Ljava/lang/Integer;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Lcom/xiaopeng/musicradio/account/qlogin/h;Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 84
    check-cast p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h$1;->a(Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean;)V

    return-void
.end method
