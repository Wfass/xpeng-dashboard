.class public Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;
.super Ljava/lang/Object;
.source "McuAckTest.java"


# instance fields
.field public BAT_VOL_DET_RESULT:F

.field public BAT_VOL_DET_VD:I

.field public CAN_TEST_RESULT:I

.field public EEPROM_TEST_RESULT:I

.field public FMANT_TEST_RESULT:I

.field public GNSSANT_TEST_RESULT:I

.field public GNSS_COM_TEST_RESULT:I

.field public MIC_TEST_RESULT:I

.field public TEMP_DET_RESULT:I

.field public TEMP_DET_VD:I


# direct methods
.method public constructor <init>([I)V
    .locals 5
    .param p1, "data"    # [I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    aget v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->EEPROM_TEST_RESULT:I

    .line 25
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->CAN_TEST_RESULT:I

    .line 26
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->MIC_TEST_RESULT:I

    .line 27
    aget v0, p1, v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->GNSSANT_TEST_RESULT:I

    .line 28
    const/4 v0, 0x1

    aget v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->FMANT_TEST_RESULT:I

    .line 29
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->TEMP_DET_VD:I

    .line 30
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iput v1, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->TEMP_DET_RESULT:I

    .line 31
    aget v0, p1, v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->BAT_VOL_DET_VD:I

    .line 32
    const/4 v0, 0x2

    aget v1, p1, v0

    const v2, 0xffff

    and-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->BAT_VOL_DET_RESULT:F

    .line 33
    aget v0, p1, v0

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->GNSS_COM_TEST_RESULT:I

    .line 34
    const-string v0, "McuAckTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "McuAckTest data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 38
    const-string v0, ""

    .line 39
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EEPROM_TEST_RESULT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->EEPROM_TEST_RESULT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n CAN_TEST_RESULT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->CAN_TEST_RESULT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n MIC_TEST_RESULT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->MIC_TEST_RESULT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n GNSSANT_TEST_RESULT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->GNSSANT_TEST_RESULT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n FMANT_TEST_RESULT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->FMANT_TEST_RESULT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n TEMP_DET_VD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->TEMP_DET_VD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n TEMP_DET_RESULT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->TEMP_DET_RESULT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n BAT_VOL_DET_VD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->BAT_VOL_DET_VD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n BAT_VOL_DET_RESULT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->BAT_VOL_DET_RESULT:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\n GNSS_COM_TEST_RESULT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/McuAckTest;->GNSS_COM_TEST_RESULT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    return-object v0
.end method
