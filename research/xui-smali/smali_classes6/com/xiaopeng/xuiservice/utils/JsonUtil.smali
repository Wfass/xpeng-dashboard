.class public Lcom/xiaopeng/xuiservice/utils/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/utils/JsonUtil$JsonArray2Pair;,
        Lcom/xiaopeng/xuiservice/utils/JsonUtil$JsonArray2JavaArray;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jsonArray2BooleanArray(Lorg/json/JSONArray;)[Ljava/lang/Boolean;
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/JsonUtil$JsonArray2JavaArray;->BooleanArray(Lorg/json/JSONArray;)[Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static jsonArray2BooleanPair(Lorg/json/JSONArray;)Landroid/util/Pair;
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 63
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/JsonUtil$JsonArray2Pair;->booleanPair(Lorg/json/JSONArray;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static jsonArray2DoubleArray(Lorg/json/JSONArray;)[Ljava/lang/Double;
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 35
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/JsonUtil$JsonArray2JavaArray;->DoubleArray(Lorg/json/JSONArray;)[Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static jsonArray2DoublePair(Lorg/json/JSONArray;)Landroid/util/Pair;
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/JsonUtil$JsonArray2Pair;->doublePair(Lorg/json/JSONArray;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static jsonArray2IntegerArray(Lorg/json/JSONArray;)[Ljava/lang/Integer;
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 19
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/JsonUtil$JsonArray2JavaArray;->IntegerArray(Lorg/json/JSONArray;)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static jsonArray2IntegerPair(Lorg/json/JSONArray;)Landroid/util/Pair;
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 51
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/JsonUtil$JsonArray2Pair;->integerPair(Lorg/json/JSONArray;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static jsonArray2LongArray(Lorg/json/JSONArray;)[Ljava/lang/Long;
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 27
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/JsonUtil$JsonArray2JavaArray;->LongArray(Lorg/json/JSONArray;)[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static jsonArray2LongPair(Lorg/json/JSONArray;)Landroid/util/Pair;
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/JsonUtil$JsonArray2Pair;->longPair(Lorg/json/JSONArray;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static jsonArray2StringArray(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 11
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/JsonUtil$JsonArray2JavaArray;->stringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static jsonArray2StringPair(Lorg/json/JSONArray;)Landroid/util/Pair;
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/JsonUtil$JsonArray2Pair;->stringPair(Lorg/json/JSONArray;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static jsonArray2booleanArray(Lorg/json/JSONArray;)[Z
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 39
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/JsonUtil$JsonArray2JavaArray;->booleanArray(Lorg/json/JSONArray;)[Z

    move-result-object v0

    return-object v0
.end method

.method public static jsonArray2doubleArray(Lorg/json/JSONArray;)[D
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 31
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/JsonUtil$JsonArray2JavaArray;->doubleArray(Lorg/json/JSONArray;)[D

    move-result-object v0

    return-object v0
.end method

.method public static jsonArray2intArray(Lorg/json/JSONArray;)[I
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 15
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/JsonUtil$JsonArray2JavaArray;->intArray(Lorg/json/JSONArray;)[I

    move-result-object v0

    return-object v0
.end method

.method public static jsonArray2longArray(Lorg/json/JSONArray;)[J
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 23
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/JsonUtil$JsonArray2JavaArray;->longArray(Lorg/json/JSONArray;)[J

    move-result-object v0

    return-object v0
.end method
