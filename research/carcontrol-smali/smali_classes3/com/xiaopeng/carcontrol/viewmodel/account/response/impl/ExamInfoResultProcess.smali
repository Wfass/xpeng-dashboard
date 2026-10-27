.class public Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamInfoResultProcess;
.super Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess;
.source "ExamInfoResultProcess.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess<",
        "Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamInfoResponseCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamInfoResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;)V

    return-void
.end method


# virtual methods
.method public processExamSuccess(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamInfoResultProcess;->mGson:Lcom/google/gson/Gson;

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoResponse;

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamInfoResultProcess;->mExamCallBack:Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamInfoResponseCallback;

    const/4 v1, -0x3

    const-string v2, "Response parse failure!"

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamInfoResponseCallback;->onExamFailure(ILjava/lang/String;)V

    return-void

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamInfoResultProcess;->mExamCallBack:Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamInfoResponseCallback;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoResponse;->getTaskId()I

    move-result v2

    int-to-long v2, v2

    .line 28
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoResponse;->getTaskParam()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamInfoResponseCallback;->onExamInfoSuccess(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 30
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

    const-string v0, "examInfoResultProcessError"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
