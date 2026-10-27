.class Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$3;
.super Ljava/lang/Object;
.source "BaseCarListener.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->initConnectListener()V
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

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$3;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectXUI()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$3;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->onConnectXUI()V

    .line 163
    return-void
.end method

.method public onConnectedCar()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$3;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->TAG:Ljava/lang/String;

    const-string v1, "mConn BaseCarListener onConnectedCar onCarManagerInited()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$3;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->onCarManagerInited()V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$3;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->onConnectedCar()V

    .line 152
    return-void
.end method

.method public onDisconnectCar()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$3;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->TAG:Ljava/lang/String;

    const-string v1, "onDisconnectCar !!!!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$3;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->onDisconnectCar()V

    .line 158
    return-void
.end method

.method public onDisconnectXUI()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$3;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->onDisconnectXUI()V

    .line 168
    return-void
.end method
