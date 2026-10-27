.class Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$2;
.super Ljava/lang/Object;
.source "UserScenarioConfiger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 487
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$2;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 490
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$2;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->access$500(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->switchScreen(ILjava/lang/String;Z)V

    .line 491
    return-void
.end method
