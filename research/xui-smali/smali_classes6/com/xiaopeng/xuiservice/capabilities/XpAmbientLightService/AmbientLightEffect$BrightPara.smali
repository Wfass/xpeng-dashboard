.class Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;
.super Ljava/lang/Object;
.source "AmbientLightEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightPara"
.end annotation


# instance fields
.field bright:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    const/16 p1, 0x64

    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;->bright:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$1;

    .line 462
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;)V

    return-void
.end method


# virtual methods
.method public getBright()I
    .locals 1

    .line 466
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;->bright:I

    return v0
.end method

.method public setBright(I)V
    .locals 0
    .param p1, "bright"    # I

    .line 470
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;->bright:I

    .line 471
    return-void
.end method
