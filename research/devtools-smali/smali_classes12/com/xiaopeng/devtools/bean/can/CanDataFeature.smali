.class public Lcom/xiaopeng/devtools/bean/can/CanDataFeature;
.super Ljava/lang/Object;
.source "CanDataFeature.java"


# instance fields
.field private canidbit:B

.field private channelbitoffset:I

.field private isDLC:Z

.field private minEachCanLength:I

.field private minLength:I

.field private startpoint:I

.field private withTimestamp:Z

.field private withTriggerEvent:Z

.field private withValidbit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->minLength:I

    .line 8
    iput v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->minEachCanLength:I

    .line 9
    iput v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->startpoint:I

    .line 10
    iput v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->channelbitoffset:I

    .line 11
    iput-byte v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->canidbit:B

    .line 12
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->withValidbit:Z

    .line 13
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->withTimestamp:Z

    .line 14
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->withTriggerEvent:Z

    .line 15
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->isDLC:Z

    return-void
.end method


# virtual methods
.method public getCanidbit()B
    .locals 1

    .line 74
    iget-byte v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->canidbit:B

    return v0
.end method

.method public getChannelbitoffset()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->channelbitoffset:I

    return v0
.end method

.method public getMinEachCanLength()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->minEachCanLength:I

    return v0
.end method

.method public getMinLength()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->minLength:I

    return v0
.end method

.method public getStartpoint()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->startpoint:I

    return v0
.end method

.method public isDLC()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->isDLC:Z

    return v0
.end method

.method public isWithTimestamp()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->withTimestamp:Z

    return v0
.end method

.method public isWithTriggerEvent()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->withTriggerEvent:Z

    return v0
.end method

.method public isWithValidbit()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->withValidbit:Z

    return v0
.end method

.method public setCanidbit(B)V
    .locals 0

    .line 78
    iput-byte p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->canidbit:B

    .line 79
    return-void
.end method

.method public setChannelbitoffset(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->channelbitoffset:I

    .line 71
    return-void
.end method

.method public setDLC(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->isDLC:Z

    .line 23
    return-void
.end method

.method public setMinEachCanLength(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->minEachCanLength:I

    .line 55
    return-void
.end method

.method public setMinLength(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->minLength:I

    .line 47
    return-void
.end method

.method public setStartpoint(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->startpoint:I

    .line 63
    return-void
.end method

.method public setWithTimestamp(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->withTimestamp:Z

    .line 39
    return-void
.end method

.method public setWithTriggerEvent(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->withTriggerEvent:Z

    .line 31
    return-void
.end method

.method public setWithValidbit(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->withValidbit:Z

    .line 87
    return-void
.end method
