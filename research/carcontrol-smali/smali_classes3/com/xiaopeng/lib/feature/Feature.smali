.class final Lcom/xiaopeng/lib/feature/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/feature/Feature$Meta;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XpFeatureImpl"


# instance fields
.field mKey:Ljava/lang/String;

.field final mMetal:Lcom/xiaopeng/lib/feature/Feature$Meta;

.field mValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/xiaopeng/lib/feature/Feature$Meta;

    invoke-direct {v0}, Lcom/xiaopeng/lib/feature/Feature$Meta;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/Feature;->mMetal:Lcom/xiaopeng/lib/feature/Feature$Meta;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/lib/feature/Feature;->mKey:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/xiaopeng/lib/feature/Feature$Meta;

    invoke-direct {v0}, Lcom/xiaopeng/lib/feature/Feature$Meta;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/Feature;->mMetal:Lcom/xiaopeng/lib/feature/Feature$Meta;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/lib/feature/Feature;->mKey:Ljava/lang/String;

    .line 34
    iput-object p2, v0, Lcom/xiaopeng/lib/feature/Feature$Meta;->name:Ljava/lang/String;

    .line 35
    iput p3, v0, Lcom/xiaopeng/lib/feature/Feature$Meta;->type:I

    .line 36
    iput-object p4, v0, Lcom/xiaopeng/lib/feature/Feature$Meta;->desc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/Feature;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method getMetal()Lcom/xiaopeng/lib/feature/Feature$Meta;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/Feature;->mMetal:Lcom/xiaopeng/lib/feature/Feature$Meta;

    return-object v0
.end method

.method getType()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/Feature;->mMetal:Lcom/xiaopeng/lib/feature/Feature$Meta;

    iget v0, v0, Lcom/xiaopeng/lib/feature/Feature$Meta;->type:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/Feature;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/xiaopeng/lib/feature/Feature;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/lib/feature/Feature;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method setMetal(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/Feature;->mMetal:Lcom/xiaopeng/lib/feature/Feature$Meta;

    iput-object p1, v0, Lcom/xiaopeng/lib/feature/Feature$Meta;->name:Ljava/lang/String;

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/lib/feature/Feature;->mMetal:Lcom/xiaopeng/lib/feature/Feature$Meta;

    iput p2, p1, Lcom/xiaopeng/lib/feature/Feature$Meta;->type:I

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/lib/feature/Feature;->mMetal:Lcom/xiaopeng/lib/feature/Feature$Meta;

    iput-object p3, p1, Lcom/xiaopeng/lib/feature/Feature$Meta;->desc:Ljava/lang/String;

    return-void
.end method

.method setMetal(Lorg/json/JSONObject;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "name"

    const-string v2, "known"

    .line 51
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "type"

    .line 52
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "desc"

    .line 53
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p0, v1, v0, p1}, Lcom/xiaopeng/lib/feature/Feature;->setMetal(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public setValue(Ljava/lang/String;)Lcom/xiaopeng/lib/feature/Feature;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/lib/feature/Feature;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feature{mKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/feature/Feature;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMetal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/feature/Feature;->mMetal:Lcom/xiaopeng/lib/feature/Feature$Meta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/feature/Feature;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
