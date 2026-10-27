.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionAmbientLight.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;


# instance fields
.field private ambientLightOpen:Z

.field private final brightness:[I

.field private final color:[I

.field private final effect:Ljava/lang/String;

.field private final executeTime:I

.field private final fade:[I

.field private final timeInterval:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[I[I[III)V
    .locals 0
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "color"    # [I
    .param p3, "brightness"    # [I
    .param p4, "fade"    # [I
    .param p5, "executeTime"    # I
    .param p6, "timeInterval"    # I

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->effect:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->color:[I

    .line 35
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->brightness:[I

    .line 36
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->fade:[I

    .line 37
    iput p5, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->executeTime:I

    .line 38
    iput p6, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->timeInterval:I

    .line 39
    return-void
.end method

.method private intArrToJson([ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "arr"    # [I
    .param p2, "infoType"    # Ljava/lang/String;

    .line 148
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 149
    .local v0, "output":Lorg/json/JSONObject;
    move-object v1, p2

    .line 151
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 152
    .local v2, "jsonArray":Lorg/json/JSONArray;
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, p1, v4

    .line 153
    .local v5, "i":I
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 152
    .end local v5    # "i":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_1

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "egg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intArrToJson() Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public static synthetic lambda$onStart$0(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;)V
    .locals 6
    .param p1, "ambientLightManager"    # Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    .line 52
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->ambientLightOpen:Z

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAmbientLightOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->ambientLightOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 54
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->ambientLightOpen:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 55
    const-string v0, "setAmbientLightOpen = true"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->setAmbientLightOpen(Z)V

    .line 58
    :cond_0
    invoke-virtual {p1, p0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->registerListener(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;)V

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 61
    .local v0, "scriptEffect":[Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .local v2, "effectData":Lorg/json/JSONObject;
    const-string v3, "color"

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->color:[I

    const-string v5, "color"

    invoke-direct {p0, v4, v5}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->intArrToJson([ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v3, "bright"

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->brightness:[I

    const-string v5, "bright"

    invoke-direct {p0, v4, v5}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->intArrToJson([ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v3, "fade"

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->fade:[I

    const-string v5, "fade"

    invoke-direct {p0, v4, v5}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->intArrToJson([ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v3, "executeTime"

    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->executeTime:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    const-string v3, "timeInterval"

    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->timeInterval:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    const/4 v3, 0x0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 68
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->effect:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 70
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->startPlay([Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "scriptEffect":[Ljava/lang/String;
    .end local v2    # "effectData":Lorg/json/JSONObject;
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "start ambient light fail"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onStop$1(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;)V
    .locals 2
    .param p1, "ambientLightManager"    # Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    .line 87
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->unregisterListener(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;)V

    .line 88
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->stopPlay()I

    .line 89
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->ambientLightOpen:Z

    if-nez v0, :cond_0

    .line 90
    const-string v0, "setAmbientLightOpen = false, restore AmbientLightOpen switch"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->setAmbientLightOpen(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "stop ambient light fail"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public onErrorEvent(II)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onErrorEvent: errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", operation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public onLightBrightSetEvent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "bright"    # I

    .line 125
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;->onLightBrightSetEvent(Ljava/lang/String;I)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onLightBrightSetEvent: effectType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bright = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public onLightDoubleColorEnableEvent(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 107
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;->onLightDoubleColorEnableEvent(Ljava/lang/String;Z)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onLightDoubleColorEnableEvent: effectType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onLightDoubleColorSetEvent(Ljava/lang/String;II)V
    .locals 2
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "first_color"    # I
    .param p3, "second_color"    # I

    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;->onLightDoubleColorSetEvent(Ljava/lang/String;II)V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onLightDoubleColorSetEvent: effectType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", first_color = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", second_color = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onLightEffectTypeSetEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "effectType"    # Ljava/lang/String;

    .line 101
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;->onLightEffectTypeSetEvent(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onLightEffectTypeSetEvent: effectType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onLightMonoColorSetEvent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 113
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;->onLightMonoColorSetEvent(Ljava/lang/String;I)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onLightMonoColorSetEvent: effectType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", color = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onLightSwitchSetEvent(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 131
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;->onLightSwitchSetEvent(Ljava/lang/String;Z)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onLightSwitchSetEvent: effectType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 43
    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager;->getInstance()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    const-string v1, "ambientlight"

    .line 44
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    .line 45
    .local v0, "ambientLightManager":Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;
    if-nez v0, :cond_0

    .line 46
    const-string v1, "ambient light not supported"

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 47
    return-void

    .line 50
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionAmbientLight$iMryus-fJH2g2UPy0e0KoBHjz1Y;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionAmbientLight$iMryus-fJH2g2UPy0e0KoBHjz1Y;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 79
    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager;->getInstance()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    const-string v1, "ambientlight"

    .line 80
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    .line 81
    .local v0, "ambientLightManager":Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;
    if-nez v0, :cond_0

    .line 82
    return-void

    .line 85
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionAmbientLight$Nief1_qVMSTNOd_rKl2ePlAG0YU;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionAmbientLight$Nief1_qVMSTNOd_rKl2ePlAG0YU;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{effect=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->color:[I

    .line 166
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", brightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->brightness:[I

    .line 167
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->fade:[I

    .line 168
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", executeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->executeTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->timeInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    return-object v0
.end method
