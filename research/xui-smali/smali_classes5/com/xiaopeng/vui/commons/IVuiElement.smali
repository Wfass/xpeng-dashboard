.class public interface abstract Lcom/xiaopeng/vui/commons/IVuiElement;
.super Ljava/lang/Object;
.source "IVuiElement.java"


# virtual methods
.method public enableViewVuiMode(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 152
    return-void
.end method

.method public getVuiAction()Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, ""

    return-object v0
.end method

.method public getVuiBizId()Ljava/lang/String;
    .locals 1

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVuiDisableHitEffect()Z
    .locals 1

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getVuiElementChangedListener()Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .locals 1

    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVuiElementId()Ljava/lang/String;
    .locals 1

    .line 77
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

    .line 50
    const-string v0, "-1"

    return-object v0
.end method

.method public getVuiFatherLabel()Ljava/lang/String;
    .locals 1

    .line 59
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

    .line 68
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

    .line 90
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

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVuiValue()Ljava/lang/Object;
    .locals 1

    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPerformVuiAction()Z
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public isVuiLayoutLoadable()Z
    .locals 1

    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public isVuiModeEnabled()Z
    .locals 1

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public setPerformVuiAction(Z)V
    .locals 0
    .param p1, "performVuiAction"    # Z

    .line 110
    return-void
.end method

.method public setVuiAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "vuiAction"    # Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setVuiBizId(Ljava/lang/String;)V
    .locals 0
    .param p1, "vuiBizId"    # Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setVuiDisableHitEffect(Z)V
    .locals 0
    .param p1, "vuiDisableHitEffect"    # Z

    .line 144
    return-void
.end method

.method public setVuiElementChangedListener(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    .line 161
    return-void
.end method

.method public setVuiElementId(Ljava/lang/String;)V
    .locals 0
    .param p1, "vuiElementId"    # Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V
    .locals 0
    .param p1, "vuiElementType"    # Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 46
    return-void
.end method

.method public setVuiFatherElementId(Ljava/lang/String;)V
    .locals 0
    .param p1, "vuiFatherElementId"    # Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setVuiFatherLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "vuiFatherLabel"    # Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setVuiFeedbackType(Lcom/xiaopeng/vui/commons/VuiFeedbackType;)V
    .locals 0
    .param p1, "vuiFeedbackType"    # Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 101
    return-void
.end method

.method public setVuiLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "vuiLabel"    # Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setVuiLayoutLoadable(Z)V
    .locals 0
    .param p1, "vuiLayoutLoadable"    # Z

    .line 19
    return-void
.end method

.method public setVuiMode(Lcom/xiaopeng/vui/commons/VuiMode;)V
    .locals 0
    .param p1, "vuiMode"    # Lcom/xiaopeng/vui/commons/VuiMode;

    .line 129
    return-void
.end method

.method public setVuiPosition(I)V
    .locals 0
    .param p1, "vuiPosition"    # I

    .line 86
    return-void
.end method

.method public setVuiPriority(Lcom/xiaopeng/vui/commons/VuiPriority;)V
    .locals 0
    .param p1, "vuiPriority"    # Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 28
    return-void
.end method

.method public setVuiProps(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "vuiProps"    # Lorg/json/JSONObject;

    .line 114
    return-void
.end method

.method public setVuiValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public setVuiValue(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .line 173
    return-void
.end method
