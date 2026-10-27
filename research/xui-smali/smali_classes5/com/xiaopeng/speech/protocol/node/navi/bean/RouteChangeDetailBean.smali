.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;
.super Ljava/lang/Object;
.source "RouteChangeDetailBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# static fields
.field protected static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private day:I

.field private hour:I

.field private index:I

.field private minute:I

.field private optimize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->index:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->optimize:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->day:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->hour:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->minute:I

    .line 89
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;
    .locals 3
    .param p0, "fromJson"    # Ljava/lang/String;

    .line 59
    :try_start_0
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;-><init>()V

    .line 60
    .local v0, "bean":Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "index"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const-string v2, "index"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->index:I

    .line 64
    :cond_0
    const-string v2, "optimize"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    const-string v2, "optimize"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->optimize:I

    .line 67
    :cond_1
    const-string v2, "day"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    const-string v2, "day"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->day:I

    .line 70
    :cond_2
    const-string v2, "hour"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    const-string v2, "hour"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->hour:I

    .line 73
    :cond_3
    const-string v2, "minute"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 74
    const-string v2, "minute"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->minute:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_4
    return-object v0

    .line 77
    .end local v0    # "bean":Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 80
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getDay()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->day:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->hour:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->index:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->minute:I

    return v0
.end method

.method public getOptimize()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->optimize:I

    return v0
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .line 158
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->day:I

    .line 159
    return-void
.end method

.method public setHour(I)V
    .locals 0
    .param p1, "hour"    # I

    .line 166
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->hour:I

    .line 167
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 182
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->index:I

    .line 183
    return-void
.end method

.method public setMinute(I)V
    .locals 0
    .param p1, "minute"    # I

    .line 174
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->minute:I

    .line 175
    return-void
.end method

.method public setOptimize(I)V
    .locals 0
    .param p1, "code"    # I

    .line 150
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->optimize:I

    .line 151
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 99
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "index"

    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->getIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    const-string v1, "optimize"

    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->getOptimize()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string v1, "day"

    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->getDay()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string v1, "hour"

    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->getHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string v1, "minute"

    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->getMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RouteChangeDetailBean{index=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", optimize=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->optimize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", day=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->day:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hour=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->hour:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", minute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->minute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 126
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->optimize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->day:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->minute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return-void
.end method
