.class public final Lcom/blankj/utilcode/util/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# static fields
.field private static final TYPE_BOOLEAN:B = 0x0t

.field private static final TYPE_DOUBLE:B = 0x3t

.field private static final TYPE_INT:B = 0x1t

.field private static final TYPE_JSON_ARRAY:B = 0x6t

.field private static final TYPE_JSON_OBJECT:B = 0x5t

.field private static final TYPE_LONG:B = 0x2t

.field private static final TYPE_STRING:B = 0x4t


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static formatJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;

    .line 214
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/JsonUtils;->formatJson(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatJson(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "indentSpaces"    # I

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 220
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 221
    .local v2, "c":C
    const/16 v3, 0x7b

    if-ne v2, v3, :cond_0

    .line 222
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 223
    :cond_0
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1

    .line 224
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 225
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    .line 226
    return-object p0

    .line 219
    .end local v2    # "c":C
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_3
    goto :goto_1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 232
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-object p0
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 48
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 37
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 108
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getDouble(Ljava/lang/String;Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDouble(Ljava/lang/String;Ljava/lang/String;D)D
    .locals 2
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 114
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .line 97
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDouble(Lorg/json/JSONObject;Ljava/lang/String;D)D
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 103
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 64
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getJSONArray(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lorg/json/JSONArray;

    .line 160
    const/4 v0, 0x6

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public static getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lorg/json/JSONArray;

    .line 154
    const/4 v0, 0x6

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public static getJSONObject(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lorg/json/JSONObject;

    .line 148
    const/4 v0, 0x5

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lorg/json/JSONObject;

    .line 142
    const/4 v0, 0x5

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 86
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 92
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .line 75
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 81
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 130
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 136
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .line 119
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 125
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getValueByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "type"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;B)TT;"
        }
    .end annotation

    .line 201
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 209
    return-object p2

    .line 203
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    return-object p2
.end method

.method private static getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "type"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "TT;B)TT;"
        }
    .end annotation

    .line 167
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 172
    :cond_0
    if-nez p3, :cond_1

    .line 173
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, "ret":Ljava/lang/Object;
    :goto_0
    goto :goto_1

    .line 191
    .end local v0    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 174
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 175
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 177
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_3
    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    .line 179
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_4
    const/4 v0, 0x4

    if-ne p3, v0, :cond_5

    .line 181
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_5
    const/4 v0, 0x5

    if-ne p3, v0, :cond_6

    .line 183
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_6
    const/4 v0, 0x6

    if-ne p3, v0, :cond_7

    .line 185
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .restart local v0    # "ret":Ljava/lang/Object;
    :goto_1
    nop

    .line 190
    return-object v0

    .line 191
    .end local v0    # "ret":Ljava/lang/Object;
    :goto_2
    nop

    .line 192
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 193
    return-object p2

    .line 187
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_7
    return-object p2

    .line 168
    :cond_8
    :goto_3
    return-object p2
.end method
