.class Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;
.super Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
.source "AccessAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessAppInfo"
.end annotation


# instance fields
.field public mIconUrl:Ljava/lang/String;

.field public mIconUrlChanged:Z

.field public volatile mIsAuthed:Z

.field public volatile mIsInstalled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 823
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;-><init>()V

    .line 817
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIconUrl:Ljava/lang/String;

    .line 818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIconUrlChanged:Z

    .line 819
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsInstalled:Z

    .line 820
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsAuthed:Z

    .line 824
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # I
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;

    .line 827
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIconUrl:Ljava/lang/String;

    .line 818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIconUrlChanged:Z

    .line 819
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsInstalled:Z

    .line 820
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsAuthed:Z

    .line 828
    return-void
.end method


# virtual methods
.method public toParcelableAppInfo()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 2

    .line 831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 832
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 834
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 835
    sget-object v1, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 836
    .local v1, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 837
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isAuthed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsAuthed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isInstalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->mIsInstalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isFirstLaunch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$AccessAppInfo;->isFirstLaunch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 842
    return-object v0
.end method
