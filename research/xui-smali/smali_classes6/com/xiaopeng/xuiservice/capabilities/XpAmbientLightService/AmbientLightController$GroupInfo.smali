.class public Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;
.super Ljava/lang/Object;
.source "AmbientLightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;
    }
.end annotation


# instance fields
.field LIN1Format:Ljava/lang/String;

.field LIN1LightAmount:I

.field groupData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const-string v0, "0x0"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;->LIN1Format:Ljava/lang/String;

    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;->LIN1LightAmount:I

    .line 342
    return-void
.end method


# virtual methods
.method public getGroupData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;->groupData:Ljava/util/List;

    return-object v0
.end method

.method public getLIN1Format()I
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;->LIN1Format:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLIN1LightAmount()I
    .locals 1

    .line 354
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;->LIN1LightAmount:I

    return v0
.end method

.method public setGroupData(Ljava/util/List;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;",
            ">;)",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;"
        }
    .end annotation

    .line 363
    .local p1, "groupData":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;>;"
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;->groupData:Ljava/util/List;

    .line 364
    return-object p0
.end method

.method public setLIN1Format(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;
    .locals 0
    .param p1, "LIN1Format"    # Ljava/lang/String;

    .line 349
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;->LIN1Format:Ljava/lang/String;

    .line 350
    return-object p0
.end method

.method public setLIN1LightAmount(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;
    .locals 0
    .param p1, "LIN1LightAmount"    # I

    .line 358
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;->LIN1LightAmount:I

    .line 359
    return-object p0
.end method
