.class public final enum Lcom/blankj/utilcode/util/BusUtils$ThreadMode;
.super Ljava/lang/Enum;
.source "BusUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/BusUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThreadMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/blankj/utilcode/util/BusUtils$ThreadMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field public static final enum CACHED:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field public static final enum CPU:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field public static final enum IO:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field public static final enum MAIN:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field public static final enum POSTING:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field public static final enum SINGLE:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 441
    new-instance v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->MAIN:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    new-instance v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v1, "IO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->IO:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    new-instance v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v1, "CPU"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->CPU:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    new-instance v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v1, "CACHED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->CACHED:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    new-instance v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v1, "SINGLE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->SINGLE:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    new-instance v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v1, "POSTING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->POSTING:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    .line 440
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    sget-object v1, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->MAIN:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->IO:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->CPU:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->CACHED:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->SINGLE:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->POSTING:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->$VALUES:[Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 440
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blankj/utilcode/util/BusUtils$ThreadMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 440
    const-class v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    return-object v0
.end method

.method public static values()[Lcom/blankj/utilcode/util/BusUtils$ThreadMode;
    .locals 1

    .line 440
    sget-object v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->$VALUES:[Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    invoke-virtual {v0}, [Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    return-object v0
.end method
