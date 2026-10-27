.class public Lcom/xiaopeng/carcontrol/view/speech/SwitchFictitiousElementsConstructor;
.super Lcom/xiaopeng/carcontrol/view/speech/FictitiousElementsConstructor;
.source "SwitchFictitiousElementsConstructor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/view/speech/FictitiousElementsConstructor<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/speech/FictitiousElementsConstructor;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs generateElement(Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "currState",
            "vuiLable"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 10
    array-length v0, p3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;-><init>()V

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->SWITCH:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 14
    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->type(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->id(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "SetCheck"

    .line 16
    invoke-virtual {p0, p2, v0}, Lcom/xiaopeng/carcontrol/view/speech/SwitchFictitiousElementsConstructor;->generateElementValueJSON(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->value(Ljava/lang/Object;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->action(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p1

    aget-object p2, p3, v1

    .line 18
    invoke-virtual {p1, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->label(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->build()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs generateElement(Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "currState",
            "values",
            "vuiLable"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic generateElement(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "id",
            "currState",
            "vuiLable"
        }
    .end annotation

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/view/speech/SwitchFictitiousElementsConstructor;->generateElement(Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateElement(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "id",
            "currState",
            "values",
            "vuiLable"
        }
    .end annotation

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/carcontrol/view/speech/SwitchFictitiousElementsConstructor;->generateElement(Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p1

    return-object p1
.end method
