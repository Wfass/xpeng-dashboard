.class Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$1;
.super Landroid/util/Singleton;
.source "AppConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager;
    .locals 2

    .line 20
    new-instance v0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager;-><init>(Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$1;->create()Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager;

    move-result-object v0

    return-object v0
.end method
