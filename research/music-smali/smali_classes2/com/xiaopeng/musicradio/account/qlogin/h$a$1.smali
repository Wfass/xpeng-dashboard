.class Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;
.super Lbkv;
.source "QrCodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/account/qlogin/h$a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAuthCode:onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->c(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QQrCodePresenter"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/account/qlogin/h;->b(Lcom/xiaopeng/musicradio/account/qlogin/h;Z)Z

    .line 300
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->g()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->d(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)V

    .line 302
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->c(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Lcom/xiaopeng/musicradio/account/qlogin/h;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/account/qlogin/h;->c(Lcom/xiaopeng/musicradio/account/qlogin/h;Z)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean;)V
    .locals 3

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAuthCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->c(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->c(Lcom/xiaopeng/musicradio/account/qlogin/h;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->b(Lcom/xiaopeng/musicradio/account/qlogin/h;Z)Z

    .line 283
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean;->getCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    .line 284
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->d(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)V

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean;->data:Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->c(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Lcom/xiaopeng/musicradio/account/qlogin/h;Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;Ljava/lang/String;)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 288
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->g()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 290
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->d(Lcom/xiaopeng/musicradio/account/qlogin/h;)I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    .line 291
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->c(Lcom/xiaopeng/musicradio/account/qlogin/h;Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 276
    check-cast p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;->a(Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean;)V

    return-void
.end method
