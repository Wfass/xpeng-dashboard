.class public Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# instance fields
.field private cell_connect:I

.field private dc_impedance:I

.field private discharge_current:I

.field private incharging:I

.field private indischarging:I

.field private soc:I

.field private soh:I

.field private stepup_state:I

.field private stepup_volt:I

.field private voltage:I


# direct methods
.method public constructor <init>(IIIIIIIIII)V
    .locals 0
    .param p1, "incharging"    # I
    .param p2, "soc"    # I
    .param p3, "voltage"    # I
    .param p4, "dc_impedance"    # I
    .param p5, "soh"    # I
    .param p6, "cell_connect"    # I
    .param p7, "stepup_state"    # I
    .param p8, "stepup_volt"    # I
    .param p9, "indischarging"    # I
    .param p10, "discharge_current"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->incharging:I

    .line 21
    iput p2, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->soc:I

    .line 22
    iput p3, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->voltage:I

    .line 23
    iput p4, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->dc_impedance:I

    .line 24
    iput p5, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->soh:I

    .line 25
    iput p6, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->cell_connect:I

    .line 26
    iput p7, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->stepup_state:I

    .line 27
    iput p8, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->stepup_volt:I

    .line 28
    iput p9, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->indischarging:I

    .line 29
    iput p10, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->discharge_current:I

    .line 30
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "values"    # [B

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    :try_start_0
    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->byteToInt(B)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->incharging:I

    .line 35
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->byteToInt(B)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->soc:I

    .line 36
    const/4 v0, 0x2

    aget-byte v1, p1, v0

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->byteToInt(B)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->soh:I

    .line 37
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->byteToInt(B)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->cell_connect:I

    .line 38
    const/4 v1, 0x4

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->byteToInt(B)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->stepup_state:I

    .line 39
    const/4 v1, 0x5

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->byteToInt(B)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->indischarging:I

    .line 40
    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->byteSub([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->unsignedBytes2ToInt([B)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->discharge_current:I

    .line 41
    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->byteSub([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->unsignedBytes2ToInt([B)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->voltage:I

    .line 42
    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->byteSub([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->unsignedBytes2ToInt([B)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->dc_impedance:I

    .line 43
    const/16 v1, 0xc

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->byteSub([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->unsignedBytes2ToInt([B)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->stepup_volt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public getCell_connect()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->cell_connect:I

    return v0
.end method

.method public getDc_impedance()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->dc_impedance:I

    return v0
.end method

.method public getDischarge_current()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->discharge_current:I

    return v0
.end method

.method public getIncharging()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->incharging:I

    return v0
.end method

.method public getIndischarging()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->indischarging:I

    return v0
.end method

.method public getSoc()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->soc:I

    return v0
.end method

.method public getSoh()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->soh:I

    return v0
.end method

.method public getStepup_state()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->stepup_state:I

    return v0
.end method

.method public getStepup_volt()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->stepup_volt:I

    return v0
.end method

.method public getVoltage()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->voltage:I

    return v0
.end method

.method public setCell_connect(I)V
    .locals 0
    .param p1, "cell_connect"    # I

    .line 94
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->cell_connect:I

    .line 95
    return-void
.end method

.method public setDc_impedance(I)V
    .locals 0
    .param p1, "dc_impedance"    # I

    .line 78
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->dc_impedance:I

    .line 79
    return-void
.end method

.method public setDischarge_current(I)V
    .locals 0
    .param p1, "discharge_current"    # I

    .line 126
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->discharge_current:I

    .line 127
    return-void
.end method

.method public setIncharging(I)V
    .locals 0
    .param p1, "incharging"    # I

    .line 54
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->incharging:I

    .line 55
    return-void
.end method

.method public setIndischarging(I)V
    .locals 0
    .param p1, "indischarging"    # I

    .line 118
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->indischarging:I

    .line 119
    return-void
.end method

.method public setSoc(I)V
    .locals 0
    .param p1, "soc"    # I

    .line 62
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->soc:I

    .line 63
    return-void
.end method

.method public setSoh(I)V
    .locals 0
    .param p1, "soh"    # I

    .line 86
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->soh:I

    .line 87
    return-void
.end method

.method public setStepup_state(I)V
    .locals 0
    .param p1, "stepup_state"    # I

    .line 102
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->stepup_state:I

    .line 103
    return-void
.end method

.method public setStepup_volt(I)V
    .locals 0
    .param p1, "stepup_volt"    # I

    .line 110
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->stepup_volt:I

    .line 111
    return-void
.end method

.method public setVoltage(I)V
    .locals 0
    .param p1, "voltage"    # I

    .line 70
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->voltage:I

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryInfo{incharging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->incharging:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", soc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->soc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->voltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dc_impedance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->dc_impedance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", soh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->soh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cell_connect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->cell_connect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stepup_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->stepup_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stepup_volt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->stepup_volt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", indischarging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->indischarging:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", discharge_current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/BatteryInfo;->discharge_current:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
