.class public Lcom/xiaopeng/xuimanager/utils/OsUtil;
.super Ljava/lang/Object;
.source "OsUtil.java"


# static fields
.field private static buildType:I = -0x1


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

.method public static isReleaseVersion()Z
    .locals 4

    .line 14
    sget v0, Lcom/xiaopeng/xuimanager/utils/OsUtil;->buildType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v3, v0, :cond_1

    .line 15
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    sput v2, Lcom/xiaopeng/xuimanager/utils/OsUtil;->buildType:I

    goto :goto_0

    .line 18
    :cond_0
    sput v1, Lcom/xiaopeng/xuimanager/utils/OsUtil;->buildType:I

    .line 21
    :cond_1
    :goto_0
    sget v0, Lcom/xiaopeng/xuimanager/utils/OsUtil;->buildType:I

    if-ne v2, v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method
