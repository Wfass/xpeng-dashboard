.class public final enum Ljavax/validation/constraintvalidation/ValidationTarget;
.super Ljava/lang/Enum;
.source "ValidationTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/validation/constraintvalidation/ValidationTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/validation/constraintvalidation/ValidationTarget;

.field public static final enum ANNOTATED_ELEMENT:Ljavax/validation/constraintvalidation/ValidationTarget;

.field public static final enum PARAMETERS:Ljavax/validation/constraintvalidation/ValidationTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    new-instance v0, Ljavax/validation/constraintvalidation/ValidationTarget;

    const-string v1, "ANNOTATED_ELEMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/validation/constraintvalidation/ValidationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/constraintvalidation/ValidationTarget;->ANNOTATED_ELEMENT:Ljavax/validation/constraintvalidation/ValidationTarget;

    .line 37
    new-instance v1, Ljavax/validation/constraintvalidation/ValidationTarget;

    const-string v3, "PARAMETERS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljavax/validation/constraintvalidation/ValidationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/validation/constraintvalidation/ValidationTarget;->PARAMETERS:Ljavax/validation/constraintvalidation/ValidationTarget;

    const/4 v3, 0x2

    new-array v3, v3, [Ljavax/validation/constraintvalidation/ValidationTarget;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 27
    sput-object v3, Ljavax/validation/constraintvalidation/ValidationTarget;->$VALUES:[Ljavax/validation/constraintvalidation/ValidationTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/validation/constraintvalidation/ValidationTarget;
    .locals 1

    .line 27
    const-class v0, Ljavax/validation/constraintvalidation/ValidationTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/validation/constraintvalidation/ValidationTarget;

    return-object p0
.end method

.method public static values()[Ljavax/validation/constraintvalidation/ValidationTarget;
    .locals 1

    .line 27
    sget-object v0, Ljavax/validation/constraintvalidation/ValidationTarget;->$VALUES:[Ljavax/validation/constraintvalidation/ValidationTarget;

    invoke-virtual {v0}, [Ljavax/validation/constraintvalidation/ValidationTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/validation/constraintvalidation/ValidationTarget;

    return-object v0
.end method
