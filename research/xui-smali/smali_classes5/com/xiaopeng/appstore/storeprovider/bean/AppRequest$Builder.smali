.class public Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;
.super Ljava/lang/Object;
.source "AppRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAppIcons:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

.field private final mBizUkName:Ljava/lang/String;

.field private mConfigMd5:Ljava/lang/String;

.field private mVersionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizUkName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bizUkName"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;->mBizUkName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;->mBizUkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;->mVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;->mConfigMd5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;->mAppIcons:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;
    .locals 1

    .line 104
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;-><init>(Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;)V

    return-object v0
.end method

.method public setAppIcons(Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;)Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;
    .locals 0
    .param p1, "appIcons"    # Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appIcons"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;->mAppIcons:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    .line 100
    return-object p0
.end method

.method public setConfigMd5(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;
    .locals 0
    .param p1, "configMd5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configMd5"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;->mConfigMd5:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public setVersionCode(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;
    .locals 0
    .param p1, "versionCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionCode"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;->mVersionCode:Ljava/lang/String;

    .line 90
    return-object p0
.end method
