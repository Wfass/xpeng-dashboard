.class Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;
.super Ljava/lang/Object;
.source "AmbientLightCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupNum"
.end annotation


# instance fields
.field groupNum:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V
    .locals 0

    .line 1538
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$1;

    .line 1538
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V

    return-void
.end method


# virtual methods
.method public getGroupNum()I
    .locals 1

    .line 1542
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;->groupNum:I

    return v0
.end method

.method public setGroupNum(I)V
    .locals 0
    .param p1, "groupNum"    # I

    .line 1546
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;->groupNum:I

    .line 1547
    return-void
.end method
