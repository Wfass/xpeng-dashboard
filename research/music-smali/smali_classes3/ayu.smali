.class public Layu;
.super Ljava/lang/Object;
.source "NetRadioCollectManager.java"

# interfaces
.implements Lbds;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layu$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Layu;
    .locals 1

    .line 30
    sget-object v0, Layu$a;->a:Layu;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 2

    const-string v0, "NetRadioCollectManager"

    const-string v1, "netRadioLove: "

    .line 80
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    invoke-virtual {v0}, Lbdx;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbda;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Z)V

    .line 86
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->isBipartite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    invoke-static {}, Lare;->d()Lare;

    move-result-object v0

    invoke-static {p1}, Lazc;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lare;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V

    .line 88
    invoke-static {}, Lbdy;->c()Lbdy;

    move-result-object p1

    invoke-virtual {p1}, Lbdy;->a()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 35
    invoke-static {}, Lazb;->a()Lazb;

    move-result-object v0

    invoke-virtual {v0}, Lazb;->b()V

    const-string v0, "SP_LOVE_NETRADIO_TAG"

    const-string v1, ""

    .line 36
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v0

    invoke-virtual {v0}, Lbda;->d()V

    .line 38
    new-instance v0, Lbju$a;

    invoke-direct {v0}, Lbju$a;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 2

    const-string v0, "NetRadioCollectManager"

    const-string v1, "netRadioCancelLove: "

    .line 98
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    invoke-virtual {v0}, Lbdx;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lbda;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Z)V

    .line 104
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->isBipartite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    invoke-static {}, Lare;->d()Lare;

    move-result-object v0

    invoke-static {p1}, Lazc;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lare;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V

    .line 106
    invoke-static {}, Lbdy;->c()Lbdy;

    move-result-object p1

    invoke-virtual {p1}, Lbdy;->a()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    .line 43
    invoke-virtual {p0}, Layu;->d()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 111
    invoke-static {}, Lazb;->a()Lazb;

    move-result-object v0

    invoke-virtual {v0}, Lazb;->d()V

    return-void
.end method

.method public e()V
    .locals 0

    .line 116
    invoke-virtual {p0}, Layu;->f()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 120
    invoke-static {}, Lazb;->a()Lazb;

    move-result-object v0

    invoke-virtual {v0}, Lazb;->b()V

    .line 121
    invoke-static {}, Lazb;->a()Lazb;

    move-result-object v0

    invoke-virtual {v0}, Lazb;->c()V

    return-void
.end method
