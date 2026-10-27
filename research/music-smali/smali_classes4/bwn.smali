.class public Lbwn;
.super Ljava/lang/Object;
.source "PrepareReason.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;IZ)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lbwn;->a:I

    .line 27
    iput-object p2, p0, Lbwn;->b:Ljava/lang/String;

    .line 28
    iput p3, p0, Lbwn;->c:I

    .line 29
    iput-boolean p4, p0, Lbwn;->d:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lbwn;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    .line 44
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "screen"

    .line 45
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "type"

    .line 46
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "soundArea"

    .line 47
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "isPreparing"

    .line 48
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move p0, v1

    .line 50
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v2, 0x1

    .line 52
    :goto_1
    new-instance v3, Lbwn;

    invoke-direct {v3, p0, v0, v1, v2}, Lbwn;-><init>(ILjava/lang/String;IZ)V

    return-object v3
.end method
