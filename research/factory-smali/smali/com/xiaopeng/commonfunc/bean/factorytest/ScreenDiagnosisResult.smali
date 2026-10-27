.class public Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;
.super Ljava/lang/Object;
.source "ScreenDiagnosisResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;
    }
.end annotation


# instance fields
.field private mCurrentResult:Ljava/lang/String;

.field private mErrorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTestCounts:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "mTestCounts"    # J

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;->mTestCounts:J

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;->mCurrentResult:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;->mErrorList:Ljava/util/List;

    .line 27
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "mTestCounts"    # J
    .param p3, "mCurrentResult"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p4, "mErrorList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;->mTestCounts:J

    .line 19
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;->mCurrentResult:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;->mErrorList:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public getCurrentResult()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;->mCurrentResult:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;->mErrorList:Ljava/util/List;

    return-object v0
.end method

.method public getTestCounts()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;->mTestCounts:J

    return-wide v0
.end method

.method public declared-synchronized increaseTestCount()V
    .locals 4

    monitor-enter p0

    .line 50
    :try_start_0
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;->mTestCounts:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;->mTestCounts:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;
    throw v0
.end method

.method public declared-synchronized setCurrentResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    monitor-enter p0

    .line 38
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;->mCurrentResult:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 37
    .end local p1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;
    throw p1
.end method

.method public declared-synchronized setErrorList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;",
            ">;)V"
        }
    .end annotation

    .local p1, "mErrorList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;>;"
    monitor-enter p0

    .line 46
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;->mErrorList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 45
    .end local p1    # "mErrorList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;
    throw p1
.end method

.method public declared-synchronized updateErrorResult(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "happen_time"    # Ljava/lang/String;

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;->mErrorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;->setLastHappen(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;->mErrorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;->increaseErrorTimes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 53
    .end local p1    # "index":I
    .end local p2    # "happen_time":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;
    throw p1
.end method
