.class Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;
.super Ljava/lang/Object;
.source "AmbientLightEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmbilentPara"
.end annotation


# instance fields
.field bright:B

.field color:B

.field fade:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$1;

    .line 408
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;)V

    return-void
.end method


# virtual methods
.method public getBright()B
    .locals 1

    .line 422
    iget-byte v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;->bright:B

    return v0
.end method

.method public getColor()B
    .locals 1

    .line 414
    iget-byte v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;->color:B

    return v0
.end method

.method public getFade()I
    .locals 1

    .line 430
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;->fade:I

    return v0
.end method

.method public setBright(B)V
    .locals 0
    .param p1, "bright"    # B

    .line 426
    iput-byte p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;->bright:B

    .line 427
    return-void
.end method

.method public setColor(B)V
    .locals 0
    .param p1, "color"    # B

    .line 418
    iput-byte p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;->color:B

    .line 419
    return-void
.end method

.method public setFade(I)V
    .locals 0
    .param p1, "fade"    # I

    .line 434
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;->fade:I

    .line 435
    return-void
.end method
