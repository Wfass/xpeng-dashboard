.class public Lbel;
.super Lbef;
.source "NeteaseAuthModelImpl.java"


# instance fields
.field c:Ljava/lang/String;

.field private volatile d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lbef;-><init>()V

    const-string v0, "sp_netease_login_time"

    .line 27
    iput-object v0, p0, Lbel;->c:Ljava/lang/String;

    return-void
.end method

.method private r()V
    .locals 3

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 112
    iget-object v2, p0, Lbel;->c:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    .line 97
    new-instance p1, Lasj$t;

    invoke-direct {p1}, Lasj$t;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p2, Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbel;->d(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lbel;->r()V

    .line 52
    invoke-super {p0, p1, p2, p3}, Lbef;->a(Ljava/lang/String;Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;Ljava/lang/String;)V

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onBindSuccess: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NeteaseAuthModelImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected a()Z
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkInvalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NeteaseAuthModelImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lbel;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 1

    .line 101
    invoke-static {}, Lbem;->a()Lbem;

    move-result-object v0

    invoke-virtual {v0}, Lbem;->h()V

    .line 102
    new-instance v0, Lasj$u;

    invoke-direct {v0}, Lasj$u;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected c()Lbdw;
    .locals 1

    .line 107
    invoke-static {}, Lbem;->a()Lbem;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .locals 2

    .line 63
    invoke-super {p0}, Lbef;->d()V

    .line 64
    iget-object v0, p0, Lbel;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_netease_sid"

    const-string v1, ""

    .line 65
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbel;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NeteaseAuthModelImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iput-object p1, p0, Lbel;->d:Ljava/lang/String;

    .line 78
    iget-object p1, p0, Lbel;->d:Ljava/lang/String;

    const-string v0, "sp_netease_sid"

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "sp_netease_logout_server_flag"

    return-object v0
.end method

.method public g()Z
    .locals 4

    .line 90
    iget-object v0, p0, Lbel;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbel;->d:Ljava/lang/String;

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeteaseMusicBinded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbel;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbel;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NeteaseAuthModelImpl"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    const-string v0, "sp_netease_open_id"

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    const-string v0, "sp_netease_expire_time"

    return-object v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected m()I
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "error1 tip===="

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "NeteaseAuthModelImpl"

    const-string v2, "getUnbindTipStringRes: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->netease_unbind_tips:I

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lbel;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    const-string v0, "NeteaseAuthModelImpl"

    return-object v0
.end method
