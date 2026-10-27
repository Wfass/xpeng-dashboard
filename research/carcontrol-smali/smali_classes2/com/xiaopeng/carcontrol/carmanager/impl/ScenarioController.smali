.class public Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;
.super Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
.source "ScenarioController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController<",
        "Landroid/car/hardware/CarEcuManager;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;",
        ">;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "ScenarioController"


# instance fields
.field private final mXuiUserScenarioCallback:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;

.field protected mXuiUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;-><init>()V

    .line 26
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScenarioController$Sr-XwNj6H_oQK5Ud8-pmfVPfLKU;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScenarioController$Sr-XwNj6H_oQK5Ud8-pmfVPfLKU;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mXuiUserScenarioCallback:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;

    return-void
.end method

.method private handleUserScenario(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scenario",
            "state"
        }
    .end annotation

    const-string v0, "ScenarioController"

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUserScenario, scenario: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_d

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-ne p2, v1, :cond_6

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    :goto_0
    move v2, v0

    goto :goto_1

    :sswitch_0
    const-string p2, "meditation_mode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :sswitch_1
    const-string/jumbo p2, "spacecapsule_mode_sleep"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :sswitch_2
    const-string/jumbo p2, "spacecapsule_mode_movie"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    .line 136
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 137
    :try_start_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;

    .line 138
    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;->onMeditationModeStateChanged(Z)V

    goto :goto_2

    .line 140
    :cond_3
    monitor-exit p1

    goto/16 :goto_9

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 143
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 144
    :try_start_1
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;

    .line 145
    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;->onSpaceCapsuleSleepStateChanged(Z)V

    goto :goto_3

    .line 147
    :cond_4
    monitor-exit p1

    goto/16 :goto_9

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    .line 150
    :pswitch_2
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v4

    .line 151
    :try_start_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;

    .line 152
    invoke-interface {p2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;->onSpaceCapsuleCinemaStateChanged(Z)V

    goto :goto_4

    .line 154
    :cond_5
    monitor-exit v4

    goto/16 :goto_9

    :catchall_2
    move-exception p1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_6
    if-nez p2, :cond_d

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_1

    goto :goto_5

    :sswitch_3
    const-string p2, "meditation_mode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_5

    :sswitch_4
    const-string/jumbo p2, "spacecapsule_mode_sleep"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    move v0, v3

    goto :goto_5

    :sswitch_5
    const-string/jumbo p2, "spacecapsule_mode_movie"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    move v0, v2

    :goto_5
    packed-switch v0, :pswitch_data_1

    goto :goto_9

    .line 162
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 163
    :try_start_3
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;

    .line 164
    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;->onMeditationModeStateChanged(Z)V

    goto :goto_6

    .line 166
    :cond_a
    monitor-exit p1

    goto :goto_9

    :catchall_3
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p2

    .line 169
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 170
    :try_start_4
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;

    .line 171
    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;->onSpaceCapsuleSleepStateChanged(Z)V

    goto :goto_7

    .line 173
    :cond_b
    monitor-exit p1

    goto :goto_9

    :catchall_4
    move-exception p2

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p2

    .line 176
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 177
    :try_start_5
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;

    .line 178
    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;->onSpaceCapsuleCinemaStateChanged(Z)V

    goto :goto_8

    .line 180
    :cond_c
    monitor-exit p1

    goto :goto_9

    :catchall_5
    move-exception p2

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p2

    :cond_d
    :goto_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x25a45994 -> :sswitch_2
        -0x255169ed -> :sswitch_1
        0x34c16fe4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x25a45994 -> :sswitch_5
        -0x255169ed -> :sswitch_4
        0x34c16fe4 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected dependOnXuiManager()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected disconnect()V
    .locals 0

    return-void
.end method

.method public getCurrentUserScenario()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mXuiUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->getCurrentUserScenario()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentUserScenario: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ScenarioController"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method protected getRegisterPropertyIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserScenarioStatus(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scenario"
        }
    .end annotation

    const/4 v0, -0x1

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mXuiUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->getUserScenarioStatus(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentUserScenario: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "ScenarioController"

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return v0
.end method

.method protected handleEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method protected initCarManager(Landroid/car/Car;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation

    const-string p1, "ScenarioController"

    const-string v0, "InitCarManager"

    .line 35
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initXuiManager()V
    .locals 3

    const-string v0, "ScenarioController"

    const-string v1, "Init xui manager start"

    .line 46
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getXUserScenarioManager()Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mXuiUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    if-eqz v1, :cond_0

    .line 49
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mIsMainProcess:Z

    if-eqz v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mXuiUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mXuiUserScenarioCallback:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->registerListener(Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "UserScenarioManager is null"

    .line 53
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    const-string v1, "Init xui manager end"

    .line 55
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$0$ScenarioController(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "scenario",
            "status"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->handleUserScenario(Ljava/lang/String;I)V

    return-void
.end method

.method public registerBinderObserver()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mXuiUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    if-eqz v0, :cond_0

    .line 126
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->registerBinderObserver(Landroid/os/IBinder;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public reportScenarioState(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scenario",
            "state"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mXuiUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->reportStatus(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public startScenario(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "scenario"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;->mXuiUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v1, "activity"

    .line 80
    invoke-virtual {v0, p2, v1}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->enterUserScenario(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->exitUserScenario(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 86
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startScenario: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", scenario: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", ret= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v1, "ScenarioController"

    invoke-static {v1, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
