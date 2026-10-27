.class public Lbvx;
.super Ljava/lang/Object;
.source "SpeechResult.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lbvx;->c:I

    .line 18
    iput-object p1, p0, Lbvx;->a:Ljava/lang/String;

    .line 19
    invoke-direct {p0, p2}, Lbvx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lbvx;->b:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    return-object p1

    .line 44
    :cond_0
    :try_start_0
    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lbvx;->c:I

    .line 46
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 47
    :cond_1
    instance-of v0, p1, [F

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 48
    iput v0, p0, Lbvx;->c:I

    .line 49
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "event"

    .line 26
    iget-object v2, p0, Lbvx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "result"

    .line 27
    iget-object v2, p0, Lbvx;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    iget v1, p0, Lbvx;->c:I

    if-lez v1, :cond_0

    const-string v1, "classType"

    .line 29
    iget v2, p0, Lbvx;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 32
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 36
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
