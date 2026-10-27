.class Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent$EventHolder;
.super Ljava/lang/Object;
.source "LogicHvacEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;-><init>(Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent$EventHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;
    .locals 1

    .line 17
    sget-object v0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent$EventHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;

    return-object v0
.end method
