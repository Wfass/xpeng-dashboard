.class public Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultRequest;
.super Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoRequest;
.source "TaskResultRequest.java"


# static fields
.field public static TASK_COMPLETE:I = 0x1


# instance fields
.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultRequest;->state:I

    return v0
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

    .line 21
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultRequest;->state:I

    return-void
.end method
