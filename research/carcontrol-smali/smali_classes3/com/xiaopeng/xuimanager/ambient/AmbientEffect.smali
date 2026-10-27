.class public Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;
.super Ljava/lang/Object;
.source "AmbientEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;
    }
.end annotation


# instance fields
.field private final count:I

.field private final displayId:I

.field private final hasFlowing:Z

.field private final hasHue:Z

.field private final hasRhythm:Z

.field private final name:Ljava/lang/String;

.field private final packets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/ambient/AmbientData;",
            ">;"
        }
    .end annotation
.end field

.field private final priority:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIIZZZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZZZ",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/ambient/AmbientData;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;->name:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;->count:I

    .line 28
    iput p3, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;->priority:I

    .line 29
    iput p4, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;->displayId:I

    .line 30
    iput-boolean p5, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;->hasRhythm:Z

    .line 31
    iput-boolean p6, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;->hasHue:Z

    .line 32
    iput-boolean p7, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;->hasFlowing:Z

    .line 33
    iput-object p8, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;->packets:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIZZZLjava/util/List;Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$1;)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p8}, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;-><init>(Ljava/lang/String;IIIZZZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .line 142
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 145
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 147
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;->packets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuimanager/ambient/AmbientData;

    .line 148
    invoke-virtual {v3}, Lcom/xiaopeng/xuimanager/ambient/AmbientData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "name"

    .line 151
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "count"

    .line 152
    iget v3, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;->count:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "priority"

    .line 153
    iget v3, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;->priority:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "hasRhythm"

    .line 154
    iget-boolean v3, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;->hasRhythm:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "hasHue"

    .line 155
    iget-boolean v3, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;->hasHue:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "hasFlowing"

    .line 156
    iget-boolean v3, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;->hasFlowing:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "packets"

    .line 157
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 159
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

    .line 162
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
