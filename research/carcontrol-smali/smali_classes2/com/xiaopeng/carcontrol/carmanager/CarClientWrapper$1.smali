.class Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$1;
.super Ljava/lang/Object;
.source "CarClientWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    const-string p1, "CarClientWrapper"

    const-string p2, "onServiceConnected"

    const/4 v0, 0x0

    .line 199
    invoke-static {p1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 200
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->access$100(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;)V

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->access$200(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;)Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$ICarServiceConnectListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->access$200(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;)Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$ICarServiceConnectListener;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$ICarServiceConnectListener;->onCarServiceConnected(Z)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const-string p1, "CarClientWrapper"

    const-string v0, "onServiceDisconnected"

    const/4 v1, 0x0

    .line 208
    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->access$302(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;Z)Z

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->access$200(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;)Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$ICarServiceConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->access$200(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;)Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$ICarServiceConnectListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$ICarServiceConnectListener;->onCarServiceConnected(Z)V

    .line 213
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Force stop Unity process due to Car Service disconnected"

    .line 214
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    return-void
.end method
