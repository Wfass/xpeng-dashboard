.class final Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;
.super Ljava/lang/Object;
.source "Persistence.java"


# static fields
.field private static final KEY_ACCURACY:Ljava/lang/String; = "LASTLOCATION_ACCURACY"

.field private static final KEY_ACCURATE_SPEED:Ljava/lang/String; = "LASTLOCATION_ACCU_SPEED"

.field private static final KEY_ADCODE:Ljava/lang/String; = "LASTLOCATION_ADCODE"

.field private static final KEY_ALTITUDE:Ljava/lang/String; = "LASTLOCATION_ALTITUDE"

.field private static final KEY_ANGLE:Ljava/lang/String; = "LASTLOCATION_ANGLE"

.field private static final KEY_CATEGORY:Ljava/lang/String; = "LASTLOCATION_CATEGORY"

.field private static final KEY_CITY:Ljava/lang/String; = "LASTLOCATION_CITY"

.field private static final KEY_LAST_UPDATE_TIME:Ljava/lang/String; = "LAST_UPDATE_TIME"

.field private static final KEY_LATITUDE:Ljava/lang/String; = "LASTLOCATION_LATITUDE"

.field private static final KEY_LONGITUDE:Ljava/lang/String; = "LASTLOCATION_LONGITUDE"

.field private static final KEY_RAW_LATITUDE:Ljava/lang/String; = "LASTLOCATION_RAWLATITUDE"

.field private static final KEY_RAW_LONGITUDE:Ljava/lang/String; = "LASTLOCATION_RAWLONGITUDE"

.field private static final KEY_SATELLITES:Ljava/lang/String; = "LASTLOCATION_SATELLITES"

.field private static final KEY_SOURCETYPE:Ljava/lang/String; = "LASTLOCATION_SOURCETYPE"

.field private static final KEY_TIME:Ljava/lang/String; = "LASTLOCATION_TIME"


# instance fields
.field private mLastUpdateTime:J

.field private mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private getFloat(Ljava/lang/String;F)F
    .locals 2

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFloat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Persistence"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 2

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Persistence"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 2

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLong:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Persistence"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p2
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Persistence"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method


# virtual methods
.method public getLastUpdateTime()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mLastUpdateTime:J

    return-wide v0
.end method

.method public read()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 6

    .line 74
    invoke-static {}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->values()[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v0

    array-length v0, v0

    const-string v1, "LASTLOCATION_CATEGORY"

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 75
    invoke-static {}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->values()[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-wide/16 v1, -0x1

    const-string v3, "LAST_UPDATE_TIME"

    .line 79
    invoke-direct {p0, v3, v1, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mLastUpdateTime:J

    .line 81
    new-instance v1, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;-><init>()V

    .line 82
    invoke-static {}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->values()[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->category(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "LASTLOCATION_LATITUDE"

    .line 83
    invoke-direct {p0, v3, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->latitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object v0

    const-string v3, "LASTLOCATION_LONGITUDE"

    .line 84
    invoke-direct {p0, v3, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->longitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object v0

    const-string v3, "LASTLOCATION_RAWLATITUDE"

    .line 85
    invoke-direct {p0, v3, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->rawLatitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object v0

    const-string v3, "LASTLOCATION_RAWLONGITUDE"

    .line 86
    invoke-direct {p0, v3, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->rawLongitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object v0

    const-string v3, "LASTLOCATION_ACCU_SPEED"

    .line 87
    invoke-direct {p0, v3, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->speed(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object v0

    const-string v3, "LASTLOCATION_ANGLE"

    .line 88
    invoke-direct {p0, v3, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->angle(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "LASTLOCATION_ACCURACY"

    .line 89
    invoke-direct {p0, v3, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->accuracy(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v0

    const-string v3, "LASTLOCATION_SATELLITES"

    .line 90
    invoke-direct {p0, v3, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->satellites(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v0

    const-string v3, "LASTLOCATION_ALTITUDE"

    .line 91
    invoke-direct {p0, v3, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->altitude(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v0

    const-wide/16 v3, 0x0

    const-string v5, "LASTLOCATION_TIME"

    .line 92
    invoke-direct {p0, v5, v3, v4}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->time(J)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v0

    const-string v3, "LASTLOCATION_SOURCETYPE"

    .line 93
    invoke-direct {p0, v3, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->sourceType(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v0

    const-string v2, ""

    const-string v3, "LASTLOCATION_CITY"

    .line 94
    invoke-direct {p0, v3, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->city(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v0

    const-string v3, "LASTLOCATION_ADCODE"

    .line 95
    invoke-direct {p0, v3, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->adCode(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    .line 96
    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->seal()V

    return-object v1
.end method

.method public updateLastTime()V
    .locals 2

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mLastUpdateTime:J

    return-void
.end method

.method public write(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->category()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->ordinal()I

    move-result v1

    const-string v2, "LASTLOCATION_CATEGORY"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->latitude()F

    move-result v1

    const-string v2, "LASTLOCATION_LATITUDE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->longitude()F

    move-result v1

    const-string v2, "LASTLOCATION_LONGITUDE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->rawLatitude()F

    move-result v1

    const-string v2, "LASTLOCATION_RAWLATITUDE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->rawLongitude()F

    move-result v1

    const-string v2, "LASTLOCATION_RAWLONGITUDE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->speed()F

    move-result v1

    const-string v2, "LASTLOCATION_ACCU_SPEED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->angle()F

    move-result v1

    const-string v2, "LASTLOCATION_ANGLE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->accuracy()I

    move-result v1

    const-string v2, "LASTLOCATION_ACCURACY"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->satellites()I

    move-result v1

    const-string v2, "LASTLOCATION_SATELLITES"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->altitude()I

    move-result v1

    const-string v2, "LASTLOCATION_ALTITUDE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->time()J

    move-result-wide v1

    const-string v3, "LASTLOCATION_TIME"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->sourceType()I

    move-result v1

    const-string v2, "LASTLOCATION_SOURCETYPE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->city()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LASTLOCATION_CITY"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->adCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LASTLOCATION_ADCODE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mLastUpdateTime:J

    const-string v2, "LAST_UPDATE_TIME"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
