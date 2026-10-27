.class public final synthetic Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$sQIfb5hzkP4zcB2Kx9RXKjUqZLU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

.field private final synthetic f$1:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$sQIfb5hzkP4zcB2Kx9RXKjUqZLU;->f$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$sQIfb5hzkP4zcB2Kx9RXKjUqZLU;->f$1:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$sQIfb5hzkP4zcB2Kx9RXKjUqZLU;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$sQIfb5hzkP4zcB2Kx9RXKjUqZLU;->f$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$sQIfb5hzkP4zcB2Kx9RXKjUqZLU;->f$1:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$sQIfb5hzkP4zcB2Kx9RXKjUqZLU;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->lambda$showExitWindow$13(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V

    return-void
.end method
