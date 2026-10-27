.class Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$SpeechPara;
.super Ljava/lang/Object;
.source "AmbientLightCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeechPara"
.end annotation


# instance fields
.field enable:Z

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V
    .locals 0

    .line 1550
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$SpeechPara;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1551
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$SpeechPara;->enable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$1;

    .line 1550
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$SpeechPara;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V

    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 1

    .line 1554
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$SpeechPara;->enable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 1558
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$SpeechPara;->enable:Z

    .line 1559
    return-void
.end method
