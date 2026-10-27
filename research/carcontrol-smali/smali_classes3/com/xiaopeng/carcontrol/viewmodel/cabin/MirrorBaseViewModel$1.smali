.class Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;
.super Ljava/lang/Object;
.source "MirrorBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCmsAutoBrightSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleCmsAutoBrightSwChanged(Z)V

    return-void
.end method

.method public onCmsBrightChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleCmsBrightChanged(I)V

    return-void
.end method

.method public onCmsHighSpdSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleCmsHighSpdSwChanged(Z)V

    return-void
.end method

.method public onCmsLowSpdSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleCmsLowSpdSwChanged(Z)V

    return-void
.end method

.method public onCmsObjectRecognizeSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleCmsObjectRecognizeSwChanged(Z)V

    return-void
.end method

.method public onCmsPosChanged([F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->onCmsPosChanged([F)V

    return-void
.end method

.method public onCmsReverseSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleCmsReverseSwChanged(Z)V

    return-void
.end method

.method public onCmsTurnSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleCmsTurnSwChanged(Z)V

    return-void
.end method

.method public onCmsViewAngleChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewAngle"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleCmsViewAngleChanged(I)V

    return-void
.end method

.method public onImsAutoVisionSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleImsAutoVisionSwChanged(Z)V

    return-void
.end method

.method public onImsBrightLevelChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleImsBrightLevelChanged(I)V

    return-void
.end method

.method public onImsHighSpeedAutoVisionSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleImsHighSpeedAutoVisionSwChanged(Z)V

    return-void
.end method

.method public onImsModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleImsModeChanged(I)V

    return-void
.end method

.method public onImsSystemStChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleImsSystemStChanged(I)V

    return-void
.end method

.method public onImsVisionAngleLevelChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleImsVisionAngleLevelChanged(I)V

    return-void
.end method

.method public onImsVisionVerticalLevelChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleImsVisionVerticalLevelChanged(I)V

    return-void
.end method

.method public onLeftMirrorPosStChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleLeftMirrorPosStChange(I)V

    return-void
.end method

.method public onMirrorAdjust([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirrorStates"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->onMirrorAdjust([I)V

    return-void
.end method

.method public onMirrorAutoDownChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleMirrorAutoDownChanged(Z)V

    return-void
.end method

.method public onMirrorAutoFoldStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleAutoFoldStateChanged(Z)V

    return-void
.end method

.method public onMirrorOutputStChanged([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleMirrorOutputStChange([I)V

    return-void
.end method

.method public onMirrorPosChanged([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const-string v0, "isSupportMirrorMemory"

    .line 46
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->onMirrorPosChanged([I)V

    :cond_0
    return-void
.end method

.method public onMirrorReverseModeChanged(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "needMove"
        }
    .end annotation

    .line 63
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    move-result-object p2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->fromBcmMirrorState(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->onMirrorReverseModeChanged(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;)V

    .line 64
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->fromBcmMirrorState(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleReverseModeChanged(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;)V

    return-void
.end method

.method public onRearScreenStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleRearScreenStateChanged(I)V

    return-void
.end method

.method public onRightMirrorPosStChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleRightMirrorPosStChange(I)V

    return-void
.end method
