.class public Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager_AutoClass;
.super Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;
.source "AccountManager_AutoClass.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public checkLogin()Z
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v1, "checkLogin   params: null"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "checkLogin"

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLogin   result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getAppId()Ljava/lang/String;
    .locals 1

    const-string v0, "carcontrol"

    return-object v0
.end method

.method protected getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.vehicle.AccountManagerServer"

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

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager_AutoClass;->TAG:Ljava/lang/String;

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

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "onAccountUserInfoChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "onAccountHabitListChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager$ISignalCallback;

    .line 34
    invoke-interface {v0, p2}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager$ISignalCallback;->onAccountHabitListChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager$ISignalCallback;

    .line 27
    invoke-interface {v0, p2}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager$ISignalCallback;->onAccountUserInfoChanged(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
