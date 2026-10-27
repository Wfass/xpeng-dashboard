.class public Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appAssembleInfo:Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;

.field private appId:Ljava/lang/String;

.field public bundle:Landroid/os/Bundle;

.field private category:I

.field private dockerDayIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

.field private dockerIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

.field public isSupportDisplay:Z

.field public isSupportOpen:Z

.field public mScreenOpen:[I

.field public mScreenShow:[I

.field private pkgName:Ljava/lang/String;

.field private status:I

.field private storeIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

.field private storeNightIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

.field private subCategory:I

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    new-instance v0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->category:I

    .line 31
    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->subCategory:I

    .line 35
    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->status:I

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 80
    iput-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenShow:[I

    new-array v0, v0, [I

    .line 84
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenOpen:[I

    .line 87
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->initScreenShow()V

    .line 88
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->initScreenOpen()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->category:I

    .line 31
    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->subCategory:I

    .line 35
    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->status:I

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 80
    iput-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenShow:[I

    new-array v0, v0, [I

    .line 84
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenOpen:[I

    .line 104
    iput p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->category:I

    const/4 v0, 0x1

    if-eq v0, p1, :cond_1

    .line 106
    invoke-static {}, Lcom/xiaopeng/xuimanager/applist/ApplistConst;->getCategoryMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 107
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->appId:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_0
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->appId:Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_1
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->appId:Ljava/lang/String;

    .line 116
    :goto_0
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->pkgName:Ljava/lang/String;

    .line 117
    iput-object p4, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->title:Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->initScreenShow()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->category:I

    .line 31
    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->subCategory:I

    .line 35
    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->status:I

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 80
    iput-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenShow:[I

    new-array v0, v0, [I

    .line 84
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenOpen:[I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->category:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->subCategory:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->status:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->appId:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->pkgName:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->title:Ljava/lang/String;

    .line 148
    const-class v0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->storeIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    .line 149
    const-class v0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->storeNightIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    .line 150
    const-class v0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->dockerIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    .line 151
    const-class v0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->dockerDayIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->isSupportDisplay:Z

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->isSupportOpen:Z

    .line 154
    const-class v0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->appAssembleInfo:Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;

    .line 155
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->bundle:Landroid/os/Bundle;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenShow:[I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenOpen:[I

    return-void
.end method

.method public static getCategory(Ljava/lang/String;)I
    .locals 4

    .line 412
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "."

    .line 416
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    const-string v2, "applist_"

    .line 417
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 421
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 422
    invoke-static {}, Lcom/xiaopeng/xuimanager/applist/ApplistConst;->getCategoryMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 423
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 424
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private initScreenOpen()V
    .locals 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initScreenOpen mScreenOpen.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenOpen:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "initScreenOpen is set to 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppInfo"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenOpen:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    .line 100
    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initScreenShow()V
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initScreenShow mScreenShow.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenShow:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "initScreenShow is set to 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppInfo"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenShow:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    .line 94
    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppAssembleInfo()Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->appAssembleInfo:Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->category:I

    return v0
.end method

.method public getDockerDayIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->dockerDayIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    return-object v0
.end method

.method public getDockerIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->dockerIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenOpen(I)I
    .locals 2

    if-ltz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenOpen:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public getScreenShow(I)I
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenShow:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppInfo"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenShow:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public getStatus()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->status:I

    return v0
.end method

.method public getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->storeIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    return-object v0
.end method

.method public getStoreNightIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->storeNightIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    return-object v0
.end method

.method public getSubCategory()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->subCategory:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isFirstLaunch()Z
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->bundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "firstLaunch"

    .line 376
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAppAssembleInfo(Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->appAssembleInfo:Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2

    .line 225
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->category:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_2

    if-lez v0, :cond_2

    .line 226
    invoke-static {}, Lcom/xiaopeng/xuimanager/applist/ApplistConst;->getCategoryMap()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->category:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->category:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->appId:Ljava/lang/String;

    goto :goto_0

    .line 233
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->appId:Ljava/lang/String;

    goto :goto_0

    .line 236
    :cond_2
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->appId:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setCategory(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->category:I

    return-void
.end method

.method public setDockerDayIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->dockerDayIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    return-void
.end method

.method public setDockerIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->dockerIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    return-void
.end method

.method public declared-synchronized setIsFirstLaunch(Z)V
    .locals 2

    monitor-enter p0

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->bundle:Landroid/os/Bundle;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->bundle:Landroid/os/Bundle;

    const-string v1, "firstLaunch"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public setScreenOpen(II)V
    .locals 2

    if-ltz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenOpen:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 138
    aput p2, v0, p1

    :cond_0
    return-void
.end method

.method public setScreenShow(II)V
    .locals 2

    if-ltz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenShow:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 129
    aput p2, v0, p1

    :cond_0
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->status:I

    return-void
.end method

.method public setStoreIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->storeIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    return-void
.end method

.method public setStoreNightIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->storeNightIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    return-void
.end method

.method public setSubCategory(I)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->subCategory:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->category:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",subCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->subCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isSupportDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->isSupportDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isSupportOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->isSupportOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mScreenShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenShow:[I

    .line 408
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]mScreenOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenOpen:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 386
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->subCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->storeIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->storeNightIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->dockerIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->dockerDayIcon:Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 396
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->isSupportDisplay:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 397
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->isSupportOpen:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->appAssembleInfo:Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 400
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenShow:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 401
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenOpen:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
