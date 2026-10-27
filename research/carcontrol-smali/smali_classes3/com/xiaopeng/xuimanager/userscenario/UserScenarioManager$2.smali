.class Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$2;
.super Landroid/os/Handler;
.source "UserScenarioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;-><init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;Landroid/os/Looper;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$2;->this$0:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 780
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$2;->this$0:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->access$200(Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
