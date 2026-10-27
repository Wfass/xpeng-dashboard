.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionReboot;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionReboot.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 2

    .line 11
    const-string v0, "reboot"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/innerutils/CmdUtil;->execCmd(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/innerutils/CmdUtil$CmdResult;

    .line 12
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$Fg4hXwDfFbjGsg4TYSVq2rfkqlE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$Fg4hXwDfFbjGsg4TYSVq2rfkqlE;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionReboot;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 18
    return-void
.end method
