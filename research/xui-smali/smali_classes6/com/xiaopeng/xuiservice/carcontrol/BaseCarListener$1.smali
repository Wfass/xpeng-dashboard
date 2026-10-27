.class Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$1;
.super Ljava/lang/Object;
.source "BaseCarListener.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->connectCar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->TAG:Ljava/lang/String;

    const-string v1, "connectcar onServiceConnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->onConnectedCar()V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->initCarManager()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->handleException(Ljava/lang/Exception;)V

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->TAG:Ljava/lang/String;

    const-string v1, "connectcar onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->onDisconnectCar()V

    .line 64
    return-void
.end method
