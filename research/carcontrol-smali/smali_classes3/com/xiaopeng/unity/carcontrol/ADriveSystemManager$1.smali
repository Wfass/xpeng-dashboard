.class Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager$1;
.super Ljava/lang/Object;
.source "ADriveSystemManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ADriveSystemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBodyFaultIndicationChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onBodyFaultIndicationChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->access$100(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrivingRiskWarningChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDrivingRiskWarningChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->access$200(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onGreenLightRemindStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onGreenLightRemindStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->access$400(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onIntelligentOverspeedRemindStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onIntelligentOverspeedRemindStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->access$500(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onStartRemindStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onStartRemindStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->access$300(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
