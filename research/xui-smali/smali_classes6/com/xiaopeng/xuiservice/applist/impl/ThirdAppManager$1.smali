.class Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$1;
.super Ljava/lang/Object;
.source "ThirdAppManager.java"

# interfaces
.implements Lcom/xiaopeng/os/process/ProcessStatsTracker$StatsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 115
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->access$200()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public onStatsUpdate(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/os/process/Stats;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/os/process/Stats;>;"
    const-string v0, "ThirdAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatsUpdate, list size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mXPadAppMap size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->access$100(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;Ljava/util/List;)V

    .line 111
    return-void
.end method
