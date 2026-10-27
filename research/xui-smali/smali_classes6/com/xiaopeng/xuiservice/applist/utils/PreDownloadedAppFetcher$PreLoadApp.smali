.class public Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;
.super Ljava/lang/Object;
.source "PreDownloadedAppFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreLoadApp"
.end annotation


# instance fields
.field public appIcons:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$AppIcons;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_icons"
    .end annotation
.end field

.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_id"
    .end annotation
.end field

.field public appName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_name"
    .end annotation
.end field

.field public appType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_type"
    .end annotation
.end field

.field public brefDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bref_desc"
    .end annotation
.end field

.field public configMd5:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "config_md5"
    .end annotation
.end field

.field public configUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "config_url"
    .end annotation
.end field

.field public downloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download_url"
    .end annotation
.end field

.field public isHidden:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_hidden"
    .end annotation
.end field

.field public isSlientInstall:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_slient_install"
    .end annotation
.end field

.field public mainEntryFlag:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "main_entry_flag"
    .end annotation
.end field

.field public md5:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "md5"
    .end annotation
.end field

.field public pkgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package_name"
    .end annotation
.end field

.field public size:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation
.end field

.field public supportScreen:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "support_screen"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public updateTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_time"
    .end annotation
.end field

.field public versionCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version_code"
    .end annotation
.end field

.field public versionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJsonStr(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;
    .locals 2
    .param p0, "json"    # Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 153
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;

    return-object v1
.end method


# virtual methods
.method public toInnerAppInfo()Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .locals 6

    .line 157
    new-instance v0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;-><init>()V

    .line 158
    .local v0, "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setCategory(I)V

    .line 159
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setTitle(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setPkgName(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setAppId(Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setStatus(I)V

    .line 163
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->supportScreen:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->supportScreen:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 164
    move v2, v4

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 166
    invoke-virtual {v0, v2, v4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setScreenShow(II)V

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->supportScreen:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    .local v2, "screen":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5, v3}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setScreenShow(II)V

    .line 171
    .end local v2    # "screen":Ljava/lang/String;
    goto :goto_1

    .line 173
    :cond_1
    const-string v1, "PreDownloadedAppFetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toInnerAppInfo,pkgName="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",Arrays.toString(info.mScreenShow)="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mScreenShow:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(supportScreen!=null&&supportScreen.size()>0)="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->supportScreen:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->supportScreen:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",supportScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->supportScreen:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 148
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
