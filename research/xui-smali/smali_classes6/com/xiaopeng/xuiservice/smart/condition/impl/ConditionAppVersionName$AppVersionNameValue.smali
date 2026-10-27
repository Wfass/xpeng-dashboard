.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName$AppVersionNameValue;
.super Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;
.source "ConditionAppVersionName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppVersionNameValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App Version Name(pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName$AppVersionNameValue;->packageName:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method protected bridge synthetic fetch()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName$AppVersionNameValue;->fetch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected fetch()Ljava/lang/String;
    .locals 4

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName$AppVersionNameValue;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 51
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 52
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 56
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXpPackageInfo packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName$AppVersionNameValue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method
