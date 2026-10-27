.class public final enum Lcom/google/i18n/phonenumbers/h$b;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/i18n/phonenumbers/h$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/i18n/phonenumbers/h$b;

.field public static final enum EXACT_MATCH:Lcom/google/i18n/phonenumbers/h$b;

.field public static final enum NOT_A_NUMBER:Lcom/google/i18n/phonenumbers/h$b;

.field public static final enum NO_MATCH:Lcom/google/i18n/phonenumbers/h$b;

.field public static final enum NSN_MATCH:Lcom/google/i18n/phonenumbers/h$b;

.field public static final enum SHORT_NSN_MATCH:Lcom/google/i18n/phonenumbers/h$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 489
    new-instance v0, Lcom/google/i18n/phonenumbers/h$b;

    const/4 v1, 0x0

    const-string v2, "NOT_A_NUMBER"

    invoke-direct {v0, v2, v1}, Lcom/google/i18n/phonenumbers/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/h$b;->NOT_A_NUMBER:Lcom/google/i18n/phonenumbers/h$b;

    .line 490
    new-instance v0, Lcom/google/i18n/phonenumbers/h$b;

    const/4 v2, 0x1

    const-string v3, "NO_MATCH"

    invoke-direct {v0, v3, v2}, Lcom/google/i18n/phonenumbers/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/h$b;->NO_MATCH:Lcom/google/i18n/phonenumbers/h$b;

    .line 491
    new-instance v0, Lcom/google/i18n/phonenumbers/h$b;

    const/4 v3, 0x2

    const-string v4, "SHORT_NSN_MATCH"

    invoke-direct {v0, v4, v3}, Lcom/google/i18n/phonenumbers/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/h$b;->SHORT_NSN_MATCH:Lcom/google/i18n/phonenumbers/h$b;

    .line 492
    new-instance v0, Lcom/google/i18n/phonenumbers/h$b;

    const/4 v4, 0x3

    const-string v5, "NSN_MATCH"

    invoke-direct {v0, v5, v4}, Lcom/google/i18n/phonenumbers/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/h$b;->NSN_MATCH:Lcom/google/i18n/phonenumbers/h$b;

    .line 493
    new-instance v0, Lcom/google/i18n/phonenumbers/h$b;

    const/4 v5, 0x4

    const-string v6, "EXACT_MATCH"

    invoke-direct {v0, v6, v5}, Lcom/google/i18n/phonenumbers/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/h$b;->EXACT_MATCH:Lcom/google/i18n/phonenumbers/h$b;

    const/4 v0, 0x5

    .line 488
    new-array v0, v0, [Lcom/google/i18n/phonenumbers/h$b;

    sget-object v6, Lcom/google/i18n/phonenumbers/h$b;->NOT_A_NUMBER:Lcom/google/i18n/phonenumbers/h$b;

    aput-object v6, v0, v1

    sget-object v1, Lcom/google/i18n/phonenumbers/h$b;->NO_MATCH:Lcom/google/i18n/phonenumbers/h$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/i18n/phonenumbers/h$b;->SHORT_NSN_MATCH:Lcom/google/i18n/phonenumbers/h$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/i18n/phonenumbers/h$b;->NSN_MATCH:Lcom/google/i18n/phonenumbers/h$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/i18n/phonenumbers/h$b;->EXACT_MATCH:Lcom/google/i18n/phonenumbers/h$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/i18n/phonenumbers/h$b;->$VALUES:[Lcom/google/i18n/phonenumbers/h$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 488
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$b;
    .locals 1

    .line 488
    const-class v0, Lcom/google/i18n/phonenumbers/h$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/i18n/phonenumbers/h$b;

    return-object p0
.end method

.method public static values()[Lcom/google/i18n/phonenumbers/h$b;
    .locals 1

    .line 488
    sget-object v0, Lcom/google/i18n/phonenumbers/h$b;->$VALUES:[Lcom/google/i18n/phonenumbers/h$b;

    invoke-virtual {v0}, [Lcom/google/i18n/phonenumbers/h$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/i18n/phonenumbers/h$b;

    return-object v0
.end method
