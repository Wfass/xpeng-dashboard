.class public Lcom/xiaopeng/aicabin/AConstant;
.super Ljava/lang/Object;
.source "AConstant.java"


# static fields
.field public static final BUILD_DEPENDENCY_MODEL:Ljava/lang/String; = "XOS5.0"

.field public static final BUILD_DEPENDENCY_VERSION:Ljava/lang/String; = "5.4.0_dev"

.field public static final BUILD_GIT_BRANCH:Ljava/lang/String; = ""

.field public static final BUILD_GIT_REV:Ljava/lang/String; = "e02dba3"

.field public static final BUILD_PUB_LIBS_DEP_VER:Ljava/lang/String; = "1.0.8-SNAPSHOT"

.field public static final BUILD_TIME:Ljava/lang/String; = "2024-10-21 10:38"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final BUILD_VERSION:Ljava/lang/String; = "1.0.24"

.field public static final DEBUG:Z = false

.field public static final DEBUG_LOG:Z

.field public static final FIND_SERVICE:Ljava/lang/String; = "FindAICabinService"

.field public static final IS_DEV_ROM:Z

.field public static IS_RELEASE_ROM:Z = false

.field public static final IS_USER:Z

.field public static SUFFIX:Ljava/lang/String; = ""


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/aicabin/AConstant;->IS_USER:Z

    .line 13
    invoke-static {}, Lcom/xiaopeng/aicabin/AConstant;->isDevRom()Z

    move-result v1

    sput-boolean v1, Lcom/xiaopeng/aicabin/AConstant;->IS_DEV_ROM:Z

    .line 14
    invoke-static {}, Lcom/xiaopeng/aicabin/AConstant;->isReleaseRom()Z

    move-result v1

    sput-boolean v1, Lcom/xiaopeng/aicabin/AConstant;->IS_RELEASE_ROM:Z

    const/4 v1, 0x0

    const-string v2, "persist.sys.xiaopeng.aicabin_log"

    .line 15
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Lcom/xiaopeng/aicabin/AConstant;->DEBUG_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isDevRom()Z
    .locals 3

    const-string v0, "ro.xiaopeng.software"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 4
    array-length v1, v0

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    const-string v1, "DEV"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isReleaseRom()Z
    .locals 3

    const-string v0, "ro.xiaopeng.software"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 4
    array-length v1, v0

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    const-string v1, "Release"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setTagSuffix(Ljava/lang/String;)V
    .locals 2

    const-string v0, "."

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/aicabin/AConstant;->SUFFIX:Ljava/lang/String;

    return-void
.end method
