.class Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;
.super Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify;
.source "OperationKeyValueService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OperationKeyValueRegisterAndNotify"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify<",
        "Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;",
        ">;",
        "Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$1;

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onMultipleAdded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;->onMultipleAdded(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;

    .line 57
    .local v1, "l":Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;->onMultipleAdded(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v1    # "l":Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;
    goto :goto_0

    .line 59
    :cond_0
    monitor-exit p0

    return-void

    .line 54
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;
    throw p1
.end method

.method public declared-synchronized onSingleUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;->onSingleUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;

    .line 65
    .local v1, "l":Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;->onSingleUpdated(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v1    # "l":Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;
    goto :goto_0

    .line 67
    :cond_0
    monitor-exit p0

    return-void

    .line 62
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueRegisterAndNotify;
    throw p1
.end method
