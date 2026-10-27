.class public Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager;
.super Ljava/lang/Object;
.source "AppConfigManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;,
        Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;
    }
.end annotation


# static fields
.field public static final MODULE_NAME:Ljava/lang/String; = "AppConfigManager"

.field private static final SINGLETON:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AppConfigManager"


# instance fields
.field private final busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "xuiservice"

    const-string v2, "AppConfigManager"

    .line 185
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClientManager;->getBusAgent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v1, "appConfig"

    .line 187
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->setTagSuffix(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager;
    .locals 1

    .line 25
    sget-object v0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager;

    return-object v0
.end method


# virtual methods
.method public onPipeBusEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPipeBusParcelEvent(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V
    .locals 0

    return-void
.end method

.method public saveConfig(Ljava/lang/String;Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;)V
    .locals 5

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "config is null"

    .line 166
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 170
    new-instance v1, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;-><init>()V

    .line 171
    iput-object p1, v1, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;->packageName:Ljava/lang/String;

    .line 172
    iput-object p2, v1, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;->config:Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 173
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 174
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const/4 v2, 0x0

    const-string v3, "AppConfigManager"

    const-string v4, "CMD_SAVE_CONFIG"

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveConfig packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", config="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", ret="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "packageName is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
