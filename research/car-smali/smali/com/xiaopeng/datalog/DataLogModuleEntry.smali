.class public Lcom/xiaopeng/datalog/DataLogModuleEntry;
.super Ljava/lang/Object;
.source "DataLogModuleEntry.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/module/IModuleEntry;


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mDataLog:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/xiaopeng/lib/utils/ReflectionUtils;->getApplicationByReflect()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/datalog/DataLogModuleEntry;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/datalog/DataLogModuleEntry;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "interfaceClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interfaceClass"
        }
    .end annotation

    .line 31
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    if-ne p1, v0, :cond_2

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogModuleEntry;->mDataLog:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    if-nez v0, :cond_1

    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogModuleEntry;->mDataLog:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/xiaopeng/datalog/DataLogService;

    iget-object v1, p0, Lcom/xiaopeng/datalog/DataLogModuleEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/datalog/DataLogService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/datalog/DataLogModuleEntry;->mDataLog:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 37
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 39
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogModuleEntry;->mDataLog:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    return-object v0

    .line 41
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
