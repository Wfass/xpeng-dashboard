.class final enum Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;
.super Ljava/lang/Enum;
.source "SmartLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DayNight"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

.field public static final enum DAY:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

.field public static final enum NIGHT:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

.field public static final enum UNKNOWN:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 57
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->UNKNOWN:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    const-string v1, "DAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->DAY:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    const-string v1, "NIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->NIGHT:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->UNKNOWN:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->DAY:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->NIGHT:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->$VALUES:[Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 56
    const-class v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;
    .locals 1

    .line 56
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->$VALUES:[Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    invoke-virtual {v0}, [Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    return-object v0
.end method
