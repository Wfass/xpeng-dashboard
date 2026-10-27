.class public Lcom/xiaopeng/musicradio/ProgramInit;
.super Lbex;
.source "ProgramInit.java"


# instance fields
.field private mInit:Lcom/xiaopeng/musicradio/program/FlavorProgramInit;

.field private mUtilInit:Lcom/xiaopeng/musicradio/ProgramUtilInit;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lbex;-><init>()V

    .line 31
    new-instance v0, Lcom/xiaopeng/musicradio/program/FlavorProgramInit;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/FlavorProgramInit;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/ProgramInit;->mInit:Lcom/xiaopeng/musicradio/program/FlavorProgramInit;

    .line 32
    new-instance v0, Lcom/xiaopeng/musicradio/ProgramUtilInit;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/ProgramUtilInit;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/ProgramInit;->mUtilInit:Lcom/xiaopeng/musicradio/ProgramUtilInit;

    return-void
.end method


# virtual methods
.method public igOff()V
    .locals 1

    .line 73
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v0

    invoke-virtual {v0}, Lbmr;->d()V

    return-void
.end method

.method public igOn()V
    .locals 0

    return-void
.end method

.method public initDelay()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/ProgramInit;->mInit:Lcom/xiaopeng/musicradio/program/FlavorProgramInit;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/FlavorProgramInit;->initDelay()V

    .line 53
    invoke-static {}, Laqo;->a()Laqo;

    .line 54
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/g;->a()Lcom/xiaopeng/musicradio/model/dui/g;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/program/model/dui/a;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/program/model/dui/a;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/model/dui/g;->a(ILcom/xiaopeng/musicradio/model/dui/g$a;)V

    .line 55
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/h;->a()Lcom/xiaopeng/musicradio/model/dui/h;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/program/model/dui/b;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/program/model/dui/b;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/model/dui/h;->a(ILcom/xiaopeng/musicradio/model/dui/h$a;)V

    return-void
.end method

.method public initNow()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/ProgramInit;->mInit:Lcom/xiaopeng/musicradio/program/FlavorProgramInit;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/FlavorProgramInit;->initNow()V

    .line 42
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ba;->a()Lcom/xiaopeng/musicradio/utils/ba;

    .line 43
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Laqr;->a(ILaqt;)V

    .line 44
    invoke-static {}, Lbmn;->a()Lbmn;

    .line 45
    invoke-static {}, Lblg;->a()Lblg;

    move-result-object v0

    const-string v1, "/program/fragment/player"

    invoke-virtual {v0, v2, v1}, Lblg;->a(ILjava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/musicradio/ProgramInit;->mUtilInit:Lcom/xiaopeng/musicradio/ProgramUtilInit;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/ProgramUtilInit;->initNow()V

    return-void
.end method

.method public initPlayer()V
    .locals 3

    .line 36
    invoke-static {}, Lcom/xiaopeng/musicradio/player/g;->a()Lcom/xiaopeng/musicradio/player/g;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/musicradio/program/model/player/ProgramPlayerWrapper;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/player/g;->a(ILjava/lang/Class;)V

    return-void
.end method

.method public onMusicBinded()V
    .locals 0

    return-void
.end method

.method public registerService()V
    .locals 3

    .line 61
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lblp;

    const-string v2, "com.xiaopeng.musicradio.service.ProgramService"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/service/c;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lblo;

    const-string v2, "com.xiaopeng.musicradio.service.ProgramMineService"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/service/c;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
