.class Lcom/xiaopeng/xuiservice/iot/IoTManagerService$1;
.super Ljava/lang/Object;
.source "IoTManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/iot/IoTManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/IoTManagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/IoTManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/IoTManagerService;

    .line 130
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$1;->this$0:Lcom/xiaopeng/xuiservice/iot/IoTManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 134
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->init()V

    .line 136
    invoke-static {}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->getInstance()Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->init()V

    .line 138
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/AccountUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->init()V

    .line 140
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;

    .line 141
    .local v1, "manager":Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;->init()V

    .line 143
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService$1;->this$0:Lcom/xiaopeng/xuiservice/iot/IoTManagerService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;->access$100(Lcom/xiaopeng/xuiservice/iot/IoTManagerService;)Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;->addDeviceListener(Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;)V

    goto :goto_1

    .line 145
    :cond_0
    const-string v2, "IoTManagerService##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not enabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v1    # "manager":Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
    :goto_1
    goto :goto_0

    .line 148
    :cond_1
    return-void
.end method
