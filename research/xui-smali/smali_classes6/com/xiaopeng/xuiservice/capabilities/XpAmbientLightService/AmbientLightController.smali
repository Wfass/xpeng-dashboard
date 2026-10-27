.class public Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;
.super Lcom/xiaopeng/xuiservice/carcontrol/HalServiceBaseCarListener;
.source "AmbientLightController.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final GROUP_LIGHT:Ljava/lang/String; = "groupLight"

.field public static final SINGLE_LIGHT:Ljava/lang/String; = "singleLight"

.field private static final TAG:Ljava/lang/String; = "AmbientLightController"


# instance fields
.field private brightness:I

.field private firstColor:I

.field private groupInfo:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;

.field private groupLightData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isDoubleColorEnable:Z

.field private isSingleLightControl:Z

.field private mAtlConfiguration:Landroid/car/hardware/atl/AtlConfiguration;

.field private mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

.field private secondColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/HalServiceBaseCarListener;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->isSingleLightControl:Z

    .line 47
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->isDoubleColorEnable:Z

    .line 49
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AmbientLightBright"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->brightness:I

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->groupLightData:Ljava/util/HashMap;

    .line 56
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->groupInfo:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->parseGroupDataFromJsons()V

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->setGroupLightData()V

    .line 59
    return-void
.end method

.method public static getByteArray(B)[B
    .locals 3
    .param p0, "b"    # B

    .line 157
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 158
    .local v0, "array":[B
    const/4 v1, 0x7

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 159
    and-int/lit8 v2, p0, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 160
    shr-int/lit8 v2, p0, 0x1

    int-to-byte p0, v2

    .line 158
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 162
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private parseGroupDataFromJsons()V
    .locals 5

    .line 305
    const-string v0, "AmbientLightController"

    const-string v1, "parseGroupDataFromJsons()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "/system/etc/xuiservice/atl"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->getFilesAllName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 308
    .local v0, "jsonFilesName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    return-void

    .line 309
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 311
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "/system/etc/xuiservice/atl/group_configuration.json"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Ljava/io/FileReader;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->groupInfo:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;
    :try_end_0
    .catch Lcom/google/gson/JsonIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 318
    :catch_0
    move-exception v2

    .line 319
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    goto :goto_2

    .line 316
    :catch_1
    move-exception v2

    .line 317
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .end local v2    # "e":Lcom/google/gson/JsonSyntaxException;
    goto :goto_1

    .line 314
    :catch_2
    move-exception v2

    .line 315
    .local v2, "e":Lcom/google/gson/JsonIOException;
    invoke-virtual {v2}, Lcom/google/gson/JsonIOException;->printStackTrace()V

    .line 320
    .end local v2    # "e":Lcom/google/gson/JsonIOException;
    :cond_1
    :goto_1
    nop

    .line 309
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private setAtlLin2Data([BLjava/lang/String;)V
    .locals 1
    .param p1, "linTwoData"    # [B
    .param p2, "lightType"    # Ljava/lang/String;

    .line 171
    const-string v0, "singleLight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->isSingleLightControl:Z

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->getCarAtlManager()Landroid/car/hardware/atl/CarAtlManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setAtlLin2Data([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->handleException(Ljava/lang/Exception;)V

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private setAtlLin3Data([BLjava/lang/String;)V
    .locals 1
    .param p1, "linThreeData"    # [B
    .param p2, "lightType"    # Ljava/lang/String;

    .line 181
    const-string v0, "singleLight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->isSingleLightControl:Z

    if-nez v0, :cond_1

    .line 183
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->getCarAtlManager()Landroid/car/hardware/atl/CarAtlManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setAtlLin3Data([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->handleException(Ljava/lang/Exception;)V

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private setGroupLightData()V
    .locals 5

    .line 325
    const-string v0, "AmbientLightController"

    const-string v1, "setGroupLightData()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->groupLightData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->groupInfo:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->groupInfo:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;->getGroupData()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->groupInfo:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;->getGroupData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;

    .line 332
    .local v1, "groupList":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->groupLightData:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;->getGroupNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;->getLightPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .end local v1    # "groupList":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo$Group;
    goto :goto_0

    .line 334
    :cond_1
    return-void

    .line 328
    :cond_2
    :goto_1
    const-string v0, "AmbientLightController"

    const-string v1, "Empty groupInfo "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 277
    const-string v0, "*AmbientLight HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public getAtlOpen()I
    .locals 1

    .line 246
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->getCarAtlManager()Landroid/car/hardware/atl/CarAtlManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/atl/CarAtlManager;->getAtlOpen()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->handleException(Ljava/lang/Exception;)V

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public getCarAtlManager()Landroid/car/hardware/atl/CarAtlManager;
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    if-nez v0, :cond_0

    .line 265
    const-string v0, "AmbientLightController"

    const-string v1, "mCarAtlManager is null."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_atl"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/atl/CarAtlManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->handleException(Ljava/lang/Exception;)V

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    return-object v0
.end method

.method public getFilesAllName(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 291
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 292
    const-string v2, "AmbientLightController"

    const-string v3, "Empty file list"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/4 v2, 0x0

    return-object v2

    .line 295
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v2, "s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 298
    const-string v4, "AmbientLightController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method protected onInit()V
    .locals 0

    .line 282
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .line 286
    return-void
.end method

.method public setAllLightData([B[B[B)V
    .locals 0
    .param p1, "color"    # [B
    .param p2, "bright"    # [B
    .param p3, "fade"    # [B

    .line 168
    return-void
.end method

.method public setAtlConfiguration(Landroid/car/hardware/atl/AtlConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/car/hardware/atl/AtlConfiguration;

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setAtlConfiguration(Landroid/car/hardware/atl/AtlConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->handleException(Ljava/lang/Exception;)V

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setAtlOpen(I)V
    .locals 3
    .param p1, "status"    # I

    .line 236
    const-string v0, "AmbientLightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAtlOpen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->getCarAtlManager()Landroid/car/hardware/atl/CarAtlManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setAtlOpen(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->handleException(Ljava/lang/Exception;)V

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setBrightnessLevel(I)V
    .locals 3
    .param p1, "brightness"    # I

    .line 225
    const-string v0, "AmbientLightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightnessLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :try_start_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->brightness:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->handleException(Ljava/lang/Exception;)V

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setDoubleThemeColor(I)V
    .locals 3
    .param p1, "status"    # I

    .line 215
    const-string v0, "AmbientLightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDoubleThemeColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->isDoubleColorEnable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->handleException(Ljava/lang/Exception;)V

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setGroutLightData(BBIZBBB)V
    .locals 18
    .param p1, "groupNum"    # B
    .param p2, "colorProtocol"    # B
    .param p3, "lightlist"    # I
    .param p4, "hold"    # Z
    .param p5, "color"    # B
    .param p6, "bright"    # B
    .param p7, "time"    # B

    move-object/from16 v0, p0

    .line 115
    move/from16 v2, p7

    const/16 v3, 0x8

    new-array v3, v3, [B

    .line 116
    .local v3, "groupData":[B
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->getAtlOpen()I

    move-result v4

    int-to-byte v4, v4

    .line 117
    .local v4, "open":B
    const/4 v5, 0x1

    .line 118
    .local v5, "fade":B
    if-nez v2, :cond_0

    const/4 v5, 0x0

    .line 119
    :cond_0
    move/from16 v6, p3

    .line 120
    .local v6, "lightPosition":I
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->groupLightData:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 121
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->groupLightData:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 122
    :cond_1
    add-int/lit8 v8, p5, -0x1

    int-to-byte v8, v8

    .line 123
    .local v8, "colorCode":B
    const-string v9, "AmbientLightController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setGroutLightData groupNum "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " color "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v11, v8, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " bright "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " fade time "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 123
    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    and-int/lit8 v9, p2, 0x1

    int-to-byte v9, v9

    const/4 v10, 0x2

    aput-byte v9, v3, v10

    .line 127
    aget-byte v9, v3, v10

    and-int/lit8 v11, v4, 0x1

    int-to-byte v11, v11

    const/4 v12, 0x1

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v3, v10

    .line 128
    aget-byte v9, v3, v10

    and-int/lit8 v11, v5, 0x1

    int-to-byte v11, v11

    shl-int/2addr v11, v10

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v3, v10

    .line 129
    const/4 v9, 0x3

    and-int/lit16 v10, v2, 0xff

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    .line 130
    const/4 v9, 0x4

    iget v10, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->brightness:I

    mul-int v10, v10, p6

    div-int/lit8 v10, v10, 0x64

    and-int/lit8 v10, v10, 0x7f

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    .line 131
    if-nez p2, :cond_2

    .line 132
    const/4 v9, 0x5

    and-int/lit8 v10, v8, 0x1f

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    .line 134
    :cond_2
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->groupInfo:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;

    invoke-virtual {v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;->getLIN1Format()I

    move-result v9

    and-int/2addr v9, v6

    .line 135
    .local v9, "lin1":I
    const/4 v14, 0x0

    if-eqz v9, :cond_3

    .line 136
    and-int/lit16 v15, v9, 0xff

    int-to-byte v15, v15

    aput-byte v15, v3, v14

    .line 137
    ushr-int/lit8 v15, v9, 0x8

    int-to-byte v15, v15

    aput-byte v15, v3, v12

    .line 138
    const-string v15, "groupLight"

    invoke-direct {v0, v3, v15}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->setAtlLin2Data([BLjava/lang/String;)V

    .line 139
    const-string v15, "AmbientLightController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setGroutLightData LIN1 byte0: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "%8s"

    new-array v1, v12, [Ljava/lang/Object;

    aget-byte v12, v3, v14

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v14

    invoke-static {v13, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0x20

    const/16 v13, 0x30

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " byte1: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%8s"

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    aget-byte v14, v3, v12

    and-int/lit16 v12, v14, 0xff

    .line 140
    invoke-static {v12}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, v13, v14

    invoke-static {v1, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0x20

    const/16 v13, 0x30

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v15, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_3
    const-string v1, "AmbientLightController"

    const-string v10, "LIN 1 is 0"

    invoke-static {v1, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_0
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->groupInfo:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController$GroupInfo;->getLIN1LightAmount()I

    move-result v1

    ushr-int v1, v6, v1

    .line 145
    .local v1, "lin2":I
    if-eqz v1, :cond_4

    .line 146
    and-int/lit16 v10, v1, 0xff

    int-to-byte v10, v10

    const/4 v12, 0x0

    aput-byte v10, v3, v12

    .line 147
    ushr-int/lit8 v10, v1, 0x8

    int-to-byte v10, v10

    const/4 v12, 0x1

    aput-byte v10, v3, v12

    .line 148
    const-string v10, "groupLight"

    invoke-direct {v0, v3, v10}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->setAtlLin3Data([BLjava/lang/String;)V

    .line 149
    const-string v10, "AmbientLightController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setGroutLightData LIN2 byte0: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "%8s"

    new-array v15, v12, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget-byte v12, v3, v16

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0x20

    const/16 v15, 0x30

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " byte1: "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "%8s"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    aget-byte v14, v3, v14

    and-int/lit16 v14, v14, 0xff

    .line 150
    invoke-static {v14}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v15, v16

    invoke-static {v12, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0x20

    const/16 v15, 0x30

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 149
    invoke-static {v10, v12}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_4
    const-string v10, "AmbientLightController"

    const-string v12, "LIN2 data is 0"

    invoke-static {v10, v12}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_1
    return-void
.end method

.method public setThemeFirstColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 193
    const-string v0, "AmbientLightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setThemeFirstColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :try_start_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->firstColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->handleException(Ljava/lang/Exception;)V

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setThemeSecondColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 204
    const-string v0, "AmbientLightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setThemeSecondColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :try_start_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->secondColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->handleException(Ljava/lang/Exception;)V

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setTwoLightData(B[BZ[B[B[B)V
    .locals 15
    .param p1, "colorProtocol"    # B
    .param p2, "lightPosition"    # [B
    .param p3, "isSingleLight"    # Z
    .param p4, "color"    # [B
    .param p5, "bright"    # [B
    .param p6, "time"    # [B

    move-object v0, p0

    move/from16 v1, p3

    .line 64
    const-string v2, "AmbientLightController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Current two light status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->isSingleLightControl:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " colorProtocol "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " lightPosition "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget-byte v6, p2, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget-byte v7, p2, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " isSingleLight "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " color "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v7, p4, v5

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v7, p4, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bright "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v7, p5, v5

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v7, p5, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " time "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v7, p6, v5

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v7, p6, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-eqz v1, :cond_0

    .line 69
    iput-boolean v6, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->isSingleLightControl:Z

    goto :goto_0

    .line 71
    :cond_0
    iput-boolean v5, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->isSingleLightControl:Z

    .line 73
    :goto_0
    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 74
    .local v3, "firstLightData":[B
    new-array v2, v2, [B

    .line 75
    .local v2, "secondLightData":[B
    const/4 v7, 0x0

    .line 76
    .local v7, "protocol":I
    const/4 v8, 0x2

    new-array v9, v8, [B

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->getAtlOpen()I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v9, v5

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->getAtlOpen()I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v9, v6

    .line 77
    .local v9, "open":[B
    new-array v10, v8, [B

    fill-array-data v10, :array_0

    .line 79
    .local v10, "fade":[B
    and-int/lit8 v11, v7, 0x1

    int-to-byte v11, v11

    aput-byte v11, v3, v8

    .line 80
    aget-byte v11, v3, v8

    aget-byte v12, v9, v5

    and-int/2addr v12, v6

    shl-int/lit8 v5, v12, 0x1

    int-to-byte v5, v5

    or-int/2addr v5, v11

    int-to-byte v5, v5

    aput-byte v5, v3, v8

    .line 81
    aget-byte v5, v3, v8

    const/4 v11, 0x0

    aget-byte v12, v10, v11

    and-int/2addr v12, v6

    shl-int/lit8 v6, v12, 0x2

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v8

    .line 82
    aget-byte v5, p6, v11

    and-int/lit16 v5, v5, 0xff

    div-int/lit16 v5, v5, 0xc8

    int-to-byte v5, v5

    const/4 v6, 0x3

    aput-byte v5, v3, v6

    .line 83
    aget-byte v5, p5, v11

    iget v6, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->brightness:I

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x14

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    const/4 v6, 0x4

    aput-byte v5, v3, v6

    .line 84
    aget-byte v5, p4, v11

    and-int/lit8 v5, v5, 0x1f

    int-to-byte v5, v5

    const/4 v12, 0x5

    aput-byte v5, v3, v12

    .line 86
    aget-byte v5, p2, v11

    const/4 v11, 0x1

    aget-byte v6, p2, v11

    if-eq v5, v6, :cond_1

    .line 87
    and-int/lit8 v5, v7, 0x1

    int-to-byte v5, v5

    aput-byte v5, v2, v8

    .line 88
    aget-byte v5, v2, v8

    const/4 v6, 0x1

    aget-byte v13, v9, v6

    and-int/2addr v13, v6

    shl-int/lit8 v11, v13, 0x1

    int-to-byte v11, v11

    or-int/2addr v5, v11

    int-to-byte v5, v5

    aput-byte v5, v2, v8

    .line 89
    aget-byte v5, v2, v8

    aget-byte v11, v10, v6

    and-int/2addr v11, v6

    shl-int/2addr v11, v8

    int-to-byte v11, v11

    or-int/2addr v5, v11

    int-to-byte v5, v5

    aput-byte v5, v2, v8

    .line 90
    aget-byte v5, p6, v6

    and-int/lit16 v5, v5, 0xff

    div-int/lit8 v5, v5, 0x14

    int-to-byte v5, v5

    const/4 v8, 0x3

    aput-byte v5, v2, v8

    .line 91
    aget-byte v5, p5, v6

    iget v8, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->brightness:I

    mul-int/2addr v5, v8

    div-int/lit8 v5, v5, 0x64

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    const/4 v8, 0x4

    aput-byte v5, v2, v8

    .line 92
    aget-byte v5, p4, v6

    and-int/lit8 v5, v5, 0x1f

    int-to-byte v5, v5

    aput-byte v5, v2, v12

    .line 94
    const/4 v5, 0x0

    aget-byte v8, p2, v5

    aget-byte v11, p2, v6

    or-int/2addr v8, v11

    const v11, 0x7f800

    and-int/2addr v8, v11

    shr-int/lit8 v8, v8, 0xb

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    .line 95
    aget-byte v8, p2, v5

    aget-byte v11, p2, v6

    or-int/2addr v8, v11

    and-int/lit16 v8, v8, 0x600

    shr-int/lit8 v8, v8, 0x9

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    .line 96
    const-string v8, "singleLight"

    invoke-direct {v0, v2, v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->setAtlLin2Data([BLjava/lang/String;)V

    .line 98
    aget-byte v8, p2, v5

    aget-byte v11, p2, v6

    or-int/2addr v8, v11

    and-int/lit16 v8, v8, 0x1fe

    shr-int/2addr v8, v6

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    .line 99
    aget-byte v8, p2, v5

    aget-byte v5, p2, v6

    or-int/2addr v5, v8

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    .line 100
    const-string v5, "singleLight"

    invoke-direct {v0, v2, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->setAtlLin3Data([BLjava/lang/String;)V

    goto :goto_1

    .line 103
    :cond_1
    const/4 v6, 0x1

    :goto_1
    const/4 v5, 0x0

    aget-byte v8, p2, v5

    aget-byte v11, p2, v6

    or-int/2addr v8, v11

    const v11, 0x7f800

    and-int/2addr v8, v11

    shr-int/lit8 v8, v8, 0xb

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 104
    aget-byte v8, p2, v5

    aget-byte v11, p2, v6

    or-int/2addr v8, v11

    and-int/lit16 v8, v8, 0x600

    shr-int/lit8 v8, v8, 0x9

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    .line 105
    const-string v8, "singleLight"

    invoke-direct {v0, v3, v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->setAtlLin2Data([BLjava/lang/String;)V

    .line 107
    aget-byte v8, p2, v5

    aget-byte v11, p2, v6

    or-int/2addr v8, v11

    and-int/lit16 v8, v8, 0x1fe

    shr-int/2addr v8, v6

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 108
    aget-byte v5, p2, v5

    aget-byte v8, p2, v6

    or-int/2addr v5, v8

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    .line 109
    const-string v5, "singleLight"

    invoke-direct {v0, v3, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;->setAtlLin3Data([BLjava/lang/String;)V

    .line 110
    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method
