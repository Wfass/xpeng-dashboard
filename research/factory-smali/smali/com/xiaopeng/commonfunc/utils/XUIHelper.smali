.class public Lcom/xiaopeng/commonfunc/utils/XUIHelper;
.super Ljava/lang/Object;
.source "XUIHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XUIHelper"

.field private static final sServiceConnection:Landroid/content/ServiceConnection;

.field private static sXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/XUIHelper$1;

    invoke-direct {v0}, Lcom/xiaopeng/commonfunc/utils/XUIHelper$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/XUIHelper;->sServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deinit()V
    .locals 1

    .line 59
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/XUIHelper;->sXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/XUIHelper;->sXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->disconnect()V

    .line 62
    :cond_0
    return-void
.end method

.method public static getMediaCenterManager()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
    .locals 3

    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, "mediaCenterManager":Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/XUIHelper;->isXUIConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/XUIHelper;->sXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    const-string v2, "mediacenter"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 45
    :cond_0
    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;->printStackTrace()V

    .line 46
    .end local v1    # "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    :goto_0
    return-object v0
.end method

.method public static getXUIManager()Lcom/xiaopeng/xuimanager/XUIManager;
    .locals 1

    .line 34
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/XUIHelper;->sXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/XUIHelper;->sServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/xiaopeng/xuimanager/XUIManager;->createXUIManager(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/XUIHelper;->sXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    .line 55
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/XUIHelper;->sXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->connect()V

    .line 56
    return-void
.end method

.method private static isXUIConnected()Z
    .locals 1

    .line 50
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/XUIHelper;->sXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/commonfunc/utils/XUIHelper;->sXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
