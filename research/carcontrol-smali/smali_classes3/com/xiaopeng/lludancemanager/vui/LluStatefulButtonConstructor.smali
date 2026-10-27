.class public Lcom/xiaopeng/lludancemanager/vui/LluStatefulButtonConstructor;
.super Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;
.source "LluStatefulButtonConstructor.java"


# instance fields
.field private final mValue:I

.field private mVuiLabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "mValue"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;-><init>()V

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/xiaopeng/lludancemanager/R$array;->llu_state_array:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/vui/LluStatefulButtonConstructor;->mVuiLabels:[Ljava/lang/String;

    .line 27
    :cond_0
    iput p2, p0, Lcom/xiaopeng/lludancemanager/vui/LluStatefulButtonConstructor;->mValue:I

    return-void
.end method


# virtual methods
.method public construct(Lcom/xiaopeng/vui/commons/IVuiElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iVuiElement"
        }
    .end annotation

    .line 32
    iget v0, p0, Lcom/xiaopeng/lludancemanager/vui/LluStatefulButtonConstructor;->mValue:I

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/vui/LluStatefulButtonConstructor;->mVuiLabels:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/lludancemanager/vui/LluStatefulButtonConstructor;->setStatefulButtonData(Lcom/xiaopeng/vui/commons/IVuiElement;I[Ljava/lang/String;)V

    .line 33
    invoke-interface {p1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "hasFeedback"

    const/4 v2, 0x1

    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 40
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 42
    :goto_0
    invoke-interface {p1, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V

    return-void
.end method
