.class public Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager_AutoClass;
.super Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;
.source "MirrorControlManager_AutoClass.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getMirrorFoldState"

    const-string v2, "onMirrorFoldStateChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public foldMirror(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "foldMirror   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "foldMirror"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "foldMirror   result: "

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

.method public getMirrorFoldState()I
    .locals 5

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mirror_fold"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getMirrorFoldState   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getMirrorFoldState"

    .line 51
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMirrorFoldState   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.vehicle.MirrorControlManagerServer"

    return-object v0
.end method

.method public onIpcReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
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

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager_AutoClass;->TAG:Ljava/lang/String;

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

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "onMirrorFoldStateChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager$ISignalCallback;

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager$ISignalCallback;->onMirrorFoldStateChanged(I)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mirror_fold"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
