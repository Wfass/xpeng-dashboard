.class public Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;
.super Ljava/lang/Object;
.source "AppOperationFiles.java"


# static fields
.field private static final APPLIST_OPERATION_DIR:Ljava/lang/String; = "/data/operation/applist/"

.field private static final CONFIG_DIR:Ljava/lang/String; = "/data/operation/applist/config/"

.field private static final ICON_DIR:Ljava/lang/String; = "/data/operation/applist/icon/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 31
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static configFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;
    .locals 4
    .param p0, "appInfoEntity"    # Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 27
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/operation/applist/config/"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->config_url:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static dockIconFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;
    .locals 4
    .param p0, "appInfoEntity"    # Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 19
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/operation/applist/icon/"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_dock.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static smallIconFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;
    .locals 4
    .param p0, "appInfoEntity"    # Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 15
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/operation/applist/icon/"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_small.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static smallNightIconFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;
    .locals 4
    .param p0, "appInfoEntity"    # Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 23
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/operation/applist/icon/"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_small_night.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
