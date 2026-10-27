.class public interface abstract Lcom/xiaopeng/carcontrol/view/scene/VuiUtilHelper;
.super Ljava/lang/Object;
.source "VuiUtilHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VuiUtilHelper"


# virtual methods
.method public addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vuiView"
        }
    .end annotation

    .line 61
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    return-void
.end method

.method public addVuiProp(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "prop",
            "value"
        }
    .end annotation

    .line 65
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ", value="

    const/4 v2, 0x0

    const-string v3, "VuiUtilHelper"

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addVuiProps prop="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    invoke-interface {p0, p1}, Lcom/xiaopeng/carcontrol/view/scene/VuiUtilHelper;->getVuiPropsJson(Lcom/xiaopeng/xui/vui/VuiView;)Lorg/json/JSONObject;

    move-result-object v0

    .line 72
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addVuiProps "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " failed :"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    :goto_0
    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiProps(Lorg/json/JSONObject;)V

    return-void

    .line 66
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addVuiProps failed with prop="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public addVuiProps(Lcom/xiaopeng/vui/commons/IVuiElement;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "propsMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/vui/commons/IVuiElement;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addProps(Lcom/xiaopeng/vui/commons/IVuiElement;Ljava/util/Map;)V

    return-void
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getSceneId()Ljava/lang/String;
.end method

.method public getVuiPropsJson(Lcom/xiaopeng/xui/vui/VuiView;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 90
    invoke-interface {p1}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiProps()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 92
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    return-object p1
.end method

.method public removeVuiProps(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "prop"
        }
    .end annotation

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeVuiProps failed with prop="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "VuiUtilHelper"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 84
    :cond_0
    invoke-interface {p0, p1}, Lcom/xiaopeng/carcontrol/view/scene/VuiUtilHelper;->getVuiPropsJson(Lcom/xiaopeng/xui/vui/VuiView;)Lorg/json/JSONObject;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiProps(Lorg/json/JSONObject;)V

    return-void
.end method

.method public setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "currIndex",
            "vuilabels",
            "action"
        }
    .end annotation

    .line 35
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStatefulButtonValue(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "currIndex"
        }
    .end annotation

    .line 39
    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonValue(Landroid/view/View;I)V

    return-void
.end method

.method public varargs setVuiLabelUnSupportText([Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "views"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    invoke-interface {p0}, Lcom/xiaopeng/carcontrol/view/scene/VuiUtilHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->setVuiLabelUnSupportText(Landroid/content/Context;[Landroid/view/View;)V

    return-void
.end method

.method public varargs updateVuiScene([Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "views"
        }
    .end annotation

    .line 98
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    invoke-interface {p0}, Lcom/xiaopeng/carcontrol/view/scene/VuiUtilHelper;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/xiaopeng/carcontrol/view/scene/VuiUtilHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateVuiScene(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)V

    return-void
.end method

.method public vuiFeedback(ILandroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "view"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 48
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object v0

    .line 49
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p1

    .line 50
    invoke-interface {p0}, Lcom/xiaopeng/carcontrol/view/scene/VuiUtilHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    :cond_0
    return-void
.end method

.method public vuiFeedbackClick(ILandroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "view"
        }
    .end annotation

    .line 55
    instance-of v0, p2, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    invoke-interface {v0}, Lcom/xiaopeng/xui/vui/VuiView;->isPerformVuiAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/scene/VuiUtilHelper;->vuiFeedback(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
