.class public Lcom/xiaopeng/musicradio/program/FlavorProgramInit;
.super Lbex;
.source "FlavorProgramInit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
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
    .locals 0

    return-void
.end method

.method public initNow()V
    .locals 3

    .line 13
    invoke-static {}, Lblj;->a()Lblj;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/d;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/program/player/view/d;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lblj;->a(ILcom/xiaopeng/musicradio/playercomponent/small/view/c;)V

    .line 14
    invoke-static {}, Lazp;->a()Lazp;

    move-result-object v0

    new-instance v1, Lbmw;

    invoke-direct {v1}, Lbmw;-><init>()V

    invoke-virtual {v0, v2, v1}, Lazp;->a(ILazo;)V

    return-void
.end method

.method public onMusicBinded()V
    .locals 0

    return-void
.end method

.method public registerService()V
    .locals 0

    return-void
.end method
