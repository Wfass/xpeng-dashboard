.class public Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"


# instance fields
.field carDir:I

.field carLat:D

.field carLon:D

.field formway:I

.field linkType:I

.field roadClass:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCarDir()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;->carDir:I

    return v0
.end method

.method public getCarLat()D
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;->carLat:D

    return-wide v0
.end method

.method public getCarLon()D
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;->carLon:D

    return-wide v0
.end method

.method public getFormway()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;->formway:I

    return v0
.end method

.method public getLinkType()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;->linkType:I

    return v0
.end method

.method public getRoadClass()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;->roadClass:I

    return v0
.end method
