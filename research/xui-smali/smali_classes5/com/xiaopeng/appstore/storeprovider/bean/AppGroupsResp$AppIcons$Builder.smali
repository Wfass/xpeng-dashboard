.class public Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;
.super Ljava/lang/Object;
.source "AppGroupsResp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field dock_icon:Ljava/lang/String;

.field dock_icon_md5:Ljava/lang/String;

.field large_icon:Ljava/lang/String;

.field large_icon_md5:Ljava/lang/String;

.field small_icon:Ljava/lang/String;

.field small_icon_md5:Ljava/lang/String;

.field small_night_icon:Ljava/lang/String;

.field small_night_icon_md5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;
    .locals 1

    .line 335
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;-><init>(Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;)V

    return-object v0
.end method

.method public setDockIcon(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;
    .locals 0
    .param p1, "dock_icon"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dock_icon"
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;->dock_icon:Ljava/lang/String;

    .line 316
    return-object p0
.end method

.method public setDockIconMd5(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;
    .locals 0
    .param p1, "dock_icon_md5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dock_icon_md5"
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;->dock_icon_md5:Ljava/lang/String;

    .line 321
    return-object p0
.end method

.method public setLargeIcon(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;
    .locals 0
    .param p1, "large_icon"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "large_icon"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;->large_icon:Ljava/lang/String;

    .line 301
    return-object p0
.end method

.method public setLargeIconMd5(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;
    .locals 0
    .param p1, "large_icon_md5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "large_icon_md5"
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;->large_icon_md5:Ljava/lang/String;

    .line 311
    return-object p0
.end method

.method public setSmallIcon(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;
    .locals 0
    .param p1, "small_icon"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "small_icon"
        }
    .end annotation

    .line 295
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;->small_icon:Ljava/lang/String;

    .line 296
    return-object p0
.end method

.method public setSmallIconMd5(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;
    .locals 0
    .param p1, "small_icon_md5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "small_icon_md5"
        }
    .end annotation

    .line 305
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;->small_icon_md5:Ljava/lang/String;

    .line 306
    return-object p0
.end method

.method public setSmallNightIcon(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;
    .locals 0
    .param p1, "night_icon"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "night_icon"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;->small_night_icon:Ljava/lang/String;

    .line 326
    return-object p0
.end method

.method public setSmallNightIconMd5(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;
    .locals 0
    .param p1, "night_icon_md5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "night_icon_md5"
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;->small_night_icon_md5:Ljava/lang/String;

    .line 331
    return-object p0
.end method
