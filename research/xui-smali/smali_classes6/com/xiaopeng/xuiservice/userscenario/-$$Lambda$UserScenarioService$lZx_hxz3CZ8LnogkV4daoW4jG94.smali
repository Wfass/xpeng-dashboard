.class public final synthetic Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$lZx_hxz3CZ8LnogkV4daoW4jG94;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$lZx_hxz3CZ8LnogkV4daoW4jG94;->f$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    iput p2, p0, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$lZx_hxz3CZ8LnogkV4daoW4jG94;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$lZx_hxz3CZ8LnogkV4daoW4jG94;->f$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$lZx_hxz3CZ8LnogkV4daoW4jG94;->f$1:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->lambda$reportStatus$5(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;I)V

    return-void
.end method
