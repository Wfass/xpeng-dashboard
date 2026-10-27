.class Lcom/xiaopeng/unity/carcontrol/SituationManager$3;
.super Ljava/lang/Object;
.source "SituationManager.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/SituationManager;->getMobilePhone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1022
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$3;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1030
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$3;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {v0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$4700(Lcom/xiaopeng/unity/carcontrol/SituationManager;)Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onMobilePhoneUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1025
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$3;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {v0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$4600(Lcom/xiaopeng/unity/carcontrol/SituationManager;)Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SituationListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationListener;->onMobilePhoneUpdate(Ljava/lang/String;)V

    return-void
.end method
