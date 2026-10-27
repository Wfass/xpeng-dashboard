.class public final synthetic Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$2huiEQEG0X_rfd1Sh5EpfEGurFo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$2huiEQEG0X_rfd1Sh5EpfEGurFo;->f$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$2huiEQEG0X_rfd1Sh5EpfEGurFo;->f$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->lambda$registerBroadcast$6(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
