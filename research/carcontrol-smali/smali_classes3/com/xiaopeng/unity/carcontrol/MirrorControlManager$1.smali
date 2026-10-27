.class Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;
.super Ljava/lang/Object;
.source "MirrorControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccActive(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAccActive"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$800(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCmsAutoBrightSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCmsAutoBrightSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$1400(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCmsBrightChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCmsBrightChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$1500(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCmsHighSpdSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCmsHighSpdSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$1200(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCmsLowSpdSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCmsLowSpdSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$1300(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCmsObjectRecognizeSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCmsObjectRecognizeSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$900(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCmsReverseSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCmsReverseSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$1000(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCmsTurnSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCmsTurnSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$1100(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCmsViewAngleChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCmsViewAngleChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$1600(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCruiseActive(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCruiseActive"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$700(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDismiss()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    const-string v1, "onDismiss"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$2500(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFoldOutputStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onFoldOutputStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$300(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFoldStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onFoldStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$200(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onImsAutoVisionSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onImsAutoVisionSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$1900(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onImsBrightLevelChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onImsBrightLevelChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$1800(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onImsHighSpeedAutoVisionSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onImsHighSpeedAutoVisionSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$2000(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onImsModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onImsModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$1700(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLMReverseSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLMReverseSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$400(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLeftMirrorPosStChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLeftMirrorPosStChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$2100(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMirrorAutoFoldEnableChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onMirrorAutoFoldEnableChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$2300(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRMReverseSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRMReverseSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$500(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRightMirrorPosStChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRightMirrorPosStChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$2200(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShow()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    const-string v1, "onShow"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$2400(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSlipping(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSlipping"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$600(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
