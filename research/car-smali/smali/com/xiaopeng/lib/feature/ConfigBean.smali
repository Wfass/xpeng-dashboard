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
    .param p1, "builder"    # Lcom/xiaopeng/lib/feature/ConfigBean$Builder;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget v0, p1, Lcom/xiaopeng/lib/feature/ConfigBean$Builder;->type:I

    iput v0, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->type:I

    .line 17
    iget-object v0, p1, Lcom/xiaopeng/lib/feature/ConfigBean$Builder;->carFeature:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcom/xiaopeng/lib/feature/ConfigBean$Builder;->result:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->result:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->type:I

    .line 25
    const-string v1, "carFeature"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    .line 26
    const-string v1, "result"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->result:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 30
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 34
    instance-of v0, p1, Lcom/xiaopeng/lib/feature/ConfigBean;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/lib/feature/ConfigBean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/feature/ConfigBean;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
