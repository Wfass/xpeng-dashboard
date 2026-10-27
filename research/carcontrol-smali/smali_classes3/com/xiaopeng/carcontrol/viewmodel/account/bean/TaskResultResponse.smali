.class public Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultResponse;
.super Ljava/lang/Object;
.source "TaskResultResponse.java"


# instance fields
.field private sid:Ljava/lang/Object;

.field private state:I

.field private taskId:I

.field private taskParam:Ljava/lang/Object;

.field private type:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSid()Ljava/lang/Object;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultResponse;->sid:Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultResponse;->state:I

    return v0
.end method

.method public getTaskId()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultResponse;->taskId:I

    return v0
.end method

.method public getTaskParam()Ljava/lang/Object;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultResponse;->taskParam:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Ljava/lang/Object;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultResponse;->type:Ljava/lang/Object;

    return-object v0
.end method

.method public setSid(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sid"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultResponse;->sid:Ljava/lang/Object;

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

    .line 53
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultResponse;->state:I

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

    .line 37
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultResponse;->taskId:I

    return-void
.end method

.method public setTaskParam(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskParam"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultResponse;->taskParam:Ljava/lang/Object;

    return-void
.end method

.method public setType(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultResponse;->type:Ljava/lang/Object;

    return-void
.end method
