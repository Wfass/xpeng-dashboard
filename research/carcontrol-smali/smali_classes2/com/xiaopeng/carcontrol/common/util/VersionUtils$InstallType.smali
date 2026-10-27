.class public final enum Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;
.super Ljava/lang/Enum;
.source "VersionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/common/util/VersionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InstallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

.field public static final enum NEW_INSTALL:Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

.field public static final enum NO_INSTALL:Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

.field public static final enum UPGRADE_INSTALL:Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 19
    new-instance v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    const-string v1, "NEW_INSTALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;->NEW_INSTALL:Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    .line 23
    new-instance v1, Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    const-string v3, "UPGRADE_INSTALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;->UPGRADE_INSTALL:Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    .line 27
    new-instance v3, Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    const-string v5, "NO_INSTALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;->NO_INSTALL:Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 15
    sput-object v5, Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;->$VALUES:[Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 15
    const-class v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;
    .locals 1

    .line 15
    sget-object v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;->$VALUES:[Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    return-object v0
.end method
