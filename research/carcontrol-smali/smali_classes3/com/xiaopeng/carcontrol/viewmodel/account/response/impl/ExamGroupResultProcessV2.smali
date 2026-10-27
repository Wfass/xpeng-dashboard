.class public Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcessV2;
.super Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess;
.source "ExamGroupResultProcessV2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess<",
        "Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamResultResponseCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRequestOrigin:I

.field private final mTaskId:J


# direct methods
.method public constructor <init>(JLcom/xiaopeng/carcontrol/viewmodel/account/response/ExamResultResponseCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taskId",
            "callback",
            "requestOrigin"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;)V

    .line 30
    iput p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcessV2;->mRequestOrigin:I

    .line 31
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcessV2;->mTaskId:J

    return-void
.end method


# virtual methods
.method public processExamSuccess(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcessV2;->mGson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcessV2$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcessV2$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcessV2;)V

    .line 39
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcessV2$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 37
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 41
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListResponse;

    if-nez v3, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcessV2;->mExamCallBack:Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamResultResponseCallback;

    const/4 v1, -0x3

    const-string v2, "Response parse failure!"

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamResultResponseCallback;->onExamFailure(ILjava/lang/String;)V

    return-void

    .line 47
    :cond_0
    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListResponse;->getState()I

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "ExamGroupResultProcessV2"

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " --- onExamResultSuccess Exam  group result V2, taskId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListResponse;->getTaskId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcessV2;->mExamCallBack:Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamResultResponseCallback;

    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcessV2;->mTaskId:J

    iget v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcessV2;->mRequestOrigin:I

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamResultResponseCallback;->onExamTaskSuccess(JII)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcessV2;->mExamCallBack:Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamResultResponseCallback;

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcessV2;->mTaskId:J

    iget v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcessV2;->mRequestOrigin:I

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamResultResponseCallback;->onExamTaskSuccess(JII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 57
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

    const-string v0, "examGroupResultProcessV2Error"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
