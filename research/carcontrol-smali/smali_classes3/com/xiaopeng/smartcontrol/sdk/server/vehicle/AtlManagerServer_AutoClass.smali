.class public Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;
.super Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;
.source "AtlManagerServer_AutoClass.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;-><init>()V

    return-void
.end method


# virtual methods
.method public onAtlBrightnessChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAtlBrightnessChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onAtlBrightnessChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlColorModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAtlColorModeChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onAtlColorModeChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlEffectChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAtlEffectChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onAtlEffectChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlSwChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAtlSwChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onAtlSwChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDoubleColorChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoubleColorChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onDoubleColorChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onIpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "method",
            "param"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "getDoubleColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "getSingleColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "setAtlEffect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "setAtlSw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "isAtlSwEnable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_5
    const-string v0, "setDoubleColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "getAtlEffect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v0, "setSingleColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "getAtlBrightness"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "setAtlColorMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_a
    const-string v0, "getAtlColorMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_b
    const-string v0, "setAtlBrightness"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_0
    const/4 p2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 42
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;->getDoubleColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 46
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;->getSingleColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 54
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;->setAtlEffect(I)V

    .line 55
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "lamp_ambient_effect"

    invoke-static {v0, p3, p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 24
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;->setAtlSw(Z)V

    .line 25
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v0, "lamp_ambient_sw"

    invoke-static {v0, p3, p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 38
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;->isAtlSwEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_1

    .line 14
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;->setDoubleColor(I)V

    .line 15
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "lamp_ambient_double_color"

    invoke-static {v0, p3, p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 34
    :pswitch_6
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;->getAtlEffect()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    .line 59
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;->setSingleColor(I)V

    .line 60
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "lamp_ambient_single_color"

    invoke-static {v0, p3, p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 64
    :pswitch_8
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;->getAtlBrightness()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    .line 29
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;->setAtlColorMode(I)V

    .line 30
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "lamp_ambient_color_mode"

    invoke-static {v0, p3, p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 50
    :pswitch_a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;->getAtlColorMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    .line 19
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;->setAtlBrightness(I)V

    .line 20
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "lamp_ambient_brightness"

    invoke-static {v0, p3, p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    if-eqz p2, :cond_c

    .line 68
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_c
    const-string p1, ""

    :goto_2
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x65b60578 -> :sswitch_b
        -0x409f787d -> :sswitch_a
        -0xa567d71 -> :sswitch_9
        0x7739414 -> :sswitch_8
        0x776e239 -> :sswitch_7
        0xc107ad4 -> :sswitch_6
        0xe423850 -> :sswitch_5
        0x15c39736 -> :sswitch_4
        0x52b9039b -> :sswitch_3
        0x68643b48 -> :sswitch_2
        0x71116ec5 -> :sswitch_1
        0x77dcc4dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSingleColorChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleColorChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onSingleColorChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
