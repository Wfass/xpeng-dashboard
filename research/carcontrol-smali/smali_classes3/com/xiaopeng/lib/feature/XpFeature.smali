.class public final Lcom/xiaopeng/lib/feature/XpFeature;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getStringFeature(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getStringFeature(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getArray(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/util/XpFeatureAgent;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getBooleanFeature(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs getBoolean(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getBooleanFeature(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getDouble(Ljava/lang/String;)D
    .locals 2

    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getDoubleFeature(Ljava/lang/String;[Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs getDouble(Ljava/lang/String;[Ljava/lang/Object;)D
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getDoubleFeature(Ljava/lang/String;[Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs getDoubleArray(Ljava/lang/String;[Ljava/lang/Object;)[D
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getDoubleArrayFeature(Ljava/lang/String;[Ljava/lang/Object;)[D

    move-result-object p0

    return-object p0
.end method

.method public static getFloat(Ljava/lang/String;)F
    .locals 2

    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getFloatFeature(Ljava/lang/String;[Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static varargs getFloat(Ljava/lang/String;[Ljava/lang/Object;)F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getFloatFeature(Ljava/lang/String;[Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static varargs getFloatArray(Ljava/lang/String;[Ljava/lang/Object;)[F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getFloatArrayFeature(Ljava/lang/String;[Ljava/lang/Object;)[F

    move-result-object p0

    return-object p0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getIntFeature(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static varargs getInt(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getIntFeature(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static varargs getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/xiaopeng/carcontrol/util/XpFeatureAgent;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object p0

    return-object p0
.end method

.method public static getLong(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getLongFeature(Ljava/lang/String;[Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs getLong(Ljava/lang/String;[Ljava/lang/Object;)J
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getLongFeature(Ljava/lang/String;[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs getLongArray(Ljava/lang/String;[Ljava/lang/Object;)[J
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getLongArrayFeature(Ljava/lang/String;[Ljava/lang/Object;)[J

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 1

    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->setLogLevel(I)V

    return-void
.end method
