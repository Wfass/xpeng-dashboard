.class public Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;
.super Ljava/lang/Object;
.source "AmbientEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;
    }
.end annotation


# instance fields
.field private final count:I

.field private final displayId:I

.field private final hasHue:Z

.field private final hasRhythm:Z

.field private final name:Ljava/lang/String;

.field private final packets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;IIZZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "count",
            "displayId",
            "hasRhythm",
            "hasHue",
            "packets"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZZ",
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientData;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;->name:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;->count:I

    .line 23
    iput p3, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;->displayId:I

    .line 24
    iput-boolean p4, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;->hasRhythm:Z

    .line 25
    iput-boolean p5, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;->hasHue:Z

    .line 26
    iput-object p6, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;->packets:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIZZLjava/util/List;Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$1;)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p6}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;-><init>(Ljava/lang/String;IIZZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 4

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 34
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;->packets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 36
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientData;

    .line 38
    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "name"

    .line 41
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "count"

    .line 42
    iget v3, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;->count:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "hasRhythm"

    .line 43
    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;->hasRhythm:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "hasHue"

    .line 44
    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;->hasHue:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "packets"

    .line 45
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AmbientEffect serialize exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AmbientEffect"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
