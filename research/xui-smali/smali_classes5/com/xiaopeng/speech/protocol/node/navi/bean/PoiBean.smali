.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
.super Ljava/lang/Object;
.source "PoiBean.java"

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
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;

.field private blCustomName:Ljava/lang/String;

.field private category:I

.field private categoryExtra:Ljava/lang/String;

.field private cityName:Ljava/lang/String;

.field private displayDistance:Ljava/lang/String;

.field private distance:J

.field private dst_name:Ljava/lang/String;

.field private entrLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

.field private exitLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

.field private latitude:D

.field private longitude:D

.field private name:Ljava/lang/String;

.field private naviLat:D

.field private naviLon:D

.field private poiExtra:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

.field private poiId:Ljava/lang/String;

.field private scenario:I

.field private source:Ljava/lang/String;

.field private telephone:Ljava/lang/String;

.field private typeCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 651
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;-><init>(DD)V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->entrLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    .line 102
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;-><init>(DD)V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->exitLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;-><init>(DD)V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->entrLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    .line 102
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;-><init>(DD)V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->exitLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->name:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->dst_name:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiId:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->latitude:D

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->longitude:D

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->address:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->distance:J

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->telephone:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->displayDistance:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->cityName:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->category:I

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->categoryExtra:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLon:D

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLat:D

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->typeCode:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->source:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->scenario:I

    .line 229
    const-class v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->entrLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    .line 230
    const-class v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->exitLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    .line 231
    const-class v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiExtra:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->blCustomName:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    .locals 7
    .param p0, "fromJson"    # Ljava/lang/String;

    .line 129
    :try_start_0
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;-><init>()V

    .line 130
    .local v0, "poiBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "poiId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const-string v2, "poiId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiId:Ljava/lang/String;

    .line 135
    :cond_0
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->name:Ljava/lang/String;

    .line 139
    :cond_1
    const-string v2, "dst_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    const-string v2, "dst_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->dst_name:Ljava/lang/String;

    .line 143
    :cond_2
    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    .line 144
    const-string v2, "latitude"

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->latitude:D

    .line 147
    :cond_3
    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 148
    const-string v2, "longitude"

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->longitude:D

    .line 151
    :cond_4
    const-string v2, "address"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 152
    const-string v2, "address"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->address:Ljava/lang/String;

    .line 154
    :cond_5
    const-string v2, "distance"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 155
    const-string v2, "distance"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->distance:J

    .line 158
    :cond_6
    const-string v2, "displayDistance"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 159
    const-string v2, "displayDistance"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->displayDistance:Ljava/lang/String;

    .line 162
    :cond_7
    const-string v2, "tel"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 163
    const-string v2, "tel"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->telephone:Ljava/lang/String;

    .line 165
    :cond_8
    const-string v2, "category"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 166
    const-string v2, "category"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->category:I

    .line 169
    :cond_9
    const-string v2, "categoryExtra"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 170
    const-string v2, "categoryExtra"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->categoryExtra:Ljava/lang/String;

    .line 173
    :cond_a
    const-string v2, "naviLon"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 174
    const-string v2, "naviLon"

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLon:D

    .line 176
    :cond_b
    const-string v2, "naviLat"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 177
    const-string v2, "naviLat"

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLat:D

    .line 179
    :cond_c
    const-string v2, "typeCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 180
    const-string v2, "typeCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->typeCode:Ljava/lang/String;

    .line 182
    :cond_d
    const-string v2, "source"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 183
    const-string v2, "source"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->source:Ljava/lang/String;

    .line 185
    :cond_e
    const-string v2, "scenario"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 186
    const-string v2, "scenario"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->scenario:I

    .line 190
    :cond_f
    const-string v2, "entrLocation"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 191
    const-string v2, "entrLocation"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->entrLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    .line 193
    :cond_10
    const-string v2, "exitLocation"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 194
    const-string v2, "exitLocation"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->exitLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    .line 197
    :cond_11
    const-string v2, "poiExtra"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 198
    const-string v2, "poiExtra"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiExtra:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    .line 201
    :cond_12
    const-string v2, "blCustomName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 202
    const-string v2, "blCustomName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->blCustomName:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_13
    return-object v0

    .line 205
    .end local v0    # "poiBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 208
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static gcj02_To_Bd09(DD)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    .locals 12
    .param p0, "lat"    # D
    .param p2, "lng"    # D

    .line 611
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 612
    .local v0, "pi":D
    mul-double v2, p2, p2

    mul-double v4, p0, p0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x40a7700000000000L    # 3000.0

    mul-double v6, v0, v4

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    mul-double/2addr v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v10, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double/2addr v10, v6

    add-double/2addr v2, v10

    .line 613
    .local v2, "z":D
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    mul-double/2addr v4, v0

    div-double/2addr v4, v8

    mul-double/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const-wide v8, 0x3ec92a737110e454L    # 3.0E-6

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    .line 614
    .local v6, "theta":D
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    const-wide v8, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr v4, v8

    .line 615
    .local v4, "bd_lon":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v2

    const-wide v10, 0x3f789374bc6a7efaL    # 0.006

    add-double/2addr v8, v10

    .line 616
    .local v8, "bd_lat":D
    new-instance v10, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    invoke-direct {v10}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;-><init>()V

    .line 617
    .local v10, "b":Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    invoke-virtual {v10, v8, v9}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->setLatitude(D)V

    .line 618
    invoke-virtual {v10, v4, v5}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->setLongitude(D)V

    .line 619
    return-object v10
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->address:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlCustomName()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->blCustomName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .line 250
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->category:I

    return v0
.end method

.method public getCategoryExtra()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->categoryExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->cityName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayDistance()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->displayDistance:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()J
    .locals 2

    .line 435
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->distance:J

    return-wide v0
.end method

.method public getDstName()Ljava/lang/String;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->dst_name:Ljava/lang/String;

    return-object v0
.end method

.method public getEntrLocation()Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->entrLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    return-object v0
.end method

.method public getExitLocation()Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->exitLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 381
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 399
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->longitude:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNaviLat()D
    .locals 2

    .line 525
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLat:D

    return-wide v0
.end method

.method public getNaviLon()D
    .locals 2

    .line 507
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLon:D

    return-wide v0
.end method

.method public getPoiExtra()Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiExtra:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    return-object v0
.end method

.method public getPoiId()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScenario()I
    .locals 1

    .line 315
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->scenario:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->telephone:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeCode()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->typeCode:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 426
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->address:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setBlCustomName(Ljava/lang/String;)V
    .locals 0
    .param p1, "blCustomName"    # Ljava/lang/String;

    .line 327
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->blCustomName:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setCategory(I)V
    .locals 0
    .param p1, "category"    # I

    .line 260
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->category:I

    .line 261
    return-void
.end method

.method public setCategoryExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "categorys"    # Ljava/lang/String;

    .line 279
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->categoryExtra:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityName"    # Ljava/lang/String;

    .line 336
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->cityName:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public setDisplayDistance(Ljava/lang/String;)V
    .locals 0
    .param p1, "display"    # Ljava/lang/String;

    .line 354
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->displayDistance:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setDistance(J)V
    .locals 0
    .param p1, "distance"    # J

    .line 444
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->distance:J

    .line 445
    return-void
.end method

.method public setDstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "dst_name"    # Ljava/lang/String;

    .line 498
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->dst_name:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public setEntrLocation(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;)V
    .locals 0
    .param p1, "entrLocation"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    .line 295
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->entrLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    .line 296
    return-void
.end method

.method public setExitLocation(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;)V
    .locals 0
    .param p1, "exitLocation"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    .line 303
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->exitLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    .line 304
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .param p1, "latitude"    # D

    .line 390
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->latitude:D

    .line 391
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .param p1, "longitude"    # D

    .line 408
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->longitude:D

    .line 409
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 480
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->name:Ljava/lang/String;

    .line 481
    return-void
.end method

.method public setNaviLat(D)V
    .locals 0
    .param p1, "naviLat"    # D

    .line 534
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLat:D

    .line 535
    return-void
.end method

.method public setNaviLon(D)V
    .locals 0
    .param p1, "naviLon"    # D

    .line 516
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLon:D

    .line 517
    return-void
.end method

.method public setPoiExtra(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;)V
    .locals 0
    .param p1, "poiExtra"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiExtra:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    .line 116
    return-void
.end method

.method public setPoiId(Ljava/lang/String;)V
    .locals 0
    .param p1, "poiId"    # Ljava/lang/String;

    .line 372
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiId:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setScenario(I)V
    .locals 0
    .param p1, "scenario"    # I

    .line 319
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->scenario:I

    .line 320
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .line 311
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->source:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 0
    .param p1, "telephone"    # Ljava/lang/String;

    .line 462
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->telephone:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public setTypeCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeCode"    # Ljava/lang/String;

    .line 287
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->typeCode:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 544
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 545
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    const-string v1, "dst_name"

    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->getDstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 547
    const-string v1, "latitude"

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->latitude:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 548
    const-string v1, "longitude"

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->longitude:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 549
    const-string v1, "address"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->address:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 550
    const-string v1, "distance"

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->distance:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 551
    const-string v1, "displayDistance"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->displayDistance:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    const-string v1, "tel"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->telephone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    const-string v1, "category"

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->category:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 554
    const-string v1, "categoryExtra"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->categoryExtra:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    const-string v1, "poiId"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    const-string v1, "naviLon"

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLon:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 557
    const-string v1, "naviLat"

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLat:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 558
    const-string v1, "typeCode"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->typeCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    const-string v1, "source"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    const-string v1, "scenario"

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->scenario:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 562
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->entrLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    if-eqz v1, :cond_0

    .line 563
    const-string v1, "entrLocation"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->entrLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->exitLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    if-eqz v1, :cond_1

    .line 566
    const-string v1, "exitLocation"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->exitLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 568
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiExtra:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    if-eqz v1, :cond_2

    .line 569
    const-string v1, "poiExtra"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiExtra:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 572
    :cond_2
    const-string v1, "blCustomName"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->blCustomName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 573
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PoiBean{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dst_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->dst_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", poiId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", latitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", longitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", address=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", distance="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->distance:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", categoryExtra=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->categoryExtra:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", telephone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->telephone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", displayDistance=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->displayDistance:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cityName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", naviLon="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", naviLat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", category="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->category:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", typeCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->typeCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", scenario=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->scenario:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", entrLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->entrLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exitLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->exitLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", poiExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiExtra:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", blCustomName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->blCustomName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 629
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->dst_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 633
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 634
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 635
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->distance:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 636
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->telephone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->displayDistance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->cityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 639
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->categoryExtra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 641
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLon:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 642
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 643
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->typeCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 645
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->scenario:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->entrLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 647
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->exitLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 648
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->blCustomName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 649
    return-void
.end method
