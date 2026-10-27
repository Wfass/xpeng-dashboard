.class public Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;
.super Lcom/loostone/libserver/version1/entity/request/BaseRequest;
.source "SourceFile"


# instance fields
.field private brand:Ljava/lang/String;

.field private customer:Ljava/lang/String;

.field private device:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private hardware:Ljava/lang/String;

.field private hidResult:I

.field private hidSn:Ljava/lang/String;

.field private hidVersion:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private serial:Ljava/lang/String;

.field private vendor:Ljava/lang/String;

.field private vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/loostone/libserver/version1/entity/request/BaseRequest;-><init>()V

    .line 2
    invoke-static {}, Lcom/loostone/libserver/version1/entity/MachineInfoConfig;->getBrand()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->brand:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/loostone/libserver/version1/entity/MachineInfoConfig;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->model:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/loostone/libserver/version1/entity/MachineInfoConfig;->getHardWare()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->hardware:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/loostone/libserver/version1/entity/MachineInfoConfig;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->manufacturer:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/loostone/libserver/version1/entity/MachineInfoConfig;->getDevice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->device:Ljava/lang/String;

    .line 7
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;

    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->customer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->customer:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->hardware:Ljava/lang/String;

    return-object v0
.end method

.method public getHidResult()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->hidResult:I

    return v0
.end method

.method public getHidSn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->hidSn:Ljava/lang/String;

    return-object v0
.end method

.method public getHidVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->hidVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->vid:Ljava/lang/String;

    return-object v0
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->brand:Ljava/lang/String;

    return-void
.end method

.method public setCustomer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->customer:Ljava/lang/String;

    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->device:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setHardware(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->hardware:Ljava/lang/String;

    return-void
.end method

.method public setHidResult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->hidResult:I

    return-void
.end method

.method public setHidSn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->hidSn:Ljava/lang/String;

    return-void
.end method

.method public setHidVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->hidVersion:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->model:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->pid:Ljava/lang/String;

    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->serial:Ljava/lang/String;

    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->vendor:Ljava/lang/String;

    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->vid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestMicLimitInfo{hidResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->hidResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serial=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->serial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hidSn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->hidSn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hidVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->hidVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->vid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->pid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vendor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->vendor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", brand=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->brand:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", model=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hardware=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->hardware:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", manufacturer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", device=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->device:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", customer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->customer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", _time=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/request/BaseRequest;->_time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
