.class public Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;
.super Lcom/xiaopeng/carcontrol/view/speech/FictitiousElementsConstructor;
.source "StateFulButtonFictitiousElementsConstructor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/view/speech/FictitiousElementsConstructor<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private interval:F

.field private mainVuiLabel:Ljava/lang/String;

.field private maxValue:I

.field private minValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mainLabel",
            "action",
            "minValue",
            "maxValue",
            "interval"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/speech/FictitiousElementsConstructor;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;->mainVuiLabel:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;->action:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;->minValue:I

    .line 20
    iput p4, p0, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;->maxValue:I

    .line 21
    iput p5, p0, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;->interval:F

    return-void
.end method

.method private getVuiElement(Ljava/lang/String;Ljava/lang/Float;[Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 7
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
            "vuiLable",
            "values"
        }
    .end annotation

    if-eqz p3, :cond_4

    .line 29
    array-length v0, p3

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 34
    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 35
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;->minValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minValue"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 36
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;->maxValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxValue"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 37
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;->interval:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "interval"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 38
    new-instance v1, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    invoke-direct {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->id(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 39
    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->type(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;->mainVuiLabel:Ljava/lang/String;

    .line 40
    invoke-virtual {v1, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->label(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;->action:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->action(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;->action:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 42
    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;->generateElementValueJSON(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->value(Ljava/lang/Object;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p2

    .line 43
    invoke-virtual {p2, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->props(Lcom/google/gson/JsonObject;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->build()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p2

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :goto_0
    array-length v1, p3

    if-ge v4, v1, :cond_3

    .line 47
    aget-object v1, p3, v4

    const-string v2, "_"

    const-string v3, "State"

    if-eqz p4, :cond_2

    .line 48
    array-length v5, p4

    array-length v6, p3

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    new-instance v5, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    invoke-direct {v5}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;-><init>()V

    .line 56
    invoke-virtual {v5, v3}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->type(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {v3, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->id(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v2

    aget-object v3, p4, v4

    .line 58
    invoke-virtual {v2, v3}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->value(Ljava/lang/Object;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v2

    .line 59
    invoke-virtual {v2, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->label(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->build()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 49
    :cond_2
    :goto_1
    new-instance v5, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    invoke-direct {v5}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;-><init>()V

    .line 50
    invoke-virtual {v5, v3}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->type(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v3, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->id(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->value(Ljava/lang/Object;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v2

    .line 53
    invoke-virtual {v2, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->label(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->build()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p2, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setElements(Ljava/util/List;)V

    return-object p2

    :cond_4
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public varargs generateElement(Ljava/lang/String;Ljava/lang/Float;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1
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

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;->getVuiElement(Ljava/lang/String;Ljava/lang/Float;[Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p1

    return-object p1
.end method

.method public varargs generateElement(Ljava/lang/String;Ljava/lang/Float;[Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
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

    .line 71
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;->getVuiElement(Ljava/lang/String;Ljava/lang/Float;[Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p1

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

    .line 10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;->generateElement(Ljava/lang/String;Ljava/lang/Float;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

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

    .line 10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;->generateElement(Ljava/lang/String;Ljava/lang/Float;[Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p1

    return-object p1
.end method
