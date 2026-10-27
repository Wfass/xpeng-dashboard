.class public Lcom/xiaopeng/musicradio/VipInit;
.super Lbex;
.source "VipInit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lbex;-><init>()V

    return-void
.end method


# virtual methods
.method public igOff()V
    .locals 0

    return-void
.end method

.method public igOn()V
    .locals 0

    return-void
.end method

.method public initDelay()V
    .locals 2

    .line 37
    invoke-static {}, Lbsy;->b()Lbsy;

    .line 38
    invoke-static {}, Lbsu;->b()Lbsu;

    .line 39
    invoke-static {}, Lbss;->b()Lbss;

    .line 41
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->g()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbsy;->b(I)V

    .line 44
    :cond_0
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->d()Lbel;

    move-result-object v0

    invoke-virtual {v0}, Lbel;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Lbsu;->b()Lbsu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbsu;->b(I)V

    .line 46
    invoke-static {}, Lbsu;->b()Lbsu;

    move-result-object v0

    invoke-virtual {v0}, Lbsu;->o()V

    .line 48
    :cond_1
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->e()Lbej;

    move-result-object v0

    invoke-virtual {v0}, Lbej;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    invoke-static {}, Lbss;->b()Lbss;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbss;->b(I)V

    .line 51
    :cond_2
    invoke-static {}, Lbta;->a()Lbta;

    move-result-object v0

    invoke-virtual {v0}, Lbta;->c()V

    return-void
.end method

.method public initNow()V
    .locals 0

    return-void
.end method

.method public initPlayer()V
    .locals 0

    return-void
.end method

.method public onMusicBinded()V
    .locals 0

    return-void
.end method

.method public registerService()V
    .locals 3

    .line 56
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsi;

    const-string v2, "com.xiaopeng.musicradio.service.VipService"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/service/c;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsh;

    const-string v2, "com.xiaopeng.musicradio.service.QqVipService"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/service/c;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsg;

    const-string v2, "com.xiaopeng.musicradio.service.NeteaseVipService"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/service/c;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsf;

    const-string v2, "com.xiaopeng.musicradio.service.KugouVipService"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/service/c;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsj;

    const-string v2, "com.xiaopeng.musicradio.service.XmlyVipService"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/service/c;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
