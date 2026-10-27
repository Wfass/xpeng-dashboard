.class public Lcom/loostone/libserver/version1/entity/response/volume/ResponseVolume;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private echo:I

.field private echoMax:I

.field private mic:I

.field private micMax:I

.field private status:I

.field private sysMax:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEcho()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libserver/version1/entity/response/volume/ResponseVolume;->echo:I

    return v0
.end method

.method public getEchoMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libserver/version1/entity/response/volume/ResponseVolume;->echoMax:I

    return v0
.end method

.method public getMic()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libserver/version1/entity/response/volume/ResponseVolume;->mic:I

    return v0
.end method

.method public getMicMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libserver/version1/entity/response/volume/ResponseVolume;->micMax:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libserver/version1/entity/response/volume/ResponseVolume;->status:I

    return v0
.end method

.method public getSysMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libserver/version1/entity/response/volume/ResponseVolume;->sysMax:I

    return v0
.end method

.method public setEcho(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libserver/version1/entity/response/volume/ResponseVolume;->echo:I

    return-void
.end method

.method public setEchoMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libserver/version1/entity/response/volume/ResponseVolume;->echoMax:I

    return-void
.end method

.method public setMic(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libserver/version1/entity/response/volume/ResponseVolume;->mic:I

    return-void
.end method

.method public setMicMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libserver/version1/entity/response/volume/ResponseVolume;->micMax:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libserver/version1/entity/response/volume/ResponseVolume;->status:I

    return-void
.end method

.method public setSysMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libserver/version1/entity/response/volume/ResponseVolume;->sysMax:I

    return-void
.end method
