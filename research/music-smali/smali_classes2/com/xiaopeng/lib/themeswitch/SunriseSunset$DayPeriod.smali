.class public final enum Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;
.super Ljava/lang/Enum;
.source "SunriseSunset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/themeswitch/SunriseSunset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DayPeriod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

.field public static final enum ASTRONOMICAL_TWILIGHT:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

.field public static final enum CIVIL_TWILIGHT:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

.field public static final enum DAY:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

.field public static final enum NAUTICAL_TWILIGHT:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

.field public static final enum NIGHT:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 40
    new-instance v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    const/4 v1, 0x0

    const-string v2, "DAY"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->DAY:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    .line 41
    new-instance v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    const/4 v2, 0x1

    const-string v3, "CIVIL_TWILIGHT"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->CIVIL_TWILIGHT:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    .line 42
    new-instance v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    const/4 v3, 0x2

    const-string v4, "NAUTICAL_TWILIGHT"

    invoke-direct {v0, v4, v3}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->NAUTICAL_TWILIGHT:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    .line 43
    new-instance v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    const/4 v4, 0x3

    const-string v5, "ASTRONOMICAL_TWILIGHT"

    invoke-direct {v0, v5, v4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->ASTRONOMICAL_TWILIGHT:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    .line 44
    new-instance v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    const/4 v5, 0x4

    const-string v6, "NIGHT"

    invoke-direct {v0, v6, v5}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->NIGHT:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    const/4 v0, 0x5

    .line 39
    new-array v0, v0, [Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    sget-object v6, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->DAY:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    aput-object v6, v0, v1

    sget-object v1, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->CIVIL_TWILIGHT:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->NAUTICAL_TWILIGHT:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->ASTRONOMICAL_TWILIGHT:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->NIGHT:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->$VALUES:[Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;
    .locals 1

    .line 39
    const-class v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;
    .locals 1

    .line 39
    sget-object v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->$VALUES:[Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    return-object v0
.end method
