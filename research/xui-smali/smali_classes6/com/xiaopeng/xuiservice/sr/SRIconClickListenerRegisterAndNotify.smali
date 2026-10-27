.class public Lcom/xiaopeng/xuiservice/sr/SRIconClickListenerRegisterAndNotify;
.super Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify;
.source "SRIconClickListenerRegisterAndNotify.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/sr/SRIconClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify<",
        "Lcom/xiaopeng/xuiservice/sr/SRIconClickListener;",
        ">;",
        "Lcom/xiaopeng/xuiservice/sr/SRIconClickListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onSRIconClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/sr/SRIconClickListenerRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/sr/SRIconClickListener;

    .line 10
    .local v1, "l":Lcom/xiaopeng/xuiservice/sr/SRIconClickListener;
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuiservice/sr/SRIconClickListener;->onSRIconClick(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .end local v1    # "l":Lcom/xiaopeng/xuiservice/sr/SRIconClickListener;
    goto :goto_0

    .line 12
    :cond_0
    monitor-exit p0

    return-void

    .line 8
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/sr/SRIconClickListenerRegisterAndNotify;
    throw p1
.end method
