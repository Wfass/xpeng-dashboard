.class Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$1;
.super Ljava/lang/Object;
.source "BaseCarControl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->connectCar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mIsCarConnect:Z

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->initCarManager()V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->onConnectedCar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->handleException(Ljava/lang/Exception;)V

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->TAG:Ljava/lang/String;

    const-string v1, "BaseCarControl  onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mIsCarConnect:Z

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->onDisconnectCar()V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mCarApiClient:Landroid/car/Car;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->access$000(Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;)V

    .line 68
    return-void
.end method
