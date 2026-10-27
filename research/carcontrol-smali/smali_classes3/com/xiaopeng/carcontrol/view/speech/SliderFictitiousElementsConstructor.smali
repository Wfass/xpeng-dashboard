.class public Lcom/xiaopeng/carcontrol/view/speech/SliderFictitiousElementsConstructor;
.super Lcom/xiaopeng/carcontrol/view/speech/FictitiousElementsConstructor;
.source "SliderFictitiousElementsConstructor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/view/speech/FictitiousElementsConstructor<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private interval:I

.field private maxValue:I

.field private minValue:I


# direct methods
.method public constructor <init>(IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "minValue",
            "maxValue",
            "interval"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/speech/FictitiousElementsConstructor;-><init>()V

    .line 14
    iput p2, p0, Lcom/xiaopeng/carcontrol/view/speech/SliderFictitiousElementsConstructor;->maxValue:I

    .line 15
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/speech/SliderFictitiousElementsConstructor;->minValue:I

    float-to-int p1, p3

    .line 16
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/speech/SliderFictitiousElementsConstructor;->interval:I

    return-void
.end method


# virtual methods
.method public varargs generateElement(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
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

    .line 20
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 24
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/speech/SliderFictitiousElementsConstructor;->minValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minValue"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 25
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/speech/SliderFictitiousElementsConstructor;->maxValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxValue"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 26
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/speech/SliderFictitiousElementsConstructor;->interval:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "interval"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "unit"

    const-string v2, "Gear"

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v1, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    invoke-direct {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;-><init>()V

    const/4 v2, 0x0

    aget-object p3, p3, v2

    .line 30
    invoke-virtual {v1, p3}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->label(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p3

    .line 31
    invoke-virtual {p3, p1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->id(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p1

    const-string p3, "SetValue"

    .line 32
    invoke-virtual {p1, p3}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->action(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->XSLIDER:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 33
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->type(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p1

    .line 34
    invoke-virtual {p1, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->props(Lcom/google/gson/JsonObject;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 35
    invoke-virtual {p0, p3, v0}, Lcom/xiaopeng/carcontrol/view/speech/SliderFictitiousElementsConstructor;->generateElementValueJSON(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->value(Ljava/lang/Object;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->build()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs generateElement(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
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
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/view/speech/SliderFictitiousElementsConstructor;->generateElement(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

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
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/carcontrol/view/speech/SliderFictitiousElementsConstructor;->generateElement(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p1

    return-object p1
.end method
