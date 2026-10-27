.class public final synthetic Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$UserScenarioHandler$Hoerc7vXm2hNjAdeFXCZe0pgioc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$UserScenarioHandler$Hoerc7vXm2hNjAdeFXCZe0pgioc;->f$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    iput p2, p0, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$UserScenarioHandler$Hoerc7vXm2hNjAdeFXCZe0pgioc;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$UserScenarioHandler$Hoerc7vXm2hNjAdeFXCZe0pgioc;->f$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$UserScenarioHandler$Hoerc7vXm2hNjAdeFXCZe0pgioc;->f$1:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->lambda$handleMessage$0(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;I)V

    return-void
.end method
