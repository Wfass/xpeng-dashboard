.class public interface abstract Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;
.super Ljava/lang/Object;
.source "ISpeechVuiQueryCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public canExecuteVuiEvent(Ljava/lang/String;)I
    .locals 1
    .param p1, "soundArea"    # Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getStatefulButtonValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getXSliderIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract isCheckBoxChecked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isElementCanScrolled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isElementEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public isRadiobuttonChecked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "elementId"    # Ljava/lang/String;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "packageVersion"    # Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isStatefulButtonChecked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isSwitchChecked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isTableLayoutSelected(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public isViewVisibleByScrollView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "elementsId"    # Ljava/lang/String;
    .param p4, "packageVersion"    # Ljava/lang/String;

    .line 127
    const-string v0, ""

    return-object v0
.end method

.method public abstract isVuiSwitchOpened()Z
.end method

.method public reBuildScene([Ljava/lang/String;)Z
    .locals 1
    .param p1, "sceneId"    # [Ljava/lang/String;

    .line 131
    const/4 v0, 0x1

    return v0
.end method
