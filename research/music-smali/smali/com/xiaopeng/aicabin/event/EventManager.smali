.class public Lcom/xiaopeng/aicabin/event/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# static fields
.field public static final EVENT_AI_CABIN_SERVICE_360_CAMERA:I = 0x2932e0

.field public static final EVENT_AI_CABIN_SERVICE_5D_CINEMA:I = 0x1e8480

.field public static final EVENT_AI_CABIN_SERVICE_ACCOUNT:I = 0x10c8e0

.field public static final EVENT_AI_CABIN_SERVICE_AIOT_APP:I = 0x30d400

.field public static final EVENT_AI_CABIN_SERVICE_AIOT_SERVICE:I = 0x2c4020

.field public static final EVENT_AI_CABIN_SERVICE_AIPOWER:I = 0x325aa0

.field public static final EVENT_AI_CABIN_SERVICE_AIR_CONDITION:I = 0x36ee80

.field public static final EVENT_AI_CABIN_SERVICE_AI_ASSISTANT:I = 0x231860

.field public static final EVENT_AI_CABIN_SERVICE_APPSTORE:I = 0x19f0a0

.field public static final EVENT_AI_CABIN_SERVICE_APP_LIST:I = 0x186a00

.field public static final EVENT_AI_CABIN_SERVICE_AUTO_SHOW:I = 0x2dc6c0

.field public static final EVENT_AI_CABIN_SERVICE_BEGIN:I = 0xf4240

.field public static final EVENT_AI_CABIN_SERVICE_BT_PHONE:I = 0x2625a0

.field public static final EVENT_AI_CABIN_SERVICE_CAR_SETTINGS:I = 0x33e140

.field public static final EVENT_AI_CABIN_SERVICE_CONCERT:I = 0x200b20

.field public static final EVENT_AI_CABIN_SERVICE_CONTROL:I = 0x124f80

.field public static final EVENT_AI_CABIN_SERVICE_DC:I = 0x2f4d60

.field public static final EVENT_AI_CABIN_SERVICE_DVR:I = 0x27ac40

.field public static final EVENT_AI_CABIN_SERVICE_MEDITATION:I = 0x1b7740

.field public static final EVENT_AI_CABIN_SERVICE_MUSIC:I = 0x155cc0

.field public static final EVENT_AI_CABIN_SERVICE_NAVI:I = 0x13d620

.field public static final EVENT_AI_CABIN_SERVICE_PARK:I = 0x16e360

.field public static final EVENT_AI_CABIN_SERVICE_POWER_CENTER:I = 0x3567e0

.field public static final EVENT_AI_CABIN_SERVICE_PRIVACYCENTRAL:I = 0x2ab980

.field public static final EVENT_AI_CABIN_SERVICE_PRIVATE_CUSTOM_SERVICE:I = 0x249f00

.field public static final EVENT_AI_CABIN_SERVICE_SLEEP:I = 0x1cfde0

.field public static final EVENT_AI_CABIN_SERVICE_XGPT:I = 0x2191c0

.field private static final EVENT_BIZ_ZONE:I = 0x186a0

.field public static final EVENT_CAR_SERVICE_BEGIN:I = 0x5f5e100

.field public static final EVENT_DEFAULT_CLIENT:I = 0x186a0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchEvent(Lcom/xiaopeng/aicabin/event/EventValue;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/xiaopeng/aicabin/event/a;->a()Lcom/xiaopeng/aicabin/event/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/ClassUtil;->getApplicationByReflect()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/event/a;->a(Landroid/app/Application;)V

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/event/EventValue;->getEvent()I

    move-result v1

    .line 99
    iget-object v2, v0, Lcom/xiaopeng/aicabin/event/a;->f:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 100
    iget-object v3, v0, Lcom/xiaopeng/aicabin/event/a;->h:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 101
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/aicabin/event/EventListener;

    if-eqz v2, :cond_0

    .line 104
    invoke-interface {v2, p0}, Lcom/xiaopeng/aicabin/event/EventListener;->onEvent(Lcom/xiaopeng/aicabin/event/EventValue;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, v0, Lcom/xiaopeng/aicabin/event/a;->i:Lcom/xiaopeng/aicabin/ARemoteManager;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/aicabin/ARemoteManager;->dispatchEvent(Lcom/xiaopeng/aicabin/event/EventValue;)V

    return-void
.end method

.method public static getEventValue(I)Lcom/xiaopeng/aicabin/event/EventValue;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaopeng/aicabin/event/a;->a()Lcom/xiaopeng/aicabin/event/a;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 2
    iget-object v0, v0, Lcom/xiaopeng/aicabin/event/a;->h:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/aicabin/event/EventValue;

    return-object p0
.end method

.method public static registerEventListener(ILcom/xiaopeng/aicabin/event/EventListener;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaopeng/aicabin/event/a;->a()Lcom/xiaopeng/aicabin/event/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaopeng/aicabin/event/a;->a(ILcom/xiaopeng/aicabin/event/EventListener;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static registerEventListener(ILcom/xiaopeng/aicabin/event/EventListener;Z)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaopeng/aicabin/event/a;->a()Lcom/xiaopeng/aicabin/event/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/aicabin/event/a;->a(ILcom/xiaopeng/aicabin/event/EventListener;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unregisterEventListener(Lcom/xiaopeng/aicabin/event/EventListener;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/xiaopeng/aicabin/event/a;->a()Lcom/xiaopeng/aicabin/event/a;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/xiaopeng/aicabin/event/a;->f:Ljava/util/Map;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, v0, Lcom/xiaopeng/aicabin/event/a;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4
    iget-object v4, v0, Lcom/xiaopeng/aicabin/event/a;->f:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1

    .line 7
    iget-object v4, v0, Lcom/xiaopeng/aicabin/event/a;->f:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 12
    iget-object v6, v0, Lcom/xiaopeng/aicabin/event/a;->g:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_2
    sget-object v5, Lcom/xiaopeng/aicabin/event/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unregisterEventListener: listener:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 17
    iget-object v4, v0, Lcom/xiaopeng/aicabin/event/a;->f:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v4, v0, Lcom/xiaopeng/aicabin/event/a;->h:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v4, v0, Lcom/xiaopeng/aicabin/event/a;->i:Lcom/xiaopeng/aicabin/ARemoteManager;

    iget-object v5, v0, Lcom/xiaopeng/aicabin/event/a;->j:Lcom/xiaopeng/aicabin/event/EventListener;

    invoke-virtual {v4, v3, v5}, Lcom/xiaopeng/aicabin/ARemoteManager;->unregisterRemoteListener(ILcom/xiaopeng/aicabin/event/EventListener;)V

    goto :goto_0

    .line 23
    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static unregisterEventListener(Ljava/lang/String;)V
    .locals 7

    .line 24
    invoke-static {}, Lcom/xiaopeng/aicabin/event/a;->a()Lcom/xiaopeng/aicabin/event/a;

    move-result-object v0

    .line 25
    iget-object v1, v0, Lcom/xiaopeng/aicabin/event/a;->g:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-nez v1, :cond_0

    .line 27
    sget-object p0, Lcom/xiaopeng/aicabin/event/a;->a:Ljava/lang/String;

    const-string v0, "unregisterEventListener: listenerId is not valid"

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 30
    :cond_0
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/aicabin/event/EventListener;

    .line 31
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v2, :cond_1

    .line 33
    sget-object p0, Lcom/xiaopeng/aicabin/event/a;->a:Ljava/lang/String;

    const-string v0, "unregisterEventListener: listenerId is not valid"

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_1
    iget-object v3, v0, Lcom/xiaopeng/aicabin/event/a;->f:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_2

    .line 39
    sget-object p0, Lcom/xiaopeng/aicabin/event/a;->a:Ljava/lang/String;

    const-string v0, "unregisterEventListener: event is not valid"

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 44
    sget-object p0, Lcom/xiaopeng/aicabin/event/a;->a:Ljava/lang/String;

    const-string v0, "unregisterEventListener: listener is not valid"

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_3
    sget-object v4, Lcom/xiaopeng/aicabin/event/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterEventListener: listenerId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "listener:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v4, v0, Lcom/xiaopeng/aicabin/event/a;->f:Ljava/util/Map;

    monitor-enter v4

    .line 49
    :try_start_0
    iget-object v5, v0, Lcom/xiaopeng/aicabin/event/a;->g:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 53
    iget-object p0, v0, Lcom/xiaopeng/aicabin/event/a;->f:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p0, v0, Lcom/xiaopeng/aicabin/event/a;->h:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object p0, v0, Lcom/xiaopeng/aicabin/event/a;->i:Lcom/xiaopeng/aicabin/ARemoteManager;

    iget-object v0, v0, Lcom/xiaopeng/aicabin/event/a;->j:Lcom/xiaopeng/aicabin/event/EventListener;

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/aicabin/ARemoteManager;->unregisterRemoteListener(ILcom/xiaopeng/aicabin/event/EventListener;)V

    .line 57
    :cond_4
    monitor-exit v4

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
