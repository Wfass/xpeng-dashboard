.class public Lcom/xiaopeng/datalog/b;
.super Ljava/lang/Object;
.source "DataLogService.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/datalog/b$a;,
        Lcom/xiaopeng/datalog/b$b;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->init(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/datalog/b;->mContext:Landroid/content/Context;

    .line 40
    const-class v0, Lcom/xiaopeng/datalog/a;

    new-instance v1, Lcom/xiaopeng/datalog/a;

    invoke-direct {v1, p1}, Lcom/xiaopeng/datalog/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 41
    return-void
.end method


# virtual methods
.method public buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 3

    .line 137
    new-instance v0, Lcom/xiaopeng/datalog/b$a;

    iget-object v1, p0, Lcom/xiaopeng/datalog/b;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaopeng/datalog/b$a;-><init>(Lcom/xiaopeng/datalog/b;Landroid/content/Context;Lcom/xiaopeng/datalog/b$1;)V

    return-object v0
.end method

.method public buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;
    .locals 2

    .line 132
    new-instance v0, Lcom/xiaopeng/datalog/b$b;

    iget-object v1, p0, Lcom/xiaopeng/datalog/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/datalog/b$b;-><init>(Lcom/xiaopeng/datalog/b;Landroid/content/Context;)V

    return-object v0
.end method

.method public counterFactory()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/ICounterFactory;
    .locals 1

    .line 147
    invoke-static {}, Lcom/xiaopeng/datalog/a/a;->eS()Lcom/xiaopeng/datalog/a/a;

    move-result-object v0

    return-object v0
.end method

.method public sendCanData(Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-static {}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->getInstance()Lcom/xiaopeng/datalog/stat/StatEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->uploadCan(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public sendFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 111
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

    .line 87
    invoke-static {}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->getInstance()Lcom/xiaopeng/datalog/stat/StatEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->uploadCdu(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    .line 88
    return-void
.end method

.method public sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V
    .locals 1

    .line 81
    invoke-static {}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->getInstance()Lcom/xiaopeng/datalog/stat/StatEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->uploadCdu(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 83
    return-void
.end method

.method public sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;Ljava/util/List;)V
    .locals 1
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
    invoke-static {}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->getInstance()Lcom/xiaopeng/datalog/stat/StatEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->uploadCduWithFiles(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;Ljava/util/List;)V

    .line 101
    return-void
.end method

.method public sendStatData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-static {}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->getInstance()Lcom/xiaopeng/datalog/stat/StatEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public sendStatOriginData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-static {}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->getInstance()Lcom/xiaopeng/datalog/stat/StatEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/stat/StatEventHelper;->uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method
