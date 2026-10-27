.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "InputController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController;


# static fields
.field private static final TAG:Ljava/lang/String; = "InputController"


# instance fields
.field private mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

.field private mCarInputManager:Landroid/car/hardware/input/CarInputManager;

.field protected mKeyCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    return-void
.end method


# virtual methods
.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_input"

    .line 34
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/input/CarInputManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mCarInputManager:Landroid/car/hardware/input/CarInputManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "InputController"

    const-string v0, "Car not connected"

    .line 36
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 9

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mKeyCodeMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mKeyCodeMap:Ljava/util/HashMap;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mPropertyTypeMap:Ljava/util/HashMap;

    const/16 v1, 0x1fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputAudioSwitchEventMsgV2;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mPropertyTypeMap:Ljava/util/HashMap;

    const/16 v2, 0x1fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputAudioSwitchEventMsgV2;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mPropertyTypeMap:Ljava/util/HashMap;

    const/16 v3, 0x1fd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputAudioSwitchEventMsgV2;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mPropertyTypeMap:Ljava/util/HashMap;

    const/16 v4, 0x1fe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-class v6, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputAudioSwitchEventMsgV2;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mPropertyTypeMap:Ljava/util/HashMap;

    const/16 v5, 0x20e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v7, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputAudioSwitchEventMsgV2;

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mPropertyTypeMap:Ljava/util/HashMap;

    const/16 v6, 0x20f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-class v8, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputAudioSwitchEventMsgV2;

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mKeyCodeMap:Ljava/util/HashMap;

    const v7, 0x21402223

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x21402224

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x21402225

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x21402226

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x21402229

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x2140222a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerCanEventMsg(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEventMsg;",
            ">;>;)V"
        }
    .end annotation

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    if-nez p1, :cond_0

    .line 99
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    .line 121
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mCarInputManager:Landroid/car/hardware/input/CarInputManager;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    invoke-virtual {p1, v0}, Landroid/car/hardware/input/CarInputManager;->registerCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "InputController"

    const-string v0, "Car not connected"

    .line 123
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unregisterCanEventMsg(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEventMsg;",
            ">;>;)V"
        }
    .end annotation

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    if-nez p1, :cond_0

    return-void

    .line 133
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mCarInputManager:Landroid/car/hardware/input/CarInputManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/input/CarInputManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method
