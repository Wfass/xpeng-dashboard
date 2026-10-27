.class public Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamResultProcess;
.super Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess;
.source "ExamResultProcess.java"


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


# direct methods
.method public constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamResultResponseCallback;I)V
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

    .line 19
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;)V

    .line 20
    iput p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamResultProcess;->mRequestOrigin:I

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

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamResultProcess;->mGson:Lcom/google/gson/Gson;

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultResponse;

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamResultProcess;->mExamCallBack:Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamResultResponseCallback;

    const/4 v1, -0x3

    const-string v2, "Response parse failure!"

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamResultResponseCallback;->onExamFailure(ILjava/lang/String;)V

    return-void

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamResultProcess;->mExamCallBack:Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamResultResponseCallback;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultResponse;->getTaskId()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultResponse;->getState()I

    move-result v0

    iget v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamResultProcess;->mRequestOrigin:I

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamResultResponseCallback;->onExamTaskSuccess(JII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 33
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

    const-string v0, "examResultProcessError"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
