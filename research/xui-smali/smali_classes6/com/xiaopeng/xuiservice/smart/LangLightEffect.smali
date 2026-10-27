.class public Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
.super Ljava/lang/Object;
.source "LangLightEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;,
        Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;
    }
.end annotation


# instance fields
.field private effect_id:I

.field private effect_name:Ljava/lang/String;

.field private effect_type:Ljava/lang/String;

.field private front_effect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

.field private notResetFlag:I

.field private rear_effect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

.field private special_duration:I

.field private special_mode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Front_Effect(Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;)V
    .locals 0
    .param p1, "front_effect"    # Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->front_effect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    .line 75
    return-void
.end method

.method public getEffect_id()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->effect_id:I

    return v0
.end method

.method public getEffect_name()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->effect_name:Ljava/lang/String;

    return-object v0
.end method

.method public getEffect_type()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->effect_type:Ljava/lang/String;

    return-object v0
.end method

.method public getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->front_effect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    return-object v0
.end method

.method public getNotResetFlag()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->notResetFlag:I

    return v0
.end method

.method public getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->rear_effect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    return-object v0
.end method

.method public getSpecial_duration()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->special_duration:I

    return v0
.end method

.method public getSpecial_mode()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->special_mode:I

    return v0
.end method

.method public setEffect_id(I)V
    .locals 0
    .param p1, "effect_id"    # I

    .line 46
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->effect_id:I

    .line 47
    return-void
.end method

.method public setEffect_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "effect_name"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->effect_name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setEffect_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "effect_type"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->effect_type:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setNotResetFlag(I)V
    .locals 0
    .param p1, "notResetFlag"    # I

    .line 70
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->notResetFlag:I

    .line 71
    return-void
.end method

.method public setRear_Effect(Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;)V
    .locals 0
    .param p1, "rear_effect"    # Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->rear_effect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    .line 87
    return-void
.end method

.method public setSpecial_duration(I)V
    .locals 0
    .param p1, "special_duration"    # I

    .line 62
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->special_duration:I

    .line 63
    return-void
.end method

.method public setSpecial_mode(I)V
    .locals 0
    .param p1, "special_mode"    # I

    .line 54
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->special_mode:I

    .line 55
    return-void
.end method
