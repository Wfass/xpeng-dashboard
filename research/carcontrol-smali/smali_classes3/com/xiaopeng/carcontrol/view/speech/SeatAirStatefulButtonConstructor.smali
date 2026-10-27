.class public Lcom/xiaopeng/carcontrol/view/speech/SeatAirStatefulButtonConstructor;
.super Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;
.source "SeatAirStatefulButtonConstructor.java"


# instance fields
.field private level:I

.field private vuiLabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mContext",
            "level"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;-><init>()V

    .line 22
    iput p2, p0, Lcom/xiaopeng/carcontrol/view/speech/SeatAirStatefulButtonConstructor;->level:I

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$array;->hvac_seat_air_vui_labels:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/speech/SeatAirStatefulButtonConstructor;->vuiLabels:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getVuiLabelAction()Lorg/json/JSONObject;
    .locals 3

    .line 51
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 52
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SETCHECK:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public construct(Lcom/xiaopeng/vui/commons/IVuiElement;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vuiFriendly"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 32
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/speech/SeatAirStatefulButtonConstructor;->level:I

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/speech/SeatAirStatefulButtonConstructor;->level:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 35
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/speech/SeatAirStatefulButtonConstructor;->level:I

    .line 37
    :cond_2
    :goto_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/speech/SeatAirStatefulButtonConstructor;->level:I

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_1
    move v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v7, p0, Lcom/xiaopeng/carcontrol/view/speech/SeatAirStatefulButtonConstructor;->vuiLabels:[Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/xiaopeng/carcontrol/view/speech/SeatAirStatefulButtonConstructor;->setStatefulButtonData(Lcom/xiaopeng/vui/commons/IVuiElement;IIIF[Ljava/lang/String;)V

    .line 38
    invoke-interface {p1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    :try_start_0
    const-string v1, "defaultAction"

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/speech/SeatAirStatefulButtonConstructor;->getVuiLabelAction()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "unit"

    const-string v2, "Gear"

    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 45
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    :goto_2
    invoke-interface {p1, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V

    return-void
.end method
