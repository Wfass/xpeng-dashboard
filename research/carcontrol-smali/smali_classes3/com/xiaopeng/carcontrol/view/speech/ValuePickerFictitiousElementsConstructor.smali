.class public Lcom/xiaopeng/carcontrol/view/speech/ValuePickerFictitiousElementsConstructor;
.super Ljava/lang/Object;
.source "ValuePickerFictitiousElementsConstructor.java"


# instance fields
.field private constructor:Lcom/xiaopeng/carcontrol/view/speech/IFictitiousElementConstructor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "isDrive"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->hvac_driver_temp_vui_label:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->hvac_psn_temp_vui_label:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 20
    new-instance p1, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;

    const/16 v3, 0x12

    const/16 v4, 0x20

    const/high16 v5, 0x3f000000    # 0.5f

    const-string v2, "SetValue"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/view/speech/StateFulButtonFictitiousElementsConstructor;-><init>(Ljava/lang/String;Ljava/lang/String;IIF)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/speech/ValuePickerFictitiousElementsConstructor;->constructor:Lcom/xiaopeng/carcontrol/view/speech/IFictitiousElementConstructor;

    :cond_1
    return-void
.end method


# virtual methods
.method public varargs getValuePickerElement(Ljava/lang/String;F[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
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
            "values"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/speech/ValuePickerFictitiousElementsConstructor;->constructor:Lcom/xiaopeng/carcontrol/view/speech/IFictitiousElementConstructor;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/view/speech/IFictitiousElementConstructor;->generateElement(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object p2

    const-string p3, "defaultAction"

    const-string v0, ""

    .line 31
    invoke-virtual {p2, p3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "unit"

    const-string v0, "Centigrade"

    .line 32
    invoke-virtual {p2, p3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setProps(Lcom/google/gson/JsonObject;)V

    return-object p1
.end method
