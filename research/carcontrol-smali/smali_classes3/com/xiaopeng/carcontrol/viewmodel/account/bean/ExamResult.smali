.class public Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;
.super Ljava/lang/Object;
.source "ExamResult.java"


# instance fields
.field public examState:I

.field public taskId:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "examState"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;->taskId:J

    .line 14
    iput p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;->examState:I

    return-void
.end method
