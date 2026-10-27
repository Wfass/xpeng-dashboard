.class public final Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;
.super Ljava/lang/Object;
.source "GlobalConfig.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG_FLAG_FILE:Ljava/lang/String; = "/NETCHANNEL_DEBUG.xp"

.field private static final DOT:Ljava/lang/String; = "."

.field public static final EVENT_NAME_FAIL:Ljava/lang/String; = "data_oss_fail"

.field public static final EVENT_NAME_SUCCESS:Ljava/lang/String; = "data_oss_success"

.field public static final MOLE_OSS_FAILED_BUTTON_ID:Ljava/lang/String; = "B007"

.field public static final MOLE_OSS_SUCCEED_BUTTON_ID:Ljava/lang/String; = "B006"

.field public static final MOLE_PAGE_ID:Ljava/lang/String; = "P00013"

.field public static final PACKAGE_IDENTIFIER:Ljava/lang/String; = "XmartPackageId"

.field private static sApplication:Landroid/app/Application;

.field private static sApplicationName:Ljava/lang/String;

.field private static sDebuggable:Z

.field private static sSimplePackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    nop

    .line 42
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/NETCHANNEL_DEBUG.xp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sDebuggable:Z

    .line 44
    .end local v0    # "file":Ljava/io/File;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debuggable()Z
    .locals 1

    .line 92
    sget-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sDebuggable:Z

    return v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 51
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getApplicationName()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 61
    const-string v0, ""

    return-object v0

    .line 64
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sApplicationName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 65
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sApplicationName:Ljava/lang/String;

    .line 68
    :cond_1
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sApplicationName:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationSimpleName()Ljava/lang/String;
    .locals 3

    .line 72
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 73
    const-string v0, ""

    return-object v0

    .line 76
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sSimplePackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 77
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sSimplePackageName:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sSimplePackageName:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 79
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sSimplePackageName:Ljava/lang/String;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sSimplePackageName:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sSimplePackageName:Ljava/lang/String;

    .line 83
    :cond_1
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sSimplePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkType()I
    .locals 1

    .line 87
    nop

    .line 88
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 55
    nop

    .line 56
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/http/HttpsUtils;->getTLS2SocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public static setApplicationContext(Landroid/app/Application;)V
    .locals 0
    .param p0, "application"    # Landroid/app/Application;

    .line 47
    sput-object p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->sApplication:Landroid/app/Application;

    .line 48
    return-void
.end method
