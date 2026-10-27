.class Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BrightPara;
.super Ljava/lang/Object;
.source "AmbientLightCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightPara"
.end annotation


# instance fields
.field bright:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V
    .locals 0

    .line 1562
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BrightPara;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1563
    const/16 p1, 0x64

    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BrightPara;->bright:I

    return-void
.end method


# virtual methods
.method public getBright()I
    .locals 1

    .line 1566
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BrightPara;->bright:I

    return v0
.end method

.method public setBright(I)V
    .locals 0
    .param p1, "bright"    # I

    .line 1570
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BrightPara;->bright:I

    .line 1571
    return-void
.end method
