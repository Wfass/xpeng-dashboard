.class Laqk$1;
.super Lbkv;
.source "QrCodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqk;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laqk;


# direct methods
.method constructor <init>(Laqk;)V
    .locals 0

    .line 81
    iput-object p1, p0, Laqk$1;->a:Laqk;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 100
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

    const-string v0, "XQrCodePresenter"

    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Laqk$1;->a:Laqk;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Laqk;->a(Laqk;Z)Z

    .line 102
    iget-object p2, p0, Laqk$1;->a:Laqk;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Laqk;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean;)V
    .locals 2

    const-string v0, "XQrCodePresenter"

    const-string v1, "getQrCode"

    .line 85
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Laqk$1;->a:Laqk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laqk;->a(Laqk;Z)Z

    .line 87
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 88
    iget-object v0, p1, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean;->data:Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean$a;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean;->data:Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Laqk$1;->a:Laqk;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean;->data:Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean$a;

    invoke-virtual {v0, p1}, Laqk;->a(Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean$a;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Laqk$1;->a:Laqk;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Laqk;->a(Ljava/lang/Integer;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Laqk$1;->a:Laqk;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Laqk;->a(Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 81
    check-cast p1, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean;

    invoke-virtual {p0, p1}, Laqk$1;->a(Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean;)V

    return-void
.end method
