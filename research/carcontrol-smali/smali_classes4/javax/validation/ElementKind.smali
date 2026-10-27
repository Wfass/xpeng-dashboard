.class public final enum Ljavax/validation/ElementKind;
.super Ljava/lang/Enum;
.source "ElementKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/validation/ElementKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/validation/ElementKind;

.field public static final enum BEAN:Ljavax/validation/ElementKind;

.field public static final enum CONSTRUCTOR:Ljavax/validation/ElementKind;

.field public static final enum CROSS_PARAMETER:Ljavax/validation/ElementKind;

.field public static final enum METHOD:Ljavax/validation/ElementKind;

.field public static final enum PARAMETER:Ljavax/validation/ElementKind;

.field public static final enum PROPERTY:Ljavax/validation/ElementKind;

.field public static final enum RETURN_VALUE:Ljavax/validation/ElementKind;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 35
    new-instance v0, Ljavax/validation/ElementKind;

    const-string v1, "BEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/validation/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/ElementKind;->BEAN:Ljavax/validation/ElementKind;

    .line 40
    new-instance v1, Ljavax/validation/ElementKind;

    const-string v3, "PROPERTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljavax/validation/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/validation/ElementKind;->PROPERTY:Ljavax/validation/ElementKind;

    .line 45
    new-instance v3, Ljavax/validation/ElementKind;

    const-string v5, "METHOD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljavax/validation/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljavax/validation/ElementKind;->METHOD:Ljavax/validation/ElementKind;

    .line 50
    new-instance v5, Ljavax/validation/ElementKind;

    const-string v7, "CONSTRUCTOR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljavax/validation/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljavax/validation/ElementKind;->CONSTRUCTOR:Ljavax/validation/ElementKind;

    .line 55
    new-instance v7, Ljavax/validation/ElementKind;

    const-string v9, "PARAMETER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljavax/validation/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ljavax/validation/ElementKind;->PARAMETER:Ljavax/validation/ElementKind;

    .line 60
    new-instance v9, Ljavax/validation/ElementKind;

    const-string v11, "CROSS_PARAMETER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljavax/validation/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ljavax/validation/ElementKind;->CROSS_PARAMETER:Ljavax/validation/ElementKind;

    .line 65
    new-instance v11, Ljavax/validation/ElementKind;

    const-string v13, "RETURN_VALUE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljavax/validation/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ljavax/validation/ElementKind;->RETURN_VALUE:Ljavax/validation/ElementKind;

    const/4 v13, 0x7

    new-array v13, v13, [Ljavax/validation/ElementKind;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 31
    sput-object v13, Ljavax/validation/ElementKind;->$VALUES:[Ljavax/validation/ElementKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/validation/ElementKind;
    .locals 1

    .line 31
    const-class v0, Ljavax/validation/ElementKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/validation/ElementKind;

    return-object p0
.end method

.method public static values()[Ljavax/validation/ElementKind;
    .locals 1

    .line 31
    sget-object v0, Ljavax/validation/ElementKind;->$VALUES:[Ljavax/validation/ElementKind;

    invoke-virtual {v0}, [Ljavax/validation/ElementKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/validation/ElementKind;

    return-object v0
.end method
