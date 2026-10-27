.class public Lcom/android/car/pm/CarAppMetadataReader;
.super Ljava/lang/Object;
.source "CarAppMetadataReader.java"


# static fields
.field private static final DO_METADATA_ATTRIBUTE:Ljava/lang/String; = "distractionOptimized"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findDistractionOptimizedActivities(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 61
    .local v0, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 62
    const v1, 0xc0081

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 67
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 68
    return-object v2

    .line 71
    :cond_0
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 72
    .local v3, "activities":[Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x3

    if-nez v3, :cond_2

    .line 73
    const-string v5, "CAR.PACKAGE"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    const-string v4, "CAR.PACKAGE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Null Activities for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1
    return-object v2

    .line 78
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v5, "optimizedActivityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v6, v3

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_5

    aget-object v9, v3, v8

    .line 80
    .local v9, "activity":Landroid/content/pm/ActivityInfo;
    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 81
    .local v10, "mData":Landroid/os/Bundle;
    if-eqz v10, :cond_4

    const-string v11, "distractionOptimized"

    invoke-virtual {v10, v11, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 82
    const-string v11, "CAR.PACKAGE"

    invoke-static {v11, v4}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 83
    const-string v11, "CAR.PACKAGE"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DO Activity:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_3
    iget-object v11, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v9    # "activity":Landroid/content/pm/ActivityInfo;
    .end local v10    # "mData":Landroid/os/Bundle;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 89
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 90
    return-object v2

    .line 92
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method
