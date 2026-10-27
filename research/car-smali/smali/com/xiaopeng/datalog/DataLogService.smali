.class public Lcom/xiaopeng/datalog/DataLogService;
.super Ljava/lang/Object;
.source "DataLogService.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;,
        Lcom/xiaopeng/datalog/DataLogService$StatEventBuilder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->init(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/datalog/DataLogService;->mContext:Landroid/content/Context;

    .line 40
    const-class v0, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    new-instance v1, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-direct {v1, p1}, Lcom/xiaopeng/datalog/DataLogModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 41
    return-void
.end method


# virtual methods
.method public buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 3

    .line 137
    new-instance v0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;

    iget-object v1, p0, Lcom/xiaopeng/datalog/DataLogService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;-><init>(Lcom/xiaopeng/datalog/DataLogService;Landroid/content/Context;Lcom/xiaopeng/datalog/DataLogService$1;)V

    return-object v0
.end method

.method public buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;
    .locals 2

    .line 132
    new-instance v0, Lcom/xiaopeng/datalog/DataLogService$StatEventBuilder;

    iget-object v1, p0, Lcom/xiaopeng/datalog/DataLogService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/datalog/DataLogService$StatEventBuilder;-><init>(Lcom/xiaopeng/datalog/DataLogService;Landroid/content/Context;)V

    return-object v0
.end method

.method public counterFactory()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/ICounterFactory;
    .locals 1

    .line 147
    invoke-static {}, Lcom/xiaopeng/datalog/counter/CounterFactory;->getInstance()Lcom/xiaopeng/datalog/counter/CounterFactory;

    move-result-object v0

    return-object v0
.end method

.method public sendCanData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 51
    invoke-static {}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->getInstance()Lcom/xiaopeng/datalog/stat/StatEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->uploadCan(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public sendFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->getInstance()Lcom/xiaopeng/datalog/stat/StatEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->uploadFiles(Ljava/util/List;)V

    .line 113
    return-void
.end method

.method public sendRecentSystemLog()Ljava/lang/String;
    .locals 1

    .line 121
    invoke-static {}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->getInstance()Lcom/xiaopeng/datalog/stat/StatEventHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->uploadRecentSystemLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V
    .locals 1
    .param p1, "moleEvent"    # Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moleEvent"
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->getInstance()Lcom/xiaopeng/datalog/stat/StatEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->uploadCdu(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    .line 88
    return-void
.end method

.method public sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V
    .locals 1
    .param p1, "statEvent"    # Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statEvent"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->getInstance()Lcom/xiaopeng/datalog/stat/StatEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->uploadCdu(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 83
    return-void
.end method

.method public sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;Ljava/util/List;)V
    .locals 1
    .param p1, "statEvent"    # Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "statEvent",
            "filePaths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p2, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->getInstance()Lcom/xiaopeng/datalog/stat/StatEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->uploadCduWithFiles(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;Ljava/util/List;)V

    .line 101
    return-void
.end method

.method public sendStatData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "data"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->getInstance()Lcom/xiaopeng/datalog/stat/StatEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public sendStatOriginData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "data"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->getInstance()Lcom/xiaopeng/datalog/stat/StatEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method
