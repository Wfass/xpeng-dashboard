.class final enum Lcom/google/i18n/phonenumbers/g$b;
.super Ljava/lang/Enum;
.source "PhoneNumberMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/i18n/phonenumbers/g$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/i18n/phonenumbers/g$b;

.field public static final enum DONE:Lcom/google/i18n/phonenumbers/g$b;

.field public static final enum NOT_READY:Lcom/google/i18n/phonenumbers/g$b;

.field public static final enum READY:Lcom/google/i18n/phonenumbers/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 186
    new-instance v0, Lcom/google/i18n/phonenumbers/g$b;

    const/4 v1, 0x0

    const-string v2, "NOT_READY"

    invoke-direct {v0, v2, v1}, Lcom/google/i18n/phonenumbers/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$b;->NOT_READY:Lcom/google/i18n/phonenumbers/g$b;

    new-instance v0, Lcom/google/i18n/phonenumbers/g$b;

    const/4 v2, 0x1

    const-string v3, "READY"

    invoke-direct {v0, v3, v2}, Lcom/google/i18n/phonenumbers/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$b;->READY:Lcom/google/i18n/phonenumbers/g$b;

    new-instance v0, Lcom/google/i18n/phonenumbers/g$b;

    const/4 v3, 0x2

    const-string v4, "DONE"

    invoke-direct {v0, v4, v3}, Lcom/google/i18n/phonenumbers/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$b;->DONE:Lcom/google/i18n/phonenumbers/g$b;

    const/4 v0, 0x3

    .line 185
    new-array v0, v0, [Lcom/google/i18n/phonenumbers/g$b;

    sget-object v4, Lcom/google/i18n/phonenumbers/g$b;->NOT_READY:Lcom/google/i18n/phonenumbers/g$b;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/i18n/phonenumbers/g$b;->READY:Lcom/google/i18n/phonenumbers/g$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/i18n/phonenumbers/g$b;->DONE:Lcom/google/i18n/phonenumbers/g$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/i18n/phonenumbers/g$b;->$VALUES:[Lcom/google/i18n/phonenumbers/g$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/g$b;
    .locals 1

    .line 185
    const-class v0, Lcom/google/i18n/phonenumbers/g$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/i18n/phonenumbers/g$b;

    return-object p0
.end method

.method public static values()[Lcom/google/i18n/phonenumbers/g$b;
    .locals 1

    .line 185
    sget-object v0, Lcom/google/i18n/phonenumbers/g$b;->$VALUES:[Lcom/google/i18n/phonenumbers/g$b;

    invoke-virtual {v0}, [Lcom/google/i18n/phonenumbers/g$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/i18n/phonenumbers/g$b;

    return-object v0
.end method
