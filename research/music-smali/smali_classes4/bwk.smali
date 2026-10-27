.class public Lbwk;
.super Ljava/lang/Object;
.source "DialogActiveReason.java"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lbwk;->b:I

    .line 22
    iput p1, p0, Lbwk;->a:I

    .line 23
    iput p2, p0, Lbwk;->b:I

    .line 24
    iput-object p3, p0, Lbwk;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lbwk;
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 38
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "soundArea"

    .line 39
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string p0, "screenId"

    .line 40
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string p0, "type"

    .line 41
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-string p0, ""

    .line 45
    :goto_0
    new-instance v2, Lbwk;

    invoke-direct {v2, v1, v0, p0}, Lbwk;-><init>(IILjava/lang/String;)V

    return-object v2
.end method
