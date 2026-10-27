.class public Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoResponse;
.super Ljava/lang/Object;
.source "TaskInfoResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskInfoResponse"

.field public static final TASK_FAILURE:I = 0x0

.field public static final TASK_SUCCESS:I = 0x1


# instance fields
.field private sid:Ljava/lang/String;

.field private state:I

.field private taskId:I

.field private taskParam:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 79
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "url"

    .line 80
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object p1
.end method


# virtual methods
.method public getSid()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoResponse;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoResponse;->state:I

    return v0
.end method

.method public getTaskId()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoResponse;->taskId:I

    return v0
.end method

.method public getTaskParam()Ljava/lang/String;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoResponse;->taskParam:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoResponse;->parseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "TaskInfoResponse"

    const-string v1, "task param is null,please check the response."

    .line 69
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoResponse;->type:I

    return v0
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sid"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoResponse;->sid:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 62
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoResponse;->state:I

    return-void
.end method

.method public setTaskId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation

    .line 46
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoResponse;->taskId:I

    return-void
.end method

.method public setTaskParam(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskParam"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoResponse;->taskParam:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 54
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoResponse;->type:I

    return-void
.end method
