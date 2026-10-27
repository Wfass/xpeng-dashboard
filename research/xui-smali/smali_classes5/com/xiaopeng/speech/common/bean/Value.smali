.class public Lcom/xiaopeng/speech/common/bean/Value;
.super Ljava/lang/Object;
.source "Value.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final BOOLEAN_TYPE:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/speech/common/bean/Value;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOUBLE_TYPE:I = 0x2

.field private static final FLOAT_ARRAY_TYPE:I = 0x7

.field private static final INTEGER_ARRAY_TYPE:I = 0x6

.field private static final INTEGER_TYPE:I = 0x1

.field public static final INTERRUPT:Lcom/xiaopeng/speech/common/bean/Value;

.field private static final JSON_TYPE:I = 0x8

.field private static final STRING_TYPE:I = 0x4

.field public static final VOID:Lcom/xiaopeng/speech/common/bean/Value;


# instance fields
.field private classType:I

.field private mBoolean:Ljava/lang/Boolean;

.field private mDouble:Ljava/lang/Double;

.field private mFloatArray:[F

.field private mInteger:Ljava/lang/Integer;

.field private mIntegerArray:[I

.field private mJSONObject:Lcom/alibaba/fastjson/JSONObject;

.field private mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/xiaopeng/speech/common/bean/Value;

    invoke-direct {v0}, Lcom/xiaopeng/speech/common/bean/Value;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/common/bean/Value;->VOID:Lcom/xiaopeng/speech/common/bean/Value;

    .line 15
    new-instance v0, Lcom/xiaopeng/speech/common/bean/Value;

    invoke-direct {v0}, Lcom/xiaopeng/speech/common/bean/Value;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/common/bean/Value;->INTERRUPT:Lcom/xiaopeng/speech/common/bean/Value;

    .line 90
    new-instance v0, Lcom/xiaopeng/speech/common/bean/Value$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/common/bean/Value$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/common/bean/Value;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 73
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mDouble:Ljava/lang/Double;

    goto :goto_1

    .line 75
    :cond_0
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mString:Ljava/lang/String;

    goto :goto_1

    .line 77
    :cond_1
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mBoolean:Ljava/lang/Boolean;

    goto :goto_1

    .line 79
    :cond_3
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mIntegerArray:[I

    goto :goto_1

    .line 81
    :cond_4
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mFloatArray:[F

    goto :goto_1

    .line 83
    :cond_5
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    if-ne v0, v2, :cond_6

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mInteger:Ljava/lang/Integer;

    goto :goto_1

    .line 85
    :cond_6
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mJSONObject:Lcom/alibaba/fastjson/JSONObject;

    .line 88
    :cond_7
    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/common/bean/Value;->initValue(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method private initValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 42
    instance-of v0, p1, Ljava/lang/Double;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 43
    iput v1, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 44
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mDouble:Ljava/lang/Double;

    goto :goto_0

    .line 45
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 47
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mString:Ljava/lang/String;

    goto :goto_0

    .line 48
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 49
    const/4 v0, 0x5

    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 50
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mBoolean:Ljava/lang/Boolean;

    goto :goto_0

    .line 51
    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_3

    .line 52
    const/4 v0, 0x6

    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 53
    move-object v0, p1

    check-cast v0, [I

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mIntegerArray:[I

    goto :goto_0

    .line 54
    :cond_3
    instance-of v0, p1, [F

    if-eqz v0, :cond_4

    .line 55
    const/4 v0, 0x7

    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 56
    move-object v0, p1

    check-cast v0, [F

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mFloatArray:[F

    goto :goto_0

    .line 57
    :cond_4
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 59
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mInteger:Ljava/lang/Integer;

    goto :goto_0

    .line 60
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 61
    iput v1, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 62
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mDouble:Ljava/lang/Double;

    goto :goto_0

    .line 63
    :cond_6
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_7

    .line 64
    const/16 v0, 0x8

    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 65
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mJSONObject:Lcom/alibaba/fastjson/JSONObject;

    goto :goto_0

    .line 67
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 69
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public getArgs()Ljava/lang/Object;
    .locals 2

    .line 194
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mInteger:Ljava/lang/Integer;

    return-object v0

    .line 196
    :cond_0
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mString:Ljava/lang/String;

    return-object v0

    .line 198
    :cond_1
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mDouble:Ljava/lang/Double;

    return-object v0

    .line 200
    :cond_2
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mBoolean:Ljava/lang/Boolean;

    return-object v0

    .line 202
    :cond_3
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mFloatArray:[F

    return-object v0

    .line 204
    :cond_4
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mIntegerArray:[I

    return-object v0

    .line 206
    :cond_5
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mJSONObject:Lcom/alibaba/fastjson/JSONObject;

    return-object v0

    .line 209
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoolean()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mBoolean:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getClassType()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    return v0
.end method

.method public getDataFromArray(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 165
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mIntegerArray:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mIntegerArray:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mFloatArray:[F

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mFloatArray:[F

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 174
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDouble()D
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloatArray()[F
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mFloatArray:[F

    return-object v0
.end method

.method public getInteger()Ljava/lang/Integer;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mInteger:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIntegerArray()[I
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mIntegerArray:[I

    return-object v0
.end method

.method public getJSONObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mJSONObject:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getNumber()Ljava/lang/Number;
    .locals 2

    .line 152
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mInteger:Ljava/lang/Integer;

    return-object v0

    .line 154
    :cond_0
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mDouble:Ljava/lang/Double;

    return-object v0

    .line 157
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    .line 115
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mString:Ljava/lang/String;

    return-object v0

    .line 117
    :cond_0
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mJSONObject:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mJSONObject:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 120
    :cond_2
    return-object v2
.end method

.method public isArray()Z
    .locals 2

    .line 161
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isBoolean()Z
    .locals 2

    .line 124
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDouble()Z
    .locals 2

    .line 103
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFloatArray()Z
    .locals 2

    .line 178
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInteger()Z
    .locals 2

    .line 132
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isIntegerArray()Z
    .locals 2

    .line 186
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isJSON()Z
    .locals 2

    .line 140
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNumber()Z
    .locals 3

    .line 148
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public isString()Z
    .locals 2

    .line 111
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setBoolean(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .line 233
    const/4 v0, 0x5

    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 234
    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mBoolean:Ljava/lang/Boolean;

    .line 235
    return-void
.end method

.method public setClassType(I)V
    .locals 0
    .param p1, "classType"    # I

    .line 256
    iput p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 257
    return-void
.end method

.method public setDouble(Ljava/lang/Double;)V
    .locals 1
    .param p1, "aDouble"    # Ljava/lang/Double;

    .line 223
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 224
    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mDouble:Ljava/lang/Double;

    .line 225
    return-void
.end method

.method public setFloatArray([F)V
    .locals 1
    .param p1, "floatArray"    # [F

    .line 218
    const/4 v0, 0x7

    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 219
    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mFloatArray:[F

    .line 220
    return-void
.end method

.method public setInteger(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "integer"    # Ljava/lang/Integer;

    .line 238
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 239
    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mInteger:Ljava/lang/Integer;

    .line 240
    return-void
.end method

.method public setIntegerArray([I)V
    .locals 1
    .param p1, "integerArray"    # [I

    .line 213
    const/4 v0, 0x6

    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 214
    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mIntegerArray:[I

    .line 215
    return-void
.end method

.method public setJSONObject(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 243
    const/16 v0, 0x8

    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 244
    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mJSONObject:Lcom/alibaba/fastjson/JSONObject;

    .line 245
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 228
    const/4 v0, 0x4

    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 229
    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mString:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 248
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/common/bean/Value;->initValue(Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public toObjAddress()Ljava/lang/String;
    .locals 2

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value{mInteger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mInteger:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDouble="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mDouble:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mBoolean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mBoolean:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mJSONObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mJSONObject:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", classType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 266
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 269
    :cond_0
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_1
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mBoolean:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 273
    :cond_2
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mIntegerArray:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 275
    :cond_3
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mFloatArray:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_0

    .line 277
    :cond_4
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mInteger:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 279
    :cond_5
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mJSONObject:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    :cond_6
    :goto_0
    return-void
.end method
