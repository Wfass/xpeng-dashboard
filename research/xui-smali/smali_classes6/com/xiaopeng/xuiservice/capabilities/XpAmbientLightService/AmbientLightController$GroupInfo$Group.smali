.class public Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;
.super Ljava/lang/Object;
.source "AmbientLightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Group"
.end annotation


# instance fields
.field groupNumber:I

.field lightPosition:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;->groupNumber:I

    .line 373
    const-string v0, "0x0"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;->lightPosition:Ljava/lang/String;

    .line 377
    return-void
.end method


# virtual methods
.method public getGroupNumber()I
    .locals 1

    .line 380
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;->groupNumber:I

    return v0
.end method

.method public getLightPosition()I
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;->lightPosition:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setGroupNumber(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;
    .locals 0
    .param p1, "groupNumber"    # I

    .line 384
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;->groupNumber:I

    .line 385
    return-object p0
.end method

.method public setLightPosition(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;
    .locals 0
    .param p1, "lightPosition"    # Ljava/lang/String;

    .line 393
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;->lightPosition:Ljava/lang/String;

    .line 394
    return-object p0
.end method
