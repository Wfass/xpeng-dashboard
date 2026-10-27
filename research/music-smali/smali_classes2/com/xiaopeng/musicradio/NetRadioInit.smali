.class public Lcom/xiaopeng/musicradio/NetRadioInit;
.super Lbex;
.source "NetRadioInit.java"


# instance fields
.field private mInit:Lcom/xiaopeng/musicradio/netradio/FlavorNetRadioInit;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lbex;-><init>()V

    .line 26
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/FlavorNetRadioInit;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/netradio/FlavorNetRadioInit;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/NetRadioInit;->mInit:Lcom/xiaopeng/musicradio/netradio/FlavorNetRadioInit;

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
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/NetRadioInit;->mInit:Lcom/xiaopeng/musicradio/netradio/FlavorNetRadioInit;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/FlavorNetRadioInit;->initDelay()V

    .line 48
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/d;->a()Lcom/xiaopeng/musicradio/model/dui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/d;->b()V

    .line 49
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/g;->a()Lcom/xiaopeng/musicradio/model/dui/g;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/dui/b;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/model/dui/b;-><init>()V

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/model/dui/g;->a(ILcom/xiaopeng/musicradio/model/dui/g$a;)V

    .line 50
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/h;->a()Lcom/xiaopeng/musicradio/model/dui/h;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/dui/c;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/model/dui/c;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/model/dui/h;->a(ILcom/xiaopeng/musicradio/model/dui/h$a;)V

    .line 51
    invoke-static {}, Lbda;->a()Lbda;

    return-void
.end method

.method public initNow()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/musicradio/NetRadioInit;->mInit:Lcom/xiaopeng/musicradio/netradio/FlavorNetRadioInit;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/FlavorNetRadioInit;->initNow()V

    .line 36
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aw;->a()Lcom/xiaopeng/musicradio/utils/aw;

    .line 37
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lbqp;->a(ILbqn;)V

    .line 39
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Laqr;->a(ILaqt;)V

    .line 40
    new-instance v0, Layv;

    invoke-direct {v0}, Layv;-><init>()V

    .line 41
    invoke-static {}, Lblg;->a()Lblg;

    move-result-object v0

    const-string v1, "/netradio/fragment/player"

    invoke-virtual {v0, v2, v1}, Lblg;->a(ILjava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/a;->a()V

    return-void
.end method

.method public initPlayer()V
    .locals 3

    .line 30
    invoke-static {}, Lcom/xiaopeng/musicradio/player/g;->a()Lcom/xiaopeng/musicradio/player/g;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/musicradio/model/player/NetRadioPlayerWrapper;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/player/g;->a(ILjava/lang/Class;)V

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

    const-class v1, Lbjs;

    const-string v2, "com.xiaopeng.musicradio.service.NetRadioService"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/service/c;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbjr;

    const-string v2, "com.xiaopeng.musicradio.service.NetRadioMineService"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/service/c;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
