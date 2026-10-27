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

.field private static final KEY_LATITUDE:Ljava/lang/String; = "LASTLOCATION_LATITUDE"

.field private static final KEY_LONGITUDE:Ljava/lang/String; = "LASTLOCATION_LONGITUDE"

.field private static final KEY_RAW_LATITUDE:Ljava/lang/String; = "LASTLOCATION_RAWLATITUDE"

.field private static final KEY_RAW_LONGITUDE:Ljava/lang/String; = "LASTLOCATION_RAWLONGITUDE"

.field private static final KEY_SATELLITES:Ljava/lang/String; = "LASTLOCATION_SATELLITES"

.field private static final KEY_SOURCETYPE:Ljava/lang/String; = "LASTLOCATION_SOURCETYPE"

.field private static final KEY_TIME:Ljava/lang/String; = "LASTLOCATION_TIME"


# instance fields
.field private mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 38
    return-void
.end method


# virtual methods
.method public read()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "LASTLOCATION_CATEGORY"

    invoke-static {}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->values()[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v2

    array-length v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, "indexOfCategory":I
    invoke-static {}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->values()[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 62
    const/4 v1, 0x0

    return-object v1

    .line 65
    :cond_0
    new-instance v1, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;-><init>()V

    .line 66
    .local v1, "location":Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    invoke-static {}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->values()[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->category(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "LASTLOCATION_LATITUDE"

    .line 67
    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->latitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "LASTLOCATION_LONGITUDE"

    .line 68
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->longitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "LASTLOCATION_RAWLATITUDE"

    .line 69
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->rawLatitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "LASTLOCATION_RAWLONGITUDE"

    .line 70
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->rawLongitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "LASTLOCATION_ACCU_SPEED"

    .line 71
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->speed(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "LASTLOCATION_ANGLE"

    .line 72
    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->angle(I)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "LASTLOCATION_ACCURACY"

    .line 73
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->accuracy(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "LASTLOCATION_SATELLITES"

    .line 74
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->satellites(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "LASTLOCATION_ALTITUDE"

    .line 75
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->altitude(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "LASTLOCATION_TIME"

    const-wide/16 v6, 0x0

    .line 76
    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->time(J)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "LASTLOCATION_SOURCETYPE"

    .line 77
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->sourceType(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "LASTLOCATION_CITY"

    const-string v5, ""

    .line 78
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->city(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "LASTLOCATION_ADCODE"

    const-string v5, ""

    .line 79
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->adCode(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    .line 80
    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->seal()V

    .line 81
    return-object v1
.end method

.method public write(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;)V
    .locals 4
    .param p1, "location"    # Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LASTLOCATION_CATEGORY"

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->category()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LASTLOCATION_LATITUDE"

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->latitude()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LASTLOCATION_LONGITUDE"

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->longitude()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LASTLOCATION_RAWLATITUDE"

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->rawLatitude()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LASTLOCATION_RAWLONGITUDE"

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->rawLongitude()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LASTLOCATION_ACCU_SPEED"

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->speed()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LASTLOCATION_ANGLE"

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->angle()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LASTLOCATION_ACCURACY"

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->accuracy()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LASTLOCATION_SATELLITES"

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->satellites()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LASTLOCATION_ALTITUDE"

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->altitude()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LASTLOCATION_TIME"

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->time()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LASTLOCATION_SOURCETYPE"

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->sourceType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LASTLOCATION_CITY"

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->city()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LASTLOCATION_ADCODE"

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->adCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->mSharePreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    return-void
.end method
