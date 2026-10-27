.class public Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;
.super Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotify;
.source "SysConfigListenerRegisterAndNotify.java"

# interfaces
.implements Lcom/xiaopeng/sysconfig/SysConfigManager$SysConfigListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotify<",
        "Lcom/xiaopeng/sysconfig/SysConfigManager$SysConfigListener;",
        ">;",
        "Lcom/xiaopeng/sysconfig/SysConfigManager$SysConfigListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector<",
            "**>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/utils/XUIManagerRegisterAndNotify;-><init>(Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onSysConfigUpdated(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/sysconfig/SysConfigManager$SysConfigListener;

    .line 17
    invoke-interface {v1, p1}, Lcom/xiaopeng/sysconfig/SysConfigManager$SysConfigListener;->onSysConfigUpdated(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 19
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
