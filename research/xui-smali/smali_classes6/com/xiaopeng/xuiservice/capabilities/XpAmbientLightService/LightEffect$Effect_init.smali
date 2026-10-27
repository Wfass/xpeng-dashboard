.class public Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_init;
.super Ljava/lang/Object;
.source "LightEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Effect_init"
.end annotation


# instance fields
.field private bright:I

.field private color:I

.field private fade:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    .line 90
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_init;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBright()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_init;->bright:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_init;->color:I

    return v0
.end method

.method public getFade()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_init;->fade:I

    return v0
.end method

.method public setBright(I)V
    .locals 0
    .param p1, "bright"    # I

    .line 105
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_init;->bright:I

    .line 106
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 97
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_init;->color:I

    .line 98
    return-void
.end method

.method public setFade(I)V
    .locals 0
    .param p1, "fade"    # I

    .line 113
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_init;->fade:I

    .line 114
    return-void
.end method
