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

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

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

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->blCustomName:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    .locals 23

    const-string v0, "blCustomName"

    const-string v1, "poiExtra"

    const-string v2, "exitLocation"

    const-string v3, "entrLocation"

    const-string v4, "scenario"

    const-string v5, "source"

    const-string v6, "typeCode"

    const-string v7, "naviLat"

    const-string v8, "naviLon"

    const-string v9, "categoryExtra"

    const-string v10, "category"

    const-string v11, "tel"

    const-string v12, "displayDistance"

    const-string v13, "distance"

    const-string v14, "address"

    const-string v15, "longitude"

    move-object/from16 v16, v0

    const-string v0, "latitude"

    move-object/from16 v17, v1

    const-string v1, "dst_name"

    move-object/from16 v18, v2

    const-string v2, "name"

    move-object/from16 v19, v3

    const-string v3, "poiId"

    move-object/from16 v20, v4

    .line 129
    :try_start_0
    new-instance v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    invoke-direct {v4}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;-><init>()V

    move-object/from16 v21, v5

    .line 130
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v22, v6

    move-object/from16 v6, p0

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 133
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiId:Ljava/lang/String;

    .line 135
    :cond_0
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->name:Ljava/lang/String;

    .line 139
    :cond_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->dst_name:Ljava/lang/String;

    .line 143
    :cond_2
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    .line 144
    invoke-virtual {v5, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->latitude:D

    .line 147
    :cond_3
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    invoke-virtual {v5, v15, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->longitude:D

    .line 151
    :cond_4
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->address:Ljava/lang/String;

    .line 154
    :cond_5
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->distance:J

    .line 158
    :cond_6
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->displayDistance:Ljava/lang/String;

    .line 162
    :cond_7
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 163
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->telephone:Ljava/lang/String;

    .line 165
    :cond_8
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 166
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->category:I

    .line 169
    :cond_9
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 170
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->categoryExtra:Ljava/lang/String;

    .line 173
    :cond_a
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 174
    invoke-virtual {v5, v8, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLon:D

    .line 176
    :cond_b
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 177
    invoke-virtual {v5, v7, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLat:D

    :cond_c
    move-object/from16 v0, v22

    .line 179
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 180
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->typeCode:Ljava/lang/String;

    :cond_d
    move-object/from16 v0, v21

    .line 182
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 183
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->source:Ljava/lang/String;

    :cond_e
    move-object/from16 v0, v20

    .line 185
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 186
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->scenario:I

    :cond_f
    move-object/from16 v0, v19

    .line 190
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 191
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->entrLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    :cond_10
    move-object/from16 v0, v18

    .line 193
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 194
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->exitLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    :cond_11
    move-object/from16 v0, v17

    .line 197
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 198
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiExtra:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    :cond_12
    move-object/from16 v0, v16

    .line 201
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 202
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->blCustomName:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_13
    return-object v4

    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static gcj02_To_Bd09(DD)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    .locals 8

    mul-double v0, p2, p2

    mul-double v2, p0, p0

    add-double/2addr v0, v2

    .line 612
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x404a2e1077c7044eL    # 52.35987755982988

    mul-double v4, p0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    .line 613
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    mul-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide v2, 0x3ec92a737110e454L    # 3.0E-6

    mul-double/2addr p2, v2

    add-double/2addr p0, p2

    .line 614
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double/2addr p2, v0

    const-wide v2, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr p2, v2

    .line 615
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    const-wide p0, 0x3f789374bc6a7efaL    # 0.006

    add-double/2addr v0, p0

    .line 616
    new-instance p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;-><init>()V

    .line 617
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->setLatitude(D)V

    .line 618
    invoke-virtual {p0, p2, p3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->setLongitude(D)V

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

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

    .line 426
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->address:Ljava/lang/String;

    return-void
.end method

.method public setBlCustomName(Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->blCustomName:Ljava/lang/String;

    return-void
.end method

.method public setCategory(I)V
    .locals 0

    .line 260
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->category:I

    return-void
.end method

.method public setCategoryExtra(Ljava/lang/String;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->categoryExtra:Ljava/lang/String;

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->cityName:Ljava/lang/String;

    return-void
.end method

.method public setDisplayDistance(Ljava/lang/String;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->displayDistance:Ljava/lang/String;

    return-void
.end method

.method public setDistance(J)V
    .locals 0

    .line 444
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->distance:J

    return-void
.end method

.method public setDstName(Ljava/lang/String;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->dst_name:Ljava/lang/String;

    return-void
.end method

.method public setEntrLocation(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->entrLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    return-void
.end method

.method public setExitLocation(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->exitLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 390
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 408
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->longitude:D

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNaviLat(D)V
    .locals 0

    .line 534
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLat:D

    return-void
.end method

.method public setNaviLon(D)V
    .locals 0

    .line 516
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLon:D

    return-void
.end method

.method public setPoiExtra(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiExtra:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    return-void
.end method

.method public setPoiId(Ljava/lang/String;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiId:Ljava/lang/String;

    return-void
.end method

.method public setScenario(I)V
    .locals 0

    .line 319
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->scenario:I

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->source:Ljava/lang/String;

    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->telephone:Ljava/lang/String;

    return-void
.end method

.method public setTypeCode(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->typeCode:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->getDstName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dst_name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 547
    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->latitude:D

    const-string v3, "latitude"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 548
    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->longitude:D

    const-string v3, "longitude"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 549
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->address:Ljava/lang/String;

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 550
    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->distance:J

    const-string v3, "distance"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 551
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->displayDistance:Ljava/lang/String;

    const-string v2, "displayDistance"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->telephone:Ljava/lang/String;

    const-string v2, "tel"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->category:I

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 554
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->categoryExtra:Ljava/lang/String;

    const-string v2, "categoryExtra"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiId:Ljava/lang/String;

    const-string v2, "poiId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLon:D

    const-string v3, "naviLon"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 557
    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLat:D

    const-string v3, "naviLat"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 558
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->typeCode:Ljava/lang/String;

    const-string v2, "typeCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->source:Ljava/lang/String;

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->scenario:I

    const-string v2, "scenario"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 562
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->entrLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    if-eqz v1, :cond_0

    .line 563
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "entrLocation"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->exitLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    if-eqz v1, :cond_1

    .line 566
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "exitLocation"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 568
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiExtra:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    if-eqz v1, :cond_2

    .line 569
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "poiExtra"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 572
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->blCustomName:Ljava/lang/String;

    const-string v2, "blCustomName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PoiBean{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", dst_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->dst_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", poiId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", latitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", longitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", address=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", distance="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->distance:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", categoryExtra=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->categoryExtra:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", telephone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->telephone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", displayDistance=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->displayDistance:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", cityName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", naviLon="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", naviLat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", category="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->category:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", typeCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->typeCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", scenario=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->scenario:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", entrLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->entrLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exitLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->exitLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", poiExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiExtra:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blCustomName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->blCustomName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 629
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->dst_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 631
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->poiId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 633
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 634
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 635
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->distance:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 636
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->telephone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 637
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->displayDistance:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 638
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->cityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 639
    iget p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->category:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->categoryExtra:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 641
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLon:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 642
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->naviLat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 643
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->typeCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 644
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->source:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 645
    iget p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->scenario:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->entrLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 647
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->exitLocation:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiLocation;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 648
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->blCustomName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
