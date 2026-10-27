.class public Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;
.super Ljava/lang/Object;
.source "LightEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Effect_period"
.end annotation


# instance fields
.field private bright:I

.field private color:I

.field private colorswitch:Z

.field private fade:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBright()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->bright:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->color:I

    return v0
.end method

.method public getColorswitch()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->colorswitch:Z

    return v0
.end method

.method public getFade()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->fade:I

    return v0
.end method

.method public setBright(I)V
    .locals 0
    .param p1, "bright"    # I

    .line 138
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->bright:I

    .line 139
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 130
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->color:I

    .line 131
    return-void
.end method

.method public setColorswitch(Z)V
    .locals 0
    .param p1, "colorswitch"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->colorswitch:Z

    .line 155
    return-void
.end method

.method public setFade(I)V
    .locals 0
    .param p1, "fade"    # I

    .line 146
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->fade:I

    .line 147
    return-void
.end method
