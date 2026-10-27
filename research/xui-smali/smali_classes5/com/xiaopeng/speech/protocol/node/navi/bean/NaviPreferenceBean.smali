.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;
.super Ljava/lang/Object;
.source "NaviPreferenceBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# static fields
.field public static final ATMS:Ljava/lang/String; = "atms"

.field public static final ATMS_ID:I = 0x12c

.field public static final AVOID_CARPOOL:Ljava/lang/String; = "avoid carpool"

.field public static final AVOID_COUNTRY_BORDER:Ljava/lang/String; = "avoid country border"

.field public static final AVOID_FERRIES:Ljava/lang/String; = "avoid ferries"

.field public static final AVOID_HIGHWAY:Ljava/lang/String; = "avoid highway"

.field public static final AVOID_TOLL:Ljava/lang/String; = "avoid toll"

.field public static final AVOID_TUNNEL:Ljava/lang/String; = "avoid tunnel"

.field public static final AVOID_UNPAVED:Ljava/lang/String; = "avoid unpaved"

.field public static final CAFE:Ljava/lang/String; = "coffee"

.field public static final CAFE_ID:I = 0x12d

.field public static final CARPOOL:Ljava/lang/String; = "carpool lanes"

.field public static final CHARGING_STATION:Ljava/lang/String; = "charging station"

.field public static final CHARGING_STATION_ID:I = 0x133

.field public static final COUNTRY_BORDER:Ljava/lang/String; = "country borders"

.field public static final ECO_FRIENDLY:Ljava/lang/String; = "eco"

.field public static final FASTEST:Ljava/lang/String; = "fastest"

.field public static final FAST_FOOD:Ljava/lang/String; = "fast food"

.field public static final FAST_FOOD_ID:I = 0x130

.field public static final FERRIES:Ljava/lang/String; = "ferries"

.field public static final GROCERY:Ljava/lang/String; = "grocery"

.field public static final GROCERY_ID:I = 0x12f

.field public static final HIGHWAY:Ljava/lang/String; = "highways"

.field public static final HOTEL:Ljava/lang/String; = "hotel"

.field public static final HOTEL_ID:I = 0x12e

.field public static final PARKING_LOT:Ljava/lang/String; = "parking lot"

.field public static final PARKING_LOT_ID:I = 0x132

.field public static final PATH_PREF_AVOID_CARPOOL:I = 0xcf

.field public static final PATH_PREF_AVOID_COUNTRY_BORDER:I = 0xd5

.field public static final PATH_PREF_AVOID_FERRIES:I = 0xcd

.field public static final PATH_PREF_AVOID_HIGHWAY:I = 0xd1

.field public static final PATH_PREF_AVOID_TOLL:I = 0xc9

.field public static final PATH_PREF_AVOID_TUNNEL:I = 0xcb

.field public static final PATH_PREF_AVOID_UNPAVED:I = 0xd3

.field public static final PATH_PREF_CARPOOL:I = 0xce

.field public static final PATH_PREF_COUNTRY_BORDER:I = 0xd4

.field public static final PATH_PREF_ECO_FRIENDLY:I = 0x65

.field public static final PATH_PREF_FASTEST:I = 0x64

.field public static final PATH_PREF_FERRIES:I = 0xcc

.field public static final PATH_PREF_HIGHWAY:I = 0xd0

.field public static final PATH_PREF_SHORTEST:I = 0x66

.field public static final PATH_PREF_TOLL:I = 0xc8

.field public static final PATH_PREF_TUNNEL:I = 0xca

.field public static final PATH_PREF_UNPAVED:I = 0xd2

.field public static final RESTAURANT:Ljava/lang/String; = "restaurant"

.field public static final RESTAURANT_ID:I = 0x131

.field public static final SAFETY_ALERT:Ljava/lang/String; = "safety alert"

.field public static final SHORTEST:Ljava/lang/String; = "shortest"

.field private static final TAG:Ljava/lang/String; = "NaviPreferenceBean"

.field public static final TOLL:Ljava/lang/String; = "toll road"

.field public static final TOLL_GATE_ALERT:Ljava/lang/String; = "toll gate alert"

.field public static final TRAFFIC_CAMERA_ALERT:Ljava/lang/String; = "traffic camera alert"

.field public static final TRAFFIC_EVENT_ALERT:Ljava/lang/String; = "traffic event alert"

.field public static final TUNNEL:Ljava/lang/String; = "tunnels"

.field public static final UNPAVED:Ljava/lang/String; = "unpaved road"


# instance fields
.field private mEnable:I

.field private mPref:Ljava/lang/String;

.field private mPrefId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .line 197
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;-><init>()V

    .line 199
    .local v0, "pref":Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "mode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->mPref:Ljava/lang/String;

    .line 201
    iget-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->mPref:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->prefNameToPrefId(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->mPrefId:I

    .line 202
    const-string v2, "switch"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->mEnable:I

    .line 204
    const-string v2, "NaviPreferenceBean"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fromJson, pref:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1    # "json":Lorg/json/JSONObject;
    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 208
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method public static prefNameToPrefId(Ljava/lang/String;)I
    .locals 3
    .param p0, "pref"    # Ljava/lang/String;

    .line 244
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 245
    return v1

    .line 247
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "country border"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "avoid ferries"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "country borders"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "avoid toll"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "toll road"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "avoid tunnel"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "carpool lanes"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x6

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "highway"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "carpool"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "grocery"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "hotel"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "toll"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "atms"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "eco"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "fast food"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "unpaved road"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "unpaved"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "shortest"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "charging station"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "tunnel"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "avoid highway"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_15
    const-string v2, "ferries"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_16
    const-string v2, "tunnels"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_17
    const-string v2, "fastest"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :sswitch_18
    const-string v2, "eco friendly"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_19
    const-string v2, "avoid carpool"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_1a
    const-string v2, "coffee"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x19

    goto :goto_0

    :sswitch_1b
    const-string v2, "highways"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xe

    goto :goto_0

    :sswitch_1c
    const-string v2, "parking lot"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x1e

    goto :goto_0

    :sswitch_1d
    const-string v2, "avoid country border"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x16

    goto :goto_0

    :sswitch_1e
    const-string v2, "restaurant"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x1d

    goto :goto_0

    :sswitch_1f
    const-string v2, "avoid unpaved"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x13

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 306
    return v1

    .line 304
    :pswitch_0
    const/16 v0, 0x133

    return v0

    .line 302
    :pswitch_1
    const/16 v0, 0x132

    return v0

    .line 300
    :pswitch_2
    const/16 v0, 0x131

    return v0

    .line 298
    :pswitch_3
    const/16 v0, 0x130

    return v0

    .line 296
    :pswitch_4
    const/16 v0, 0x12f

    return v0

    .line 294
    :pswitch_5
    const/16 v0, 0x12e

    return v0

    .line 292
    :pswitch_6
    const/16 v0, 0x12d

    return v0

    .line 290
    :pswitch_7
    const/16 v0, 0x12c

    return v0

    .line 288
    :pswitch_8
    const/16 v0, 0x66

    return v0

    .line 286
    :pswitch_9
    const/16 v0, 0xd5

    return v0

    .line 284
    :pswitch_a
    const/16 v0, 0xd4

    return v0

    .line 281
    :pswitch_b
    const/16 v0, 0xd3

    return v0

    .line 279
    :pswitch_c
    const/16 v0, 0xd2

    return v0

    .line 276
    :pswitch_d
    const/16 v0, 0xd1

    return v0

    .line 274
    :pswitch_e
    const/16 v0, 0xd0

    return v0

    .line 271
    :pswitch_f
    const/16 v0, 0xcd

    return v0

    .line 269
    :pswitch_10
    const/16 v0, 0xcc

    return v0

    .line 267
    :pswitch_11
    const/16 v0, 0xcb

    return v0

    .line 265
    :pswitch_12
    const/16 v0, 0xca

    return v0

    .line 262
    :pswitch_13
    const/16 v0, 0xcf

    return v0

    .line 260
    :pswitch_14
    const/16 v0, 0xce

    return v0

    .line 257
    :pswitch_15
    const/16 v0, 0xc9

    return v0

    .line 255
    :pswitch_16
    const/16 v0, 0xc8

    return v0

    .line 252
    :pswitch_17
    const/16 v0, 0x65

    return v0

    .line 249
    :pswitch_18
    const/16 v0, 0x64

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7d081ea0 -> :sswitch_1f
        -0x69a5b4c3 -> :sswitch_1e
        -0x6842b9ff -> :sswitch_1d
        -0x66a7b917 -> :sswitch_1c
        -0x64632ffa -> :sswitch_1b
        -0x50c42034 -> :sswitch_1a
        -0x4b4461bb -> :sswitch_19
        -0x42e4cba6 -> :sswitch_18
        -0x40337c56 -> :sswitch_17
        -0x39c482f5 -> :sswitch_16
        -0x396f0cc8 -> :sswitch_15
        -0x35bcfd9e -> :sswitch_14
        -0x33696f98 -> :sswitch_13
        -0x23a2017b -> :sswitch_12
        -0x146a1c76 -> :sswitch_11
        -0x10b9aef5 -> :sswitch_10
        -0x63df2eb -> :sswitch_f
        -0x518025e -> :sswitch_e
        0x18791 -> :sswitch_d
        0x2dd919 -> :sswitch_c
        0x36693b -> :sswitch_b
        0x5edc1b4 -> :sswitch_a
        0x1175090d -> :sswitch_9
        0x210a0df0 -> :sswitch_8
        0x3691720d -> :sswitch_7
        0x371e99d7 -> :sswitch_6
        0x44f72173 -> :sswitch_5
        0x450992e5 -> :sswitch_4
        0x510dc106 -> :sswitch_3
        0x54110f3d -> :sswitch_2
        0x5a42838d -> :sswitch_1
        0x5d8ceff6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getPref()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->mPref:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefId()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->mPrefId:I

    return v0
.end method

.method public isEnable()Z
    .locals 2

    .line 235
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->mEnable:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NaviPreferenceBean{pref=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->mPref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", prefId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->mPrefId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", enable=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->mEnable:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
