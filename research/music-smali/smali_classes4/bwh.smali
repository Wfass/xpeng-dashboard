.class public Lbwh;
.super Ljava/lang/Object;
.source "ControlReason.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lbwh;
    .locals 2

    .line 37
    new-instance v0, Lbwh;

    invoke-direct {v0}, Lbwh;-><init>()V

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Lbwh;->a(I)V

    .line 41
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "reason"

    .line 42
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lbwh;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 64
    iput p1, p0, Lbwh;->a:I

    return-void
.end method
