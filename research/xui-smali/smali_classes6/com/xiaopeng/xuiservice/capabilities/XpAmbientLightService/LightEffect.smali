.class public Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;
.super Ljava/lang/Object;
.source "LightEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;,
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_init;
    }
.end annotation


# instance fields
.field private effect_init:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_init;",
            ">;"
        }
    .end annotation
.end field

.field private effect_name:Ljava/lang/String;

.field private effect_name_num:I

.field private effect_name_show:Ljava/lang/String;

.field private effect_period:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;",
            ">;"
        }
    .end annotation
.end field

.field private effect_type:Ljava/lang/String;

.field private effect_type_num:I

.field private effect_type_show:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEffect_init()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_init;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->effect_init:Ljava/util/List;

    return-object v0
.end method

.method public getEffect_name()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->effect_name:Ljava/lang/String;

    return-object v0
.end method

.method public getEffect_name_num()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->effect_name_num:I

    return v0
.end method

.method public getEffect_name_show()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->effect_name_show:Ljava/lang/String;

    return-object v0
.end method

.method public getEffect_period()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->effect_period:Ljava/util/List;

    return-object v0
.end method

.method public getEffect_type()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->effect_type:Ljava/lang/String;

    return-object v0
.end method

.method public getEffect_type_num()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->effect_type_num:I

    return v0
.end method

.method public getEffect_type_show()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->effect_type_show:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setEffect_init(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_init;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "effect_init":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_init;>;"
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->effect_init:Ljava/util/List;

    .line 76
    return-void
.end method

.method public setEffect_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "effect_name"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->effect_name:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setEffect_name_num(I)V
    .locals 0
    .param p1, "effect_name_num"    # I

    .line 67
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->effect_name_num:I

    .line 68
    return-void
.end method

.method public setEffect_name_show(Ljava/lang/String;)V
    .locals 0
    .param p1, "effect_name_show"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->effect_name_show:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setEffect_period(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p1, "effect_period":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;>;"
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->effect_period:Ljava/util/List;

    .line 84
    return-void
.end method

.method public setEffect_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "effect_type"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->effect_type:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setEffect_type_num(I)V
    .locals 0
    .param p1, "effect_type_num"    # I

    .line 43
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->effect_type_num:I

    .line 44
    return-void
.end method

.method public setEffect_type_show(Ljava/lang/String;)V
    .locals 0
    .param p1, "effect_type_show"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->effect_type_show:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->version:Ljava/lang/String;

    .line 20
    return-void
.end method
