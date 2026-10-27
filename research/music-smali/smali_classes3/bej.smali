.class public Lbej;
.super Lbef;
.source "KugouAuthModelImpl.java"


# instance fields
.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lbef;-><init>()V

    const-string v0, "sp_kugou_login_time"

    .line 21
    iput-object v0, p0, Lbej;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    .line 48
    new-instance p1, Lasj$h;

    invoke-direct {p1}, Lasj$h;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2, p3}, Lbef;->a(Ljava/lang/String;Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1}, Lbej;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 52
    invoke-static {}, Lbek;->a()Lbek;

    move-result-object v0

    invoke-virtual {v0}, Lbek;->h()V

    .line 53
    new-instance v0, Lasj$i;

    invoke-direct {v0}, Lasj$i;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected c()Lbdw;
    .locals 1

    .line 58
    invoke-static {}, Lbek;->a()Lbek;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_kugou_last_music_login_type"

    .line 77
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "sp_kugou_logout_server_flag"

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    const-string v0, "sp_kugou_open_id"

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    const-string v0, "sp_kugou_expire_time"

    return-object v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected m()I
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "error1 tip===="

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "KugouAuthModelImpl"

    const-string v2, "getUnbindTipStringRes: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->kugou2_unbind_tips:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    const-string v0, "key_kugou_last_music_login_type"

    const-string v1, ""

    .line 82
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    const-string v0, "KugouAuthModelImpl"

    return-object v0
.end method
