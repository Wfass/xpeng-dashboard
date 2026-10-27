.class public Lcom/xiaopeng/commonfunc/bean/car/McuReportSpeedPwm;
.super Ljava/lang/Object;
.source "McuReportSpeedPwm.java"


# instance fields
.field public PWM_FRQ_RESULT:I

.field public SPEED_RESULT:I


# direct methods
.method public constructor <init>([I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuReportSpeedPwm;->SPEED_RESULT:I

    .line 10
    const/4 v0, 0x1

    aget p1, p1, v0

    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/McuReportSpeedPwm;->PWM_FRQ_RESULT:I

    .line 11
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 14
    const-string v0, ""

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SPEED_RESULT="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuReportSpeedPwm;->SPEED_RESULT:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n PWM_FRQ_RESULT="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuReportSpeedPwm;->PWM_FRQ_RESULT:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    return-object v0
.end method
