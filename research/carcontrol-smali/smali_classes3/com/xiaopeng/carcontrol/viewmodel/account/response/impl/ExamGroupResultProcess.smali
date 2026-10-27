.class public Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;
.super Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess;
.source "ExamGroupResultProcess.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess<",
        "Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamGroupResultResponseCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mExamResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestOrigin:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamGroupResultResponseCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "requestOrigin"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;)V

    .line 30
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mExamResultMap:Ljava/util/Map;

    .line 34
    iput p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mRequestOrigin:I

    return-void
.end method


# virtual methods
.method public processExamSuccess(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mGson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;)V

    .line 42
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 40
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 43
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mExamResultMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListResponse;

    if-nez v2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mExamCallBack:Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamGroupResultResponseCallback;

    const/4 v1, -0x3

    const-string v2, "Response parse failure!"

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamGroupResultResponseCallback;->onExamFailure(ILjava/lang/String;)V

    return-void

    .line 52
    :cond_0
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListResponse;->getTaskId()J

    move-result-wide v3

    const-wide/16 v5, 0x8

    cmp-long v3, v3, v5

    const-wide/16 v7, 0x2

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListResponse;->getState()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 53
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mExamResultMap:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mExamResultMap:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 59
    :cond_1
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListResponse;->getTaskId()J

    move-result-wide v5

    const-wide/16 v9, 0x7

    cmp-long v3, v5, v9

    const-wide/16 v5, 0x3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListResponse;->getState()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 60
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mExamResultMap:Ljava/util/Map;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mExamResultMap:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListResponse;->getTaskId()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-nez v3, :cond_3

    .line 65
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mExamResultMap:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_5

    .line 67
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mExamResultMap:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListResponse;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListResponse;->getTaskId()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 72
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mExamResultMap:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_5

    .line 74
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mExamResultMap:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListResponse;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 78
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mExamResultMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListResponse;->getTaskId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListResponse;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 80
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mExamResultMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mExamCallBack:Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;

    check-cast v2, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamGroupResultResponseCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mRequestOrigin:I

    invoke-interface {v2, v3, v4, v1, v5}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamGroupResultResponseCallback;->onExamTaskSuccess(JII)V

    goto :goto_2

    .line 85
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mExamCallBack:Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamGroupResultResponseCallback;

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->mRequestOrigin:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamGroupResultResponseCallback;->onCompleted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "examGroupResultProcessError"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
