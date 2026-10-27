.class public Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoRequest;
.super Ljava/lang/Object;
.source "TaskInfoRequest.java"


# instance fields
.field private taskId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaskId()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoRequest;->taskId:J

    return-wide v0
.end method

.method public setTaskId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation

    .line 17
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoRequest;->taskId:J

    return-void
.end method
