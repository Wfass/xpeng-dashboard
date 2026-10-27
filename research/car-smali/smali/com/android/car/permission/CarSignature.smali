.class public Lcom/android/car/permission/CarSignature;
.super Ljava/lang/Object;
.source "CarSignature.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/permission/CarSignature$PropAccess;,
        Lcom/android/car/permission/CarSignature$Access;
    }
.end annotation


# static fields
.field public static final SALT:Ljava/lang/String; = "signature"

.field public static final TAG:Ljava/lang/String; = "CarPermissionManager"

.field public static final VEHICLE_PROPERTY_ACCESS_NONE:I = 0x0

.field public static final VEHICLE_PROPERTY_ACCESS_READ:I = 0x1

.field public static final VEHICLE_PROPERTY_ACCESS_READ_WRITE:I = 0x3

.field public static final VEHICLE_PROPERTY_ACCESS_WRITE:I = 0x2


# instance fields
.field public mAppFlag:I

.field public mAppId:Ljava/lang/String;

.field public mAppId2:Ljava/lang/String;

.field public mDebug:I

.field public mEncode:Ljava/lang/String;

.field public mEncodeType:I

.field public mName:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mPropAccessMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/permission/CarSignature$PropAccess;",
            ">;"
        }
    .end annotation
.end field

.field public mSha1:Ljava/lang/String;

.field public mSha12:Ljava/lang/String;

.field public mUid:I

.field public mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/permission/CarSignature;->mEncodeType:I

    .line 33
    iput v0, p0, Lcom/android/car/permission/CarSignature;->mDebug:I

    .line 34
    iput v0, p0, Lcom/android/car/permission/CarSignature;->mVersion:I

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/permission/CarSignature;->mPropAccessMap:Ljava/util/Map;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "sha1"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/permission/CarSignature$PropAccess;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/car/permission/CarSignature$PropAccess;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/permission/CarSignature;->mEncodeType:I

    .line 33
    iput v0, p0, Lcom/android/car/permission/CarSignature;->mDebug:I

    .line 34
    iput v0, p0, Lcom/android/car/permission/CarSignature;->mVersion:I

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/permission/CarSignature;->mPropAccessMap:Ljava/util/Map;

    .line 75
    iput-object p1, p0, Lcom/android/car/permission/CarSignature;->mSha1:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/car/permission/CarSignature;->mPackageName:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/android/car/permission/CarSignature;->mPropAccessMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 78
    return-void
.end method

.method public static getAccessType(Ljava/lang/String;)I
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 95
    return v1

    .line 97
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "target":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x52

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v3, v4, :cond_6

    const/16 v4, 0x57

    if-eq v3, v4, :cond_5

    const/16 v4, 0xa45

    if-eq v3, v4, :cond_4

    const v4, 0x265196

    if-eq v3, v4, :cond_3

    const v4, 0x4f05fbf

    if-eq v3, v4, :cond_2

    const v4, 0x4a590bd6    # 3556085.5f

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "READ_WRITE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v2, v6

    goto :goto_0

    :cond_2
    const-string v3, "WRITE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const-string v3, "READ"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x4

    goto :goto_0

    :cond_4
    const-string v3, "RW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v2, v5

    goto :goto_0

    :cond_5
    const-string v3, "W"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v2, v1

    goto :goto_0

    :cond_6
    const-string v3, "R"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x5

    :cond_7
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 108
    return v1

    .line 104
    :pswitch_0
    return v5

    .line 101
    :pswitch_1
    return v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method checkPropAccess(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "access"    # I

    .line 85
    iget-object v0, p0, Lcom/android/car/permission/CarSignature;->mPropAccessMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/permission/CarSignature$PropAccess;

    .line 86
    .local v0, "propAccess":Lcom/android/car/permission/CarSignature$PropAccess;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/car/permission/CarSignature$PropAccess;->mAccess:I

    if-lez v1, :cond_1

    iget v1, v0, Lcom/android/car/permission/CarSignature$PropAccess;->mAccess:I

    if-gt p2, v1, :cond_1

    iget v1, v0, Lcom/android/car/permission/CarSignature$PropAccess;->mGranted:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 87
    :cond_1
    :goto_0
    const-string v1, "CarPermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPropAccess propName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; access="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; propAccess="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarSignature{mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/permission/CarSignature;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSha1=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/permission/CarSignature;->mSha1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAppId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/permission/CarSignature;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mPropAccessMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/permission/CarSignature;->mPropAccessMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
