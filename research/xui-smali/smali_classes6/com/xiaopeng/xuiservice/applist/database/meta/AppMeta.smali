.class public Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
.super Ljava/lang/Object;
.source "AppMeta.java"


# annotations
.annotation build Landroidx/room/Entity;
    primaryKeys = {
        "appId"
    }
    tableName = "applist_meta"
.end annotation


# instance fields
.field public appId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public category:I

.field public dayIconPath:Ljava/lang/String;

.field public dockerIconPath:Ljava/lang/String;

.field public extra:Ljava/lang/String;

.field public isFirstLaunch:Z

.field public pkgName:Ljava/lang/String;

.field public status:I

.field public storeNightIconPath:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toAppMeta(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .locals 3
    .param p0, "appInfo"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;-><init>()V

    .line 49
    .local v0, "appMeta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->appId:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getCategory()I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->category:I

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStatus()I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->status:I

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->pkgName:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->title:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->isFirstLaunch()Z

    move-result v1

    iput-boolean v1, v0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->isFirstLaunch:Z

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->getBitMap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dayIconPath:Ljava/lang/String;

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreNightIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreNightIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->getBitMap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_night.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->storeNightIconPath:Ljava/lang/String;

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getDockerIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getDockerIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->getBitMap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_dock.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dockerIconPath:Ljava/lang/String;

    .line 70
    :cond_3
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 30
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "AppMeta{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    const-string v1, "appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    const-string v1, "category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->category:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    const-string v1, "isFirstLaunch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->isFirstLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    const-string v1, "status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    const-string v1, "pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    const-string v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    const-string v1, "dayIconPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dayIconPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    const-string v1, "extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
