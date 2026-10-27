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

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

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

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mDouble:Ljava/lang/Double;

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mString:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mBoolean:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mIntegerArray:[I

    goto :goto_1

    :cond_4
    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mFloatArray:[F

    goto :goto_1

    :cond_5
    if-ne v0, v2, :cond_6

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mInteger:Ljava/lang/Integer;

    goto :goto_1

    :cond_6
    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mJSONObject:Lcom/alibaba/fastjson/JSONObject;

    :cond_7
    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/common/bean/Value;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    .line 42
    instance-of v0, p1, Ljava/lang/Double;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 43
    iput v1, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 44
    check-cast p1, Ljava/lang/Double;

    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mDouble:Ljava/lang/Double;

    goto :goto_0

    .line 45
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 46
    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 47
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mString:Ljava/lang/String;

    goto :goto_0

    .line 48
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    .line 49
    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 50
    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mBoolean:Ljava/lang/Boolean;

    goto :goto_0

    .line 51
    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    .line 52
    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 53
    check-cast p1, [I

    check-cast p1, [I

    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mIntegerArray:[I

    goto :goto_0

    .line 54
    :cond_3
    instance-of v0, p1, [F

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    .line 55
    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 56
    check-cast p1, [F

    check-cast p1, [F

    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mFloatArray:[F

    goto :goto_0

    .line 57
    :cond_4
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 58
    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 59
    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mInteger:Ljava/lang/Integer;

    goto :goto_0

    .line 60
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 61
    iput v1, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 62
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mDouble:Ljava/lang/Double;

    goto :goto_0

    .line 63
    :cond_6
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 64
    iput v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    .line 65
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->mJSONObject:Lcom/alibaba/fastjson/JSONObject;

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mBoolean:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/Value;->mInteger:Ljava/lang/Integer;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
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

    .line 266
    iget p2, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget p2, p0, Lcom/xiaopeng/speech/common/bean/Value;->classType:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 268
    iget-object p2, p0, Lcom/xiaopeng/speech/common/bean/Value;->mDouble:Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 270
    iget-object p2, p0, Lcom/xiaopeng/speech/common/bean/Value;->mString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 272
    iget-object p2, p0, Lcom/xiaopeng/speech/common/bean/Value;->mBoolean:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-ne p2, v0, :cond_3

    .line 274
    iget-object p2, p0, Lcom/xiaopeng/speech/common/bean/Value;->mIntegerArray:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    if-ne p2, v0, :cond_4

    .line 276
    iget-object p2, p0, Lcom/xiaopeng/speech/common/bean/Value;->mFloatArray:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 278
    iget-object p2, p0, Lcom/xiaopeng/speech/common/bean/Value;->mInteger:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x8

    if-ne p2, v0, :cond_6

    .line 280
    iget-object p2, p0, Lcom/xiaopeng/speech/common/bean/Value;->mJSONObject:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method
