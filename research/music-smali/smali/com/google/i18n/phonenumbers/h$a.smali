.class public abstract enum Lcom/google/i18n/phonenumbers/h$a;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/i18n/phonenumbers/h$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/i18n/phonenumbers/h$a;

.field public static final enum EXACT_GROUPING:Lcom/google/i18n/phonenumbers/h$a;

.field public static final enum POSSIBLE:Lcom/google/i18n/phonenumbers/h$a;

.field public static final enum STRICT_GROUPING:Lcom/google/i18n/phonenumbers/h$a;

.field public static final enum VALID:Lcom/google/i18n/phonenumbers/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 533
    new-instance v0, Lcom/google/i18n/phonenumbers/h$a$1;

    const/4 v1, 0x0

    const-string v2, "POSSIBLE"

    invoke-direct {v0, v2, v1}, Lcom/google/i18n/phonenumbers/h$a$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/h$a;->POSSIBLE:Lcom/google/i18n/phonenumbers/h$a;

    .line 549
    new-instance v0, Lcom/google/i18n/phonenumbers/h$a$2;

    const/4 v2, 0x1

    const-string v3, "VALID"

    invoke-direct {v0, v3, v2}, Lcom/google/i18n/phonenumbers/h$a$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/h$a;->VALID:Lcom/google/i18n/phonenumbers/h$a;

    .line 575
    new-instance v0, Lcom/google/i18n/phonenumbers/h$a$3;

    const/4 v3, 0x2

    const-string v4, "STRICT_GROUPING"

    invoke-direct {v0, v4, v3}, Lcom/google/i18n/phonenumbers/h$a$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/h$a;->STRICT_GROUPING:Lcom/google/i18n/phonenumbers/h$a;

    .line 612
    new-instance v0, Lcom/google/i18n/phonenumbers/h$a$4;

    const/4 v4, 0x3

    const-string v5, "EXACT_GROUPING"

    invoke-direct {v0, v5, v4}, Lcom/google/i18n/phonenumbers/h$a$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/h$a;->EXACT_GROUPING:Lcom/google/i18n/phonenumbers/h$a;

    const/4 v0, 0x4

    .line 528
    new-array v0, v0, [Lcom/google/i18n/phonenumbers/h$a;

    sget-object v5, Lcom/google/i18n/phonenumbers/h$a;->POSSIBLE:Lcom/google/i18n/phonenumbers/h$a;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/i18n/phonenumbers/h$a;->VALID:Lcom/google/i18n/phonenumbers/h$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/i18n/phonenumbers/h$a;->STRICT_GROUPING:Lcom/google/i18n/phonenumbers/h$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/i18n/phonenumbers/h$a;->EXACT_GROUPING:Lcom/google/i18n/phonenumbers/h$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/i18n/phonenumbers/h$a;->$VALUES:[Lcom/google/i18n/phonenumbers/h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 528
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/i18n/phonenumbers/PhoneNumberUtil$1;)V
    .locals 0

    .line 528
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/h$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$a;
    .locals 1

    .line 528
    const-class v0, Lcom/google/i18n/phonenumbers/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/i18n/phonenumbers/h$a;

    return-object p0
.end method

.method public static values()[Lcom/google/i18n/phonenumbers/h$a;
    .locals 1

    .line 528
    sget-object v0, Lcom/google/i18n/phonenumbers/h$a;->$VALUES:[Lcom/google/i18n/phonenumbers/h$a;

    invoke-virtual {v0}, [Lcom/google/i18n/phonenumbers/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/i18n/phonenumbers/h$a;

    return-object v0
.end method


# virtual methods
.method abstract a(Lcom/google/i18n/phonenumbers/j$a;Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h;Lcom/google/i18n/phonenumbers/g;)Z
.end method
