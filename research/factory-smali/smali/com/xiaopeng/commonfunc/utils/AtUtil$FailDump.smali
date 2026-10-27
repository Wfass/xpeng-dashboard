.class public Lcom/xiaopeng/commonfunc/utils/AtUtil$FailDump;
.super Ljava/lang/Object;
.source "AtUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/utils/AtUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailDump"
.end annotation


# static fields
.field public static final CORE_POOL_SIZE:I = 0x2

.field public static final LOG_PATH:[Ljava/lang/String;

.field public static final SDCARD_LOG_PATH:Ljava/lang/String; = "/sdcard/Log/"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    const-string v0, "/sdcard/Log/log0/"

    const-string v1, "/sdcard/Log/mcu/log0.asc"

    const-string v2, "/data/anr/"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/AtUtil$FailDump;->LOG_PATH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
