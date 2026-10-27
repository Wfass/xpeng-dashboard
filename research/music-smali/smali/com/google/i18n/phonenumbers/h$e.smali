.class public final enum Lcom/google/i18n/phonenumbers/h$e;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/i18n/phonenumbers/h$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/i18n/phonenumbers/h$e;

.field public static final enum INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/h$e;

.field public static final enum INVALID_LENGTH:Lcom/google/i18n/phonenumbers/h$e;

.field public static final enum IS_POSSIBLE:Lcom/google/i18n/phonenumbers/h$e;

.field public static final enum IS_POSSIBLE_LOCAL_ONLY:Lcom/google/i18n/phonenumbers/h$e;

.field public static final enum TOO_LONG:Lcom/google/i18n/phonenumbers/h$e;

.field public static final enum TOO_SHORT:Lcom/google/i18n/phonenumbers/h$e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 501
    new-instance v0, Lcom/google/i18n/phonenumbers/h$e;

    const/4 v1, 0x0

    const-string v2, "IS_POSSIBLE"

    invoke-direct {v0, v2, v1}, Lcom/google/i18n/phonenumbers/h$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/h$e;->IS_POSSIBLE:Lcom/google/i18n/phonenumbers/h$e;

    .line 507
    new-instance v0, Lcom/google/i18n/phonenumbers/h$e;

    const/4 v2, 0x1

    const-string v3, "IS_POSSIBLE_LOCAL_ONLY"

    invoke-direct {v0, v3, v2}, Lcom/google/i18n/phonenumbers/h$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/h$e;->IS_POSSIBLE_LOCAL_ONLY:Lcom/google/i18n/phonenumbers/h$e;

    .line 509
    new-instance v0, Lcom/google/i18n/phonenumbers/h$e;

    const/4 v3, 0x2

    const-string v4, "INVALID_COUNTRY_CODE"

    invoke-direct {v0, v4, v3}, Lcom/google/i18n/phonenumbers/h$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/h$e;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/h$e;

    .line 511
    new-instance v0, Lcom/google/i18n/phonenumbers/h$e;

    const/4 v4, 0x3

    const-string v5, "TOO_SHORT"

    invoke-direct {v0, v5, v4}, Lcom/google/i18n/phonenumbers/h$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/h$e;->TOO_SHORT:Lcom/google/i18n/phonenumbers/h$e;

    .line 519
    new-instance v0, Lcom/google/i18n/phonenumbers/h$e;

    const/4 v5, 0x4

    const-string v6, "INVALID_LENGTH"

    invoke-direct {v0, v6, v5}, Lcom/google/i18n/phonenumbers/h$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/h$e;->INVALID_LENGTH:Lcom/google/i18n/phonenumbers/h$e;

    .line 521
    new-instance v0, Lcom/google/i18n/phonenumbers/h$e;

    const/4 v6, 0x5

    const-string v7, "TOO_LONG"

    invoke-direct {v0, v7, v6}, Lcom/google/i18n/phonenumbers/h$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/h$e;->TOO_LONG:Lcom/google/i18n/phonenumbers/h$e;

    const/4 v0, 0x6

    .line 499
    new-array v0, v0, [Lcom/google/i18n/phonenumbers/h$e;

    sget-object v7, Lcom/google/i18n/phonenumbers/h$e;->IS_POSSIBLE:Lcom/google/i18n/phonenumbers/h$e;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/i18n/phonenumbers/h$e;->IS_POSSIBLE_LOCAL_ONLY:Lcom/google/i18n/phonenumbers/h$e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/i18n/phonenumbers/h$e;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/h$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/i18n/phonenumbers/h$e;->TOO_SHORT:Lcom/google/i18n/phonenumbers/h$e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/i18n/phonenumbers/h$e;->INVALID_LENGTH:Lcom/google/i18n/phonenumbers/h$e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/i18n/phonenumbers/h$e;->TOO_LONG:Lcom/google/i18n/phonenumbers/h$e;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/i18n/phonenumbers/h$e;->$VALUES:[Lcom/google/i18n/phonenumbers/h$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 499
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$e;
    .locals 1

    .line 499
    const-class v0, Lcom/google/i18n/phonenumbers/h$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/i18n/phonenumbers/h$e;

    return-object p0
.end method

.method public static values()[Lcom/google/i18n/phonenumbers/h$e;
    .locals 1

    .line 499
    sget-object v0, Lcom/google/i18n/phonenumbers/h$e;->$VALUES:[Lcom/google/i18n/phonenumbers/h$e;

    invoke-virtual {v0}, [Lcom/google/i18n/phonenumbers/h$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/i18n/phonenumbers/h$e;

    return-object v0
.end method
