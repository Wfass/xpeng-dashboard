.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;
.super Ljava/lang/Object;
.source "PoiLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->latitude:D

    .line 31
    iput-wide p3, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->longitude:D

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->latitude:D

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->longitude:D

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;
    .locals 8

    const-string v0, "longitude"

    const-string v1, "latitude"

    .line 35
    new-instance v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    invoke-direct {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;-><init>()V

    .line 37
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    const-wide/16 v4, 0x0

    if-eqz p0, :cond_1

    .line 39
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iput-wide v6, v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->latitude:D

    goto :goto_0

    .line 43
    :cond_0
    iput-wide v4, v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->latitude:D

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 47
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 49
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->longitude:D

    goto :goto_1

    .line 51
    :cond_2
    iput-wide v4, v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->longitude:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->longitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0

    .line 81
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->longitude:D

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 94
    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->latitude:D

    const-string v3, "latitude"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 95
    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->longitude:D

    const-string v3, "longitude"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PoiLocation{latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 73
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
