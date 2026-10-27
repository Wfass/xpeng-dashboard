.class public abstract Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;
.super Ljava/lang/Object;
.source "BaseFeatureOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption$SingletonHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseFeatureOption"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;
    .locals 1

    .line 8
    invoke-static {}, Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;->createFeatureOption()Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;

    move-result-object v0

    return-object v0
.end method

.method private static createFeatureOption()Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;
    .locals 3

    const-string v0, "PrivacyManager"

    .line 22
    :try_start_0
    sget v1, Lcom/xiaopeng/os/BuildOption$Version;->VERSION_CODE:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const-string v1, "createFeatureOption: XOS_5_0"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v1, Lcom/xiaopeng/privacymanager/feature/H93FeatureOption;

    invoke-direct {v1}, Lcom/xiaopeng/privacymanager/feature/H93FeatureOption;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string v1, "createFeatureOption: XOS_5_0_Older"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v0, Lcom/xiaopeng/privacymanager/feature/E28FeatureOption;

    invoke-direct {v0}, Lcom/xiaopeng/privacymanager/feature/E28FeatureOption;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;
    .locals 1

    .line 16
    invoke-static {}, Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption$SingletonHolder;->access$100()Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentProviderAuthority()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivacyServiceAction()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivacyServicePackage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivacySettingServer()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
