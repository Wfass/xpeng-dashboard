.class public final enum Lcom/android/car/permission/CarSignature$Access;
.super Ljava/lang/Enum;
.source "CarSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/permission/CarSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Access"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/car/permission/CarSignature$Access;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/car/permission/CarSignature$Access;

.field public static final enum NONE:Lcom/android/car/permission/CarSignature$Access;

.field public static final enum READ:Lcom/android/car/permission/CarSignature$Access;

.field public static final enum READ_WRITE:Lcom/android/car/permission/CarSignature$Access;

.field public static final enum WRITE:Lcom/android/car/permission/CarSignature$Access;


# instance fields
.field mAccess:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 39
    new-instance v0, Lcom/android/car/permission/CarSignature$Access;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/car/permission/CarSignature$Access;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/car/permission/CarSignature$Access;->NONE:Lcom/android/car/permission/CarSignature$Access;

    .line 40
    new-instance v0, Lcom/android/car/permission/CarSignature$Access;

    const-string v1, "READ"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/car/permission/CarSignature$Access;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/car/permission/CarSignature$Access;->READ:Lcom/android/car/permission/CarSignature$Access;

    .line 41
    new-instance v0, Lcom/android/car/permission/CarSignature$Access;

    const-string v1, "WRITE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/car/permission/CarSignature$Access;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/car/permission/CarSignature$Access;->WRITE:Lcom/android/car/permission/CarSignature$Access;

    .line 42
    new-instance v0, Lcom/android/car/permission/CarSignature$Access;

    const-string v1, "READ_WRITE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/car/permission/CarSignature$Access;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/car/permission/CarSignature$Access;->READ_WRITE:Lcom/android/car/permission/CarSignature$Access;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/car/permission/CarSignature$Access;

    sget-object v1, Lcom/android/car/permission/CarSignature$Access;->NONE:Lcom/android/car/permission/CarSignature$Access;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/car/permission/CarSignature$Access;->READ:Lcom/android/car/permission/CarSignature$Access;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/car/permission/CarSignature$Access;->WRITE:Lcom/android/car/permission/CarSignature$Access;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/car/permission/CarSignature$Access;->READ_WRITE:Lcom/android/car/permission/CarSignature$Access;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/car/permission/CarSignature$Access;->$VALUES:[Lcom/android/car/permission/CarSignature$Access;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/android/car/permission/CarSignature$Access;->mAccess:I

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/car/permission/CarSignature$Access;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lcom/android/car/permission/CarSignature$Access;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/car/permission/CarSignature$Access;

    return-object v0
.end method

.method public static values()[Lcom/android/car/permission/CarSignature$Access;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/car/permission/CarSignature$Access;->$VALUES:[Lcom/android/car/permission/CarSignature$Access;

    invoke-virtual {v0}, [Lcom/android/car/permission/CarSignature$Access;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/car/permission/CarSignature$Access;

    return-object v0
.end method
