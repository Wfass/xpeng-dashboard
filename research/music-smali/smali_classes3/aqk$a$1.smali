.class Laqk$a$1;
.super Lbkv;
.source "QrCodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqk$a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laqk$a;


# direct methods
.method constructor <init>(Laqk$a;)V
    .locals 0

    .line 259
    iput-object p1, p0, Laqk$a$1;->a:Laqk$a;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAuthCode:onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Laqk$a$1;->a:Laqk$a;

    invoke-static {p1}, Laqk$a;->c(Laqk$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XQrCodePresenter"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Laqk$a$1;->a:Laqk$a;

    iget-object p1, p1, Laqk$a;->a:Laqk;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Laqk;->b(Laqk;Z)Z

    .line 285
    iget-object p1, p0, Laqk$a$1;->a:Laqk$a;

    iget-object p1, p1, Laqk$a;->a:Laqk;

    invoke-virtual {p1}, Laqk;->g()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Laqk$a$1;->a:Laqk$a;

    invoke-static {p1}, Laqk$a;->d(Laqk$a;)V

    .line 287
    iget-object p1, p0, Laqk$a$1;->a:Laqk$a;

    iget-object p1, p1, Laqk$a;->a:Laqk;

    iget-object p2, p0, Laqk$a$1;->a:Laqk$a;

    invoke-static {p2}, Laqk$a;->c(Laqk$a;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Laqk;->a(Laqk;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object p1, p0, Laqk$a$1;->a:Laqk$a;

    iget-object p1, p1, Laqk$a;->a:Laqk;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Laqk;->c(Laqk;Z)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean;)V
    .locals 3

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAuthCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Laqk$a$1;->a:Laqk$a;

    invoke-static {v2}, Laqk$a;->c(Laqk$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laqk$a$1;->a:Laqk$a;

    iget-object v1, v1, Laqk$a;->a:Laqk;

    invoke-static {v1}, Laqk;->b(Laqk;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XQrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Laqk$a$1;->a:Laqk$a;

    iget-object v0, v0, Laqk$a;->a:Laqk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laqk;->b(Laqk;Z)Z

    .line 266
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean;->getCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean;->data:Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean$a;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean;->data:Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean$a;->a:Ljava/lang/String;

    .line 268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean;->data:Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean$a;->b:Ljava/lang/String;

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Laqk$a$1;->a:Laqk$a;

    invoke-static {v0}, Laqk$a;->d(Laqk$a;)V

    .line 271
    iget-object v0, p0, Laqk$a$1;->a:Laqk$a;

    iget-object v0, v0, Laqk$a;->a:Laqk;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean;->data:Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean$a;

    iget-object v1, p0, Laqk$a$1;->a:Laqk$a;

    invoke-static {v1}, Laqk$a;->c(Laqk$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Laqk;->a(Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean$a;Ljava/lang/String;)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 273
    iget-object p1, p0, Laqk$a$1;->a:Laqk$a;

    iget-object p1, p1, Laqk$a;->a:Laqk;

    invoke-virtual {p1}, Laqk;->g()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 275
    iget-object p1, p0, Laqk$a$1;->a:Laqk$a;

    iget-object p1, p1, Laqk$a;->a:Laqk;

    invoke-static {p1}, Laqk;->c(Laqk;)I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    .line 276
    iget-object p1, p0, Laqk$a$1;->a:Laqk$a;

    iget-object p1, p1, Laqk$a;->a:Laqk;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Laqk;->c(Laqk;Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 259
    check-cast p1, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean;

    invoke-virtual {p0, p1}, Laqk$a$1;->a(Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean;)V

    return-void
.end method
