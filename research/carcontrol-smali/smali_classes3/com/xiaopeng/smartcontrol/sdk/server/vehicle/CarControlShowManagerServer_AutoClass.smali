.class public Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer_AutoClass;
.super Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;
.source "CarControlShowManagerServer_AutoClass.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterVehicleFaultPage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnterVehicleFaultPage   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onEnterVehicleFaultPage"

    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onExitVehicleFaultPage()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer_AutoClass;->TAG:Ljava/lang/String;

    const-string v1, "onExitVehicleFaultPage   params: null"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onExitVehicleFaultPage"

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onIpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
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

    .line 9
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "showVehicleFaultListPage"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string p1, "showCarControlPageElement"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string p1, "showCarControlPageWithSubPage"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_0

    :sswitch_3
    const-string p1, "showVehicleFaultDetailPage"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_0

    :sswitch_4
    const-string p1, "showCarControlPage"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    const-string p1, ","

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 22
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer$Implementation;->showVehicleFaultListPage()V

    goto :goto_1

    .line 30
    :pswitch_1
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer$Implementation;

    aget-object p3, p1, v2

    aget-object v1, p1, v1

    aget-object p1, p1, v0

    invoke-interface {p2, p3, v1, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer$Implementation;->showCarControlPageElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :pswitch_2
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer$Implementation;

    aget-object p3, p1, v2

    aget-object p1, p1, v1

    invoke-interface {p2, p3, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer$Implementation;->showCarControlPageWithSubPage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer$Implementation;

    invoke-interface {p1, p3}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer$Implementation;->showVehicleFaultDetailPage(Ljava/lang/String;)V

    goto :goto_1

    .line 26
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer$Implementation;

    invoke-interface {p1, p3}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer$Implementation;->showCarControlPage(Ljava/lang/String;)V

    :goto_1
    const-string p1, ""

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x733fd68b -> :sswitch_4
        0xb0a98d3 -> :sswitch_3
        0x15188494 -> :sswitch_2
        0x2574efc7 -> :sswitch_1
        0x6ea4bb60 -> :sswitch_0
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
