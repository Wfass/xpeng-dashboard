.class public interface abstract Lcom/xiaopeng/vui/commons/IVuiElement;
.super Ljava/lang/Object;
.source "IVuiElement.java"


# virtual methods
.method public enableViewVuiMode(Z)V
    .locals 0

    return-void
.end method

.method public getVuiAction()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getVuiBizId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVuiDisableHitEffect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVuiElementChangedListener()Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVuiElementId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;
    .locals 1

    .line 41
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->UNKNOWN:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0
.end method

.method public getVuiFatherElementId()Ljava/lang/String;
    .locals 1

    const-string v0, "-1"

    return-object v0
.end method

.method public getVuiFatherLabel()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getVuiFeedbackType()Lcom/xiaopeng/vui/commons/VuiFeedbackType;
    .locals 1

    .line 96
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->TTS:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    return-object v0
.end method

.method public getVuiLabel()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVuiMode()Lcom/xiaopeng/vui/commons/VuiMode;
    .locals 1

    .line 123
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiMode;->NORMAL:Lcom/xiaopeng/vui/commons/VuiMode;

    return-object v0
.end method

.method public getVuiPosition()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getVuiPriority()Lcom/xiaopeng/vui/commons/VuiPriority;
    .locals 1

    .line 23
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    return-object v0
.end method

.method public getVuiProps()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVuiValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isPerformVuiAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVuiLayoutLoadable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVuiModeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setPerformVuiAction(Z)V
    .locals 0

    return-void
.end method

.method public setVuiAction(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVuiBizId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVuiDisableHitEffect(Z)V
    .locals 0

    return-void
.end method

.method public setVuiElementChangedListener(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V
    .locals 0

    return-void
.end method

.method public setVuiElementId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V
    .locals 0

    return-void
.end method

.method public setVuiFatherElementId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVuiFatherLabel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVuiFeedbackType(Lcom/xiaopeng/vui/commons/VuiFeedbackType;)V
    .locals 0

    return-void
.end method

.method public setVuiLabel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVuiLayoutLoadable(Z)V
    .locals 0

    return-void
.end method

.method public setVuiMode(Lcom/xiaopeng/vui/commons/VuiMode;)V
    .locals 0

    return-void
.end method

.method public setVuiPosition(I)V
    .locals 0

    return-void
.end method

.method public setVuiPriority(Lcom/xiaopeng/vui/commons/VuiPriority;)V
    .locals 0

    return-void
.end method

.method public setVuiProps(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public setVuiValue(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setVuiValue(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    return-void
.end method
