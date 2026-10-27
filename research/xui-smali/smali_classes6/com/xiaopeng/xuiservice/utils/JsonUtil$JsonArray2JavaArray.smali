.class Lcom/xiaopeng/xuiservice/utils/JsonUtil$JsonArray2JavaArray;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/JsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JsonArray2JavaArray"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static BooleanArray(Lorg/json/JSONArray;)[Ljava/lang/Boolean;
    .locals 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 141
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/Boolean;

    .line 142
    .local v1, "array":[Ljava/lang/Boolean;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 143
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method static DoubleArray(Lorg/json/JSONArray;)[Ljava/lang/Double;
    .locals 5
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 123
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/Double;

    .line 124
    .local v1, "array":[Ljava/lang/Double;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 125
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method static IntegerArray(Lorg/json/JSONArray;)[Ljava/lang/Integer;
    .locals 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 87
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/Integer;

    .line 88
    .local v1, "array":[Ljava/lang/Integer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 89
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method static LongArray(Lorg/json/JSONArray;)[Ljava/lang/Long;
    .locals 5
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 105
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/Long;

    .line 106
    .local v1, "array":[Ljava/lang/Long;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 107
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method static booleanArray(Lorg/json/JSONArray;)[Z
    .locals 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 132
    .local v0, "length":I
    new-array v1, v0, [Z

    .line 133
    .local v1, "array":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 134
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method static doubleArray(Lorg/json/JSONArray;)[D
    .locals 5
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 114
    .local v0, "length":I
    new-array v1, v0, [D

    .line 115
    .local v1, "array":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 116
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method static intArray(Lorg/json/JSONArray;)[I
    .locals 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 78
    .local v0, "length":I
    new-array v1, v0, [I

    .line 79
    .local v1, "array":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 80
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    aput v3, v1, v2

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method static longArray(Lorg/json/JSONArray;)[J
    .locals 5
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 96
    .local v0, "length":I
    new-array v1, v0, [J

    .line 97
    .local v1, "array":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 98
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method static stringArray(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 69
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/String;

    .line 70
    .local v1, "array":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 71
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method
