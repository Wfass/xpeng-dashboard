.class public Lcom/xiaopeng/carcontrol/Bean/FaultBean;
.super Ljava/lang/Object;
.source "FaultBean.java"


# instance fields
.field private advice:Ljava/lang/String;

.field private businessType:I

.field private code:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private disappearanceTime:J

.field private imageUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private level:I

.field private localFilePath:Ljava/lang/String;

.field private module:Ljava/lang/String;

.field private notificationStatus:I

.field private occurrenceTime:J

.field private status:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "businessType",
            "code",
            "level",
            "module",
            "title",
            "description",
            "advice",
            "localFilePath",
            "imageUrls",
            "status",
            "notificationStatus",
            "occurrenceTime",
            "disappearanceTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIJJ)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->businessType:I

    .line 22
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->code:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->level:I

    .line 24
    iput-object p4, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->module:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->title:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->description:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->advice:Ljava/lang/String;

    .line 28
    iput-object p8, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->localFilePath:Ljava/lang/String;

    .line 29
    iput-object p9, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->imageUrls:Ljava/util/List;

    .line 30
    iput p10, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->status:I

    .line 31
    iput p11, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->notificationStatus:I

    .line 32
    iput-wide p12, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->occurrenceTime:J

    .line 33
    iput-wide p14, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->disappearanceTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "description"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->title:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdvice()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->advice:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessType()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->businessType:I

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisappearanceTime()J
    .locals 2

    .line 138
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->disappearanceTime:J

    return-wide v0
.end method

.method public getImageUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->imageUrls:Ljava/util/List;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->level:I

    return v0
.end method

.method public getLocalFilePath()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->localFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationStatus()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->notificationStatus:I

    return v0
.end method

.method public getOccurrenceTime()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->occurrenceTime:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->status:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAdvice(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "advice"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->advice:Ljava/lang/String;

    return-void
.end method

.method public setBusinessType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "businessType"
        }
    .end annotation

    .line 46
    iput p1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->businessType:I

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setDisappearanceTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disappearanceTime"
        }
    .end annotation

    .line 142
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->disappearanceTime:J

    return-void
.end method

.method public setImageUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageUrls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->imageUrls:Ljava/util/List;

    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 62
    iput p1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->level:I

    return-void
.end method

.method public setLocalFilePath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localFilePath"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->localFilePath:Ljava/lang/String;

    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->module:Ljava/lang/String;

    return-void
.end method

.method public setNotificationStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notificationStatus"
        }
    .end annotation

    .line 126
    iput p1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->notificationStatus:I

    return-void
.end method

.method public setOccurrenceTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occurrenceTime"
        }
    .end annotation

    .line 134
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->occurrenceTime:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 118
    iput p1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->status:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaultBean{businessType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->businessType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", level="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->level:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", module=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->module:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", advice=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->advice:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", localFilePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->localFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->imageUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notificationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->notificationStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", occurrenceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->occurrenceTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disappearanceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->disappearanceTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
