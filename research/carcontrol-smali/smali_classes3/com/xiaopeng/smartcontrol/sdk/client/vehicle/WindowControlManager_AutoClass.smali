.class public Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;
.super Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;
.source "WindowControlManager_AutoClass.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isWindowLockActive"

    const-string v2, "onWindowLockStateChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getWindowPos"

    const-string v2, "onWindowPosChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public controlWindow(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlWindow   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "controlWindow"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlWindow   result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected getAppId()Ljava/lang/String;
    .locals 1

    const-string v0, "carcontrol"

    return-object v0
.end method

.method protected getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.vehicle.WindowControlManagerServer"

    return-object v0
.end method

.method public getWindowPos(I)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "window_pos"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    return p1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWindowPos   params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "getWindowPos"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWindowPos   result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isWindowLockActive()Z
    .locals 5

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "window_lock"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "isWindowLockActive   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "isWindowLockActive"

    .line 79
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWindowLockActive   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onIpcReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "data"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "onWindowPosChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "onWindowLockStateChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "onWindowStateChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    .line 44
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 45
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager$ISignalCallback;

    const-string v4, ","

    .line 46
    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 47
    array-length v5, v4

    if-ne v5, v1, :cond_3

    .line 48
    aget-object v5, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-interface {v0, v5, v4}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager$ISignalCallback;->onWindowPosChanged(IF)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 50
    invoke-interface {v0, v3, v4}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager$ISignalCallback;->onWindowPosChanged(IF)V

    goto :goto_1

    .line 53
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "window_pos"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 36
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 37
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager$ISignalCallback;

    .line 38
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager$ISignalCallback;->onWindowLockStateChanged(Z)V

    goto :goto_2

    .line 40
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "window_lock"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 29
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager$ISignalCallback;

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager$ISignalCallback;->onWindowStateChanged(I)V

    goto :goto_3

    :cond_6
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x39be66ce -> :sswitch_2
        -0x28607583 -> :sswitch_1
        0x6ab01cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setWindowLockActive(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindowLockActive   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "setWindowLockActive"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindowLockActive   result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWindowPos(IF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "param0",
            "param1"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindowPos   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "setWindowPos"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWindowPos   result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
