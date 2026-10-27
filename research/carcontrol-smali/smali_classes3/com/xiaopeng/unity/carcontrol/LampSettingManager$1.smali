.class Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;
.super Ljava/lang/Object;
.source "LampSettingManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/LampSettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoLampHeightChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAutoLampHeightChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->access$100(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDomeLightBrightnessChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDomeLightBrightnessChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->access$1300(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDomeLightSwChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    invoke-static {v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->access$1100(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDomeLightSwChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDomeLightSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->access$1200(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onIhbStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onIhbStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->access$400(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLampHeightLevelChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLampHeightLevelChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->access$200(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLightMeHomeModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLightMeHomeModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->access$300(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLightMeHomeSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLightMeHomeSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->access$1500(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLluAwakeSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLluAwakeSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->access$800(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLluChargeSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLluChargeSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->access$1000(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLluSleepSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLluSleepSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->access$900(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLluSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLluSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->access$700(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onParkingLampStatesChanged([I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onParkingLampStatesChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->access$600(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearLogoLightSwChanged(Z)V
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
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRearLogoLightSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->access$1400(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSaberModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSaberModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->access$500(Lcom/xiaopeng/unity/carcontrol/LampSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
