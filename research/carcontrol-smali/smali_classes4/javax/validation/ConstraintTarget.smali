.class public final enum Ljavax/validation/ConstraintTarget;
.super Ljava/lang/Enum;
.source "ConstraintTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/validation/ConstraintTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/validation/ConstraintTarget;

.field public static final enum IMPLICIT:Ljavax/validation/ConstraintTarget;

.field public static final enum PARAMETERS:Ljavax/validation/ConstraintTarget;

.field public static final enum RETURN_VALUE:Ljavax/validation/ConstraintTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 41
    new-instance v0, Ljavax/validation/ConstraintTarget;

    const-string v1, "IMPLICIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/validation/ConstraintTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/ConstraintTarget;->IMPLICIT:Ljavax/validation/ConstraintTarget;

    .line 46
    new-instance v1, Ljavax/validation/ConstraintTarget;

    const-string v3, "RETURN_VALUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljavax/validation/ConstraintTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/validation/ConstraintTarget;->RETURN_VALUE:Ljavax/validation/ConstraintTarget;

    .line 51
    new-instance v3, Ljavax/validation/ConstraintTarget;

    const-string v5, "PARAMETERS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljavax/validation/ConstraintTarget;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljavax/validation/ConstraintTarget;->PARAMETERS:Ljavax/validation/ConstraintTarget;

    const/4 v5, 0x3

    new-array v5, v5, [Ljavax/validation/ConstraintTarget;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 25
    sput-object v5, Ljavax/validation/ConstraintTarget;->$VALUES:[Ljavax/validation/ConstraintTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/validation/ConstraintTarget;
    .locals 1

    .line 25
    const-class v0, Ljavax/validation/ConstraintTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/validation/ConstraintTarget;

    return-object p0
.end method

.method public static values()[Ljavax/validation/ConstraintTarget;
    .locals 1

    .line 25
    sget-object v0, Ljavax/validation/ConstraintTarget;->$VALUES:[Ljavax/validation/ConstraintTarget;

    invoke-virtual {v0}, [Ljavax/validation/ConstraintTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/validation/ConstraintTarget;

    return-object v0
.end method
