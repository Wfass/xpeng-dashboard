.class Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "ExamGroupResultProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;->processExamSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/response/impl/ExamGroupResultProcess;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
