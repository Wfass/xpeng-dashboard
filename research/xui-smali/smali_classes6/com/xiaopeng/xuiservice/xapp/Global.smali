.class public Lcom/xiaopeng/xuiservice/xapp/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field private static mWindowRect:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sGameEnable:Z

.field private static sPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/xapp/Global;->sGameEnable:Z

    .line 9
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/Global;->mWindowRect:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentRect(I)Landroid/graphics/Rect;
    .locals 2
    .param p0, "displayId"    # I

    .line 24
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/Global;->mWindowRect:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public static isGameModeEnable()Z
    .locals 1

    .line 16
    sget-boolean v0, Lcom/xiaopeng/xuiservice/xapp/Global;->sGameEnable:Z

    return v0
.end method

.method public static saveWindowRect(ILandroid/graphics/Rect;)V
    .locals 2
    .param p0, "displayId"    # I
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 20
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/Global;->mWindowRect:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public static setGameModeEnable(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 12
    sput-boolean p0, Lcom/xiaopeng/xuiservice/xapp/Global;->sGameEnable:Z

    .line 13
    return-void
.end method
