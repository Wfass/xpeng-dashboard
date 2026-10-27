.class public final Lcom/xiaopeng/lib/feature/XpFeature;
.super Ljava/lang/Object;
.source "XpFeature.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getStringFeature(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getStringFeature(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getArray(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getStringArrayFeature(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getBooleanFeature(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs getBoolean(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getBooleanFeature(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getDoubleFeature(Ljava/lang/String;[Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs getDouble(Ljava/lang/String;[Ljava/lang/Object;)D
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getDoubleFeature(Ljava/lang/String;[Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs getDoubleArray(Ljava/lang/String;[Ljava/lang/Object;)[D
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getDoubleArrayFeature(Ljava/lang/String;[Ljava/lang/Object;)[D

    move-result-object v0

    return-object v0
.end method

.method public static getFloat(Ljava/lang/String;)F
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getFloatFeature(Ljava/lang/String;[Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public static varargs getFloat(Ljava/lang/String;[Ljava/lang/Object;)F
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getFloatFeature(Ljava/lang/String;[Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public static varargs getFloatArray(Ljava/lang/String;[Ljava/lang/Object;)[F
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getFloatArrayFeature(Ljava/lang/String;[Ljava/lang/Object;)[F

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getIntFeature(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static varargs getInt(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getIntFeature(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static varargs getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getIntArrayFeature(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getLongFeature(Ljava/lang/String;[Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs getLong(Ljava/lang/String;[Ljava/lang/Object;)J
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getLongFeature(Ljava/lang/String;[Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs getLongArray(Ljava/lang/String;[Ljava/lang/Object;)[J
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getLongArrayFeature(Ljava/lang/String;[Ljava/lang/Object;)[J

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 13
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->init(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 1
    .param p0, "level"    # I

    .line 18
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->setLogLevel(I)V

    .line 19
    return-void
.end method
