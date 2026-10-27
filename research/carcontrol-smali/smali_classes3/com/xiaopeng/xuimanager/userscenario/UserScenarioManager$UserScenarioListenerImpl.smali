.class Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListenerImpl;
.super Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener$Stub;
.source "UserScenarioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserScenarioListenerImpl"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 726
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener$Stub;-><init>()V

    .line 727
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListenerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onUserScenarioStateChanged(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 732
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListenerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
