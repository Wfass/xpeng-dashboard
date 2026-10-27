.class public Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListRequest;
.super Ljava/lang/Object;
.source "TaskListRequest.java"


# instance fields
.field private taskIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaskIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListRequest;->taskIds:Ljava/util/List;

    return-object v0
.end method

.method public setTaskIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListRequest;->taskIds:Ljava/util/List;

    return-void
.end method
