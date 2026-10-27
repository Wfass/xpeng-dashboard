.class public Lbwl;
.super Ljava/lang/Object;
.source "DialogEndReason.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lbwl;->a:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lbwl;->b:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lbwl;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lbwl;
    .locals 4

    const-string v0, ""

    const-string v1, "normal"

    .line 46
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "reason"

    .line 48
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "event"

    .line 49
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "sessionId"

    .line 50
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object p0, v0

    .line 54
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 56
    :goto_1
    new-instance v2, Lbwl;

    invoke-direct {v2, v1, p0, v0}, Lbwl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
