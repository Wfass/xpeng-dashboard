.class public Lcom/xiaopeng/vui/commons/model/AnimationObj;
.super Ljava/lang/Object;
.source "AnimationObj.java"


# instance fields
.field private effect:Ljava/lang/String;

.field private effectOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/xiaopeng/vui/commons/model/AnimationObj;->effectOnly:Z

    const-string/jumbo v0, "waterRipple"

    .line 10
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/AnimationObj;->effect:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEffect()Lcom/xiaopeng/vui/commons/EffectType;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/AnimationObj;->effect:Ljava/lang/String;

    const-string/jumbo v1, "waterRipple"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lcom/xiaopeng/vui/commons/EffectType;->WATERRIPPLE:Lcom/xiaopeng/vui/commons/EffectType;

    return-object v0

    .line 24
    :cond_0
    sget-object v0, Lcom/xiaopeng/vui/commons/EffectType;->WATERRIPPLE:Lcom/xiaopeng/vui/commons/EffectType;

    return-object v0
.end method

.method public isEffectOnly()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/xiaopeng/vui/commons/model/AnimationObj;->effectOnly:Z

    return v0
.end method

.method public setEffect(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/AnimationObj;->effect:Ljava/lang/String;

    return-void
.end method

.method public setEffectOnly(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/xiaopeng/vui/commons/model/AnimationObj;->effectOnly:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimationObj{effectOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/vui/commons/model/AnimationObj;->effectOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", effect=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/vui/commons/model/AnimationObj;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
