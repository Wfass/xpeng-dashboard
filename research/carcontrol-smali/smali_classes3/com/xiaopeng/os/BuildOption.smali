.class public Lcom/xiaopeng/os/BuildOption;
.super Ljava/lang/Object;
.source "BuildOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/os/BuildOption$VersionNames;,
        Lcom/xiaopeng/os/BuildOption$VersionCodes;,
        Lcom/xiaopeng/os/BuildOption$Version;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/xiaopeng/os/BuildOption;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/xiaopeng/os/BuildOption;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "unknown"

    .line 25
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
