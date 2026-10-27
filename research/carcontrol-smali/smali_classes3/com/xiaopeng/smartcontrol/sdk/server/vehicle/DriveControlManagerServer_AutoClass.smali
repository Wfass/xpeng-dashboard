.class public Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer_AutoClass;
.super Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;
.source "DriveControlManagerServer_AutoClass.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;-><init>()V

    return-void
.end method


# virtual methods
.method public onDriveModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDriveModeChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onDriveModeChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

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
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer_AutoClass;->TAG:Ljava/lang/String;

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

    goto :goto_0

    :sswitch_0
    const-string v0, "getDriveModeList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "getSpecialDriveModeList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "getNormalDriveModeList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "setDriveMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "getDriveMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    const/4 p2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 18
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer$Implementation;->getDriveModeList()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 31
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer$Implementation;->getSpecialDriveModeList()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 22
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer$Implementation;->getNormalDriveModeList()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 26
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer$Implementation;->setDriveMode(I)V

    .line 27
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "drive_settings_drive_mode"

    invoke-static {v0, p3, p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 14
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer$Implementation;->getDriveMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_5

    .line 35
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-string p1, ""

    :goto_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x52131c69 -> :sswitch_4
        0xa40a40b -> :sswitch_3
        0x109267ae -> :sswitch_2
        0x214808c8 -> :sswitch_1
        0x5f3764d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
