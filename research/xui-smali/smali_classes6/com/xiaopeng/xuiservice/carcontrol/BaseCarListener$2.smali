.class Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$2;
.super Ljava/lang/Object;
.source "BaseCarListener.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->connectXUI()V
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

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$2;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$2;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->TAG:Ljava/lang/String;

    const-string v1, "connect xui onServiceConnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$2;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->onConnectXUI()V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$2;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->initXUIManager()V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$2;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->TAG:Ljava/lang/String;

    const-string v2, "onConnectXUI error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v0    # "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$2;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->TAG:Ljava/lang/String;

    const-string v1, "connect xui onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$2;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->onDisconnectXUI()V

    .line 86
    return-void
.end method
