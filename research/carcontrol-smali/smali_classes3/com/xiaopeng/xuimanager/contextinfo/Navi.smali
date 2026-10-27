.class public Lcom/xiaopeng/xuimanager/contextinfo/Navi;
.super Ljava/lang/Object;
.source "Navi.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/contextinfo/Navi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private curRouteName:Ljava/lang/String;

.field private exitInfo:Ljava/lang/String;

.field private exitInfoType:I

.field private isShowExitInfo:Z

.field private isTightTurnShow:Z

.field private nextManeuverDist:I

.field private nextManeuverDistDisplay:Ljava/lang/String;

.field private nextManeuverDistUnitDisplay:I

.field private nextManeuverID:J

.field private nextRouteName:Ljava/lang/String;

.field private routeRemainDist:D

.field private routeRemainDistDisplay:Ljava/lang/String;

.field private routeRemainDistUnitDisplay:I

.field private routeRemainLightCnt:I

.field private routeRemainTime:D

.field private segmentRemainDist:I

.field private segmentRemainDistDisplay:Ljava/lang/String;

.field private segmentRemainDistUnitDisplay:I

.field private segmentRemainProgress:I

.field private smartStatus:I

.field private viaRemainCnt:I

.field private viaRemainTime:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/Navi$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/contextinfo/Navi$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->curRouteName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextRouteName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->isShowExitInfo:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->exitInfo:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->segmentRemainDist:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->segmentRemainProgress:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainDist:D

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainTime:D

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->isTightTurnShow:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextManeuverID:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextManeuverDist:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->segmentRemainDistDisplay:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->segmentRemainDistUnitDisplay:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainDistDisplay:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainDistUnitDisplay:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextManeuverDistDisplay:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextManeuverDistUnitDisplay:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->exitInfoType:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->smartStatus:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->viaRemainTime:D

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainLightCnt:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->viaRemainCnt:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurRouteName()Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->curRouteName:Ljava/lang/String;

    return-object v0
.end method

.method public getExitInfo()Ljava/lang/String;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->exitInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getExitInfoType()I
    .locals 1

    .line 508
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->exitInfoType:I

    return v0
.end method

.method public getIsShowExitInfo()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->isShowExitInfo:Z

    return v0
.end method

.method public getIsTightTurnShow()Z
    .locals 1

    .line 495
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->isTightTurnShow:Z

    return v0
.end method

.method public getNextManeuverDist()I
    .locals 1

    .line 405
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextManeuverDist:I

    return v0
.end method

.method public getNextManeuverDistDisplay()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextManeuverDistDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getNextManeuverDistUnitDisplay()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextManeuverDistUnitDisplay:I

    return v0
.end method

.method public getNextManeuverID()J
    .locals 2

    .line 387
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextManeuverID:J

    return-wide v0
.end method

.method public getNextRouteName()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextRouteName:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteRemainDist()D
    .locals 2

    .line 302
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainDist:D

    return-wide v0
.end method

.method public getRouteRemainDistDisplay()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainDistDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteRemainDistUnitDisplay()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainDistUnitDisplay:I

    return v0
.end method

.method public getRouteRemainLightCnt()I
    .locals 1

    .line 354
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainLightCnt:I

    return v0
.end method

.method public getRouteRemainTime()D
    .locals 2

    .line 320
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainTime:D

    return-wide v0
.end method

.method public getSegmentRemainDist()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->segmentRemainDist:I

    return v0
.end method

.method public getSegmentRemainDistDisplay()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->segmentRemainDistDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmentRemainDistUnitDisplay()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->segmentRemainDistUnitDisplay:I

    return v0
.end method

.method public getSegmentRemainProgress()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->segmentRemainProgress:I

    return v0
.end method

.method public getSmartStatus()I
    .locals 1

    .line 520
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->smartStatus:I

    return v0
.end method

.method public getViaRemainCnt()I
    .locals 1

    .line 370
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->viaRemainCnt:I

    return v0
.end method

.method public getViaRemainTime()D
    .locals 2

    .line 338
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->viaRemainTime:D

    return-wide v0
.end method

.method public isShowExitInfo()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->isShowExitInfo:Z

    return v0
.end method

.method public isTightTurnShow()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->isTightTurnShow:Z

    return v0
.end method

.method public setCurRouteName(Ljava/lang/String;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->curRouteName:Ljava/lang/String;

    return-void
.end method

.method public setExitInfo(Ljava/lang/String;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->exitInfo:Ljava/lang/String;

    return-void
.end method

.method public setExitInfoType(I)V
    .locals 0

    .line 512
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->exitInfoType:I

    return-void
.end method

.method public setIsShowExitInfo(Z)V
    .locals 0

    .line 433
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->isShowExitInfo:Z

    return-void
.end method

.method public setIsTightTurnShow(Z)V
    .locals 0

    .line 504
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->isTightTurnShow:Z

    return-void
.end method

.method public setNextManeuverDist(I)V
    .locals 0

    .line 414
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextManeuverDist:I

    return-void
.end method

.method public setNextManeuverDistDisplay(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextManeuverDistDisplay:Ljava/lang/String;

    return-void
.end method

.method public setNextManeuverDistUnitDisplay(I)V
    .locals 0

    .line 255
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextManeuverDistUnitDisplay:I

    return-void
.end method

.method public setNextManeuverID(J)V
    .locals 0

    .line 396
    iput-wide p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextManeuverID:J

    return-void
.end method

.method public setNextRouteName(Ljava/lang/String;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextRouteName:Ljava/lang/String;

    return-void
.end method

.method public setRouteRemainDist(D)V
    .locals 0

    .line 311
    iput-wide p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainDist:D

    return-void
.end method

.method public setRouteRemainDistDisplay(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainDistDisplay:Ljava/lang/String;

    return-void
.end method

.method public setRouteRemainDistUnitDisplay(I)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainDistUnitDisplay:I

    return-void
.end method

.method public setRouteRemainLightCnt(I)V
    .locals 0

    .line 362
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainLightCnt:I

    return-void
.end method

.method public setRouteRemainTime(D)V
    .locals 0

    .line 330
    iput-wide p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainTime:D

    return-void
.end method

.method public setSegmentRemainDist(I)V
    .locals 0

    .line 293
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->segmentRemainDist:I

    return-void
.end method

.method public setSegmentRemainDistDisplay(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->segmentRemainDistDisplay:Ljava/lang/String;

    return-void
.end method

.method public setSegmentRemainDistUnitDisplay(I)V
    .locals 0

    .line 179
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->segmentRemainDistUnitDisplay:I

    return-void
.end method

.method public setSegmentRemainProgress(I)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->segmentRemainProgress:I

    return-void
.end method

.method public setShowExitInfo(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->isShowExitInfo:Z

    return-void
.end method

.method public setSmartStatus(I)V
    .locals 0

    .line 528
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->smartStatus:I

    return-void
.end method

.method public setTightTurnShow(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->isTightTurnShow:Z

    return-void
.end method

.method public setViaRemainCnt(I)V
    .locals 0

    .line 378
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->viaRemainCnt:I

    return-void
.end method

.method public setViaRemainTime(D)V
    .locals 0

    .line 346
    iput-wide p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->viaRemainTime:D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 549
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->curRouteName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextRouteName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    iget-boolean p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->isShowExitInfo:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 552
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->exitInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 553
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->segmentRemainDist:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->segmentRemainProgress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainDist:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 556
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainTime:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 557
    iget-boolean p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->isTightTurnShow:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 558
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextManeuverID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 559
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextManeuverDist:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->segmentRemainDistDisplay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 561
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->segmentRemainDistUnitDisplay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainDistDisplay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 563
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainDistUnitDisplay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextManeuverDistDisplay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 565
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->nextManeuverDistUnitDisplay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->exitInfoType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->smartStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->viaRemainTime:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 569
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->routeRemainLightCnt:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->viaRemainCnt:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
