.class final Lcom/xiaopeng/lib/feature/ConfigBean;
.super Ljava/lang/Object;
.source "ConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/feature/ConfigBean$Builder;
    }
.end annotation


# instance fields
.field public carFeature:Ljava/lang/String;

.field public result:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/feature/ConfigBean$Builder;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget v0, p1, Lcom/xiaopeng/lib/feature/ConfigBean$Builder;->type:I

    iput v0, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->type:I

    .line 17
    iget-object v0, p1, Lcom/xiaopeng/lib/feature/ConfigBean$Builder;->carFeature:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    .line 18
    iget-object p1, p1, Lcom/xiaopeng/lib/feature/ConfigBean$Builder;->result:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->result:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->type:I

    const-string p1, "carFeature"

    .line 25
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    const-string p1, "result"

    .line 26
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->result:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 34
    instance-of v0, p1, Lcom/xiaopeng/lib/feature/ConfigBean;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/lib/feature/ConfigBean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
