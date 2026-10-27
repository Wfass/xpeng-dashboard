.class Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$SpeechPara;
.super Ljava/lang/Object;
.source "AmbientLightEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeechPara"
.end annotation


# instance fields
.field enable:Z

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$SpeechPara;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$SpeechPara;->enable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$1;

    .line 450
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$SpeechPara;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;)V

    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$SpeechPara;->enable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 458
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$SpeechPara;->enable:Z

    .line 459
    return-void
.end method
