.class Lcom/xiaopeng/unity/xpilot/XPilotManager$1;
.super Ljava/lang/Object;
.source "XPilotManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/xpilot/XPilotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/xpilot/XPilotManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/xpilot/XPilotManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlcChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAlcChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$2700(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAutoParkChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAutoParkChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$1900(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onBsdChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onBsdChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$400(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCrossBarrierChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCrossBarrierChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$2900(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDomesticIslaModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDomesticIslaModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$1400(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDowChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDowChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$500(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onEnhancedParkChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onEnhancedParkChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$2300(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFcwChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onFcwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$100(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFcwSenChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onFcwSenChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$200(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFreeNgpUidResult(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onFreeNgpUidResult"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$5000(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHintModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onHintModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$2500(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onImageRetentionChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onImageRetentionChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$2400(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onIslaConfirmModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sw"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onIslaConfirmModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$4400(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyParkChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onKeyParkChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$2200(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLccChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLccChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$2600(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLdwChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLdwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$300(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLoopSafeExamResult(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "result"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onLoopSafeExamResult_V5"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$4800(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLssModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lssMode"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLssModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$1000(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLssSenChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lssSen"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLssSenChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$1300(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMapPrivacyCollectionAgreedStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onMapPrivacyCollectionAgreedStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$5800(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMemParkChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onMemParkChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$2100(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNedcStateChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNedcStateChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$5300(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpActivateModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNgpActivateModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$3700(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpAflChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNgpAflChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$3500(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNgpChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$3100(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpCustomPreferenChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNgpCustomPreferenChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$4100(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpCustomSpeedKphChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNgpCustomSpeedKphChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$5500(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpCustomSpeedModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNgpCustomSpeedModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$5400(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpCustomSpeedPercentChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNgpCustomSpeedPercentChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$5600(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpFreeNgpChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNgpFreeNgpChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$3400(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpNewAflChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNgpNewAflChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$3600(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpOvertakeModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNgpOvertakeModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$3800(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpRemindModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNgpRemindModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$4000(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpTipsModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNgpTipsModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$3200(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpTruckOffsetChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNgpTruckOffsetChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$3900(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpVoiceChangeLaneChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNgpVoiceChangeLaneChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$3300(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onOverseasElkModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elkMode"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onOverseasElkModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$1200(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onOverseasIslaModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onOverseasIslaModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$4500(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onOverseasLkaModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lkaMode"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onOverseasLkaModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$1100(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRaebChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRaebChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$600(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRctaChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRctaChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$800(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRcwChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRcwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$700(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRequestFailure(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "errorCode"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onRequestFailure_V5"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$4600(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSafeExamCompleted()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    const-string v1, "onSafeExamCompleted_V5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$4900(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSafeExamResult(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "result"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSafeExamResult_V5"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$4700(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSafeExamUrl(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "examUrl"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSafeExamUrl_V5"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$5100(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSafeExamUrlExpired(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSafeExamUrlExpired_V5"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$5200(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSoundSwChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sw"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSoundSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$4200(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSsaChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSsaChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$900(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTiredDistractionSensitivityChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTiredDistractionSensitivityChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$1800(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTiredDistractionStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTiredDistractionStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$1500(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTiredDistractionStatusManualChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTiredDistractionStatusManualChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$1600(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrafficLightChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrafficLightChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$2800(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onVoiceSwChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sw"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onVoiceSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$4300(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onWogChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onWogChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$2000(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onXpilotPrivacyCollectionAgreedStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onXpilotPrivacyCollectionAgreedStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$5700(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onXpuBrakeFunctionModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onXpuBrakeFunctionModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$5900(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onXpuDDAWStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onXpuDDAWStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$1700(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onXpuXPilotDataChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/unity/xpilot/XPilotManager$1;->this$0:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onXpuXPilotDataChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->access$3000(Lcom/xiaopeng/unity/xpilot/XPilotManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
