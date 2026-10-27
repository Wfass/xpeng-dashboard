.class public Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer_AutoClass;
.super Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;
.source "CameraAuthManagerServer_AutoClass.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAuthStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraAuthStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onCameraAuthStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onIpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
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
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer_AutoClass;->TAG:Ljava/lang/String;

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

    const-string p1, "setCameraAuthState"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "getCameraAuthState"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer$Implementation;->getCameraAuthState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer$Implementation;->setCameraAuthState(I)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, ""

    :goto_2
    return-object p1
.end method
