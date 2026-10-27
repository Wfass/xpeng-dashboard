.class public Lcom/xiaopeng/musicradio/music/logic/playopt/SwitchNextModeLogic;
.super Ljava/lang/Object;
.source "SwitchNextModeLogic.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/logic/ISyncLogic;


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.music.ms_opt/switch_next_mode"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exeSync(Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 34
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->w()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "PlayCurrentLogic"

    return-object v0
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public string()Ljava/lang/String;
    .locals 1

    const-string v0, "PlayCurrentLogic"

    return-object v0
.end method
