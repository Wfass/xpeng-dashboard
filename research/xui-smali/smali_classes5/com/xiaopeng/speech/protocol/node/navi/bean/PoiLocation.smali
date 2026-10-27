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

    .line 27
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->latitude:D

    .line 31
    iput-wide p3, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->longitude:D

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

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

    .line 63
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;
    .locals 7
    .param p0, "fromJson"    # Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;-><init>()V

    .line 37
    .local v0, "poiLocation":Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    .line 39
    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 40
    .local v2, "lat":Ljava/lang/Double;
    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iput-wide v5, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->latitude:D

    goto :goto_0

    .line 43
    :cond_0
    iput-wide v3, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->latitude:D

    .line 46
    .end local v2    # "lat":Ljava/lang/Double;
    :cond_1
    :goto_0
    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 48
    .local v2, "lon":Ljava/lang/Double;
    if-eqz v2, :cond_2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iput-wide v3, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->longitude:D

    goto :goto_1

    .line 51
    :cond_2
    iput-wide v3, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->longitude:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "lon":Ljava/lang/Double;
    :cond_3
    :goto_1
    goto :goto_2

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 67
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
    .param p1, "latitude"    # D

    .line 81
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->latitude:D

    .line 82
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .param p1, "longitude"    # D

    .line 89
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->longitude:D

    .line 90
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
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "latitude"

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->latitude:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 95
    const-string v1, "longitude"

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->longitude:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 96
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PoiLocation{latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

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

    .line 72
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 73
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 74
    return-void
.end method
