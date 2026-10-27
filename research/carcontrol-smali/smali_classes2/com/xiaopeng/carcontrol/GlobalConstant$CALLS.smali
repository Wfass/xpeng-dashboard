.class public Lcom/xiaopeng/carcontrol/GlobalConstant$CALLS;
.super Ljava/lang/Object;
.source "GlobalConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/GlobalConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CALLS"
.end annotation


# static fields
.field public static final RESCUE_CALLS_CN:[Ljava/lang/String;

.field public static final RESCUE_CALLS_DK:[Ljava/lang/String;

.field public static final RESCUE_CALLS_NL:[Ljava/lang/String;

.field public static final RESCUE_CALLS_NO:[Ljava/lang/String;

.field public static final RESCUE_CALLS_SE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "400-819-3388"

    const-string v1, "020-37520800"

    .line 2180
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/GlobalConstant$CALLS;->RESCUE_CALLS_CN:[Ljava/lang/String;

    const-string v0, "+47 80017060"

    .line 2181
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/GlobalConstant$CALLS;->RESCUE_CALLS_NO:[Ljava/lang/String;

    const-string v0, "+46 812160608"

    .line 2182
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/GlobalConstant$CALLS;->RESCUE_CALLS_SE:[Ljava/lang/String;

    const-string v0, "+45 78724343"

    .line 2183
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/GlobalConstant$CALLS;->RESCUE_CALLS_DK:[Ljava/lang/String;

    const-string v0, "+31 202626822"

    .line 2184
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/GlobalConstant$CALLS;->RESCUE_CALLS_NL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
