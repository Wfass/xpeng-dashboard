.class public Lcom/xiaopeng/privacymanager/feature/H93FeatureOption;
.super Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;
.source "H93FeatureOption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentProviderAuthority()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.privacyservice.provider"

    return-object v0
.end method

.method public getPrivacyServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.privacyservice.PrivacyService"

    return-object v0
.end method

.method public getPrivacyServicePackage()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.privacycentral"

    return-object v0
.end method

.method public getPrivacySettingServer()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.privacycentral.PrivacySettingsServer"

    return-object v0
.end method
