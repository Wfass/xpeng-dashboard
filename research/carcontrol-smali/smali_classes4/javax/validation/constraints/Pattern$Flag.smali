.class public final enum Ljavax/validation/constraints/Pattern$Flag;
.super Ljava/lang/Enum;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/validation/constraints/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/validation/constraints/Pattern$Flag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/validation/constraints/Pattern$Flag;

.field public static final enum CANON_EQ:Ljavax/validation/constraints/Pattern$Flag;

.field public static final enum CASE_INSENSITIVE:Ljavax/validation/constraints/Pattern$Flag;

.field public static final enum COMMENTS:Ljavax/validation/constraints/Pattern$Flag;

.field public static final enum DOTALL:Ljavax/validation/constraints/Pattern$Flag;

.field public static final enum MULTILINE:Ljavax/validation/constraints/Pattern$Flag;

.field public static final enum UNICODE_CASE:Ljavax/validation/constraints/Pattern$Flag;

.field public static final enum UNIX_LINES:Ljavax/validation/constraints/Pattern$Flag;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 82
    new-instance v0, Ljavax/validation/constraints/Pattern$Flag;

    const-string v1, "UNIX_LINES"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljavax/validation/constraints/Pattern$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljavax/validation/constraints/Pattern$Flag;->UNIX_LINES:Ljavax/validation/constraints/Pattern$Flag;

    .line 89
    new-instance v1, Ljavax/validation/constraints/Pattern$Flag;

    const-string v4, "CASE_INSENSITIVE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Ljavax/validation/constraints/Pattern$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ljavax/validation/constraints/Pattern$Flag;->CASE_INSENSITIVE:Ljavax/validation/constraints/Pattern$Flag;

    .line 96
    new-instance v4, Ljavax/validation/constraints/Pattern$Flag;

    const-string v6, "COMMENTS"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Ljavax/validation/constraints/Pattern$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v4, Ljavax/validation/constraints/Pattern$Flag;->COMMENTS:Ljavax/validation/constraints/Pattern$Flag;

    .line 103
    new-instance v6, Ljavax/validation/constraints/Pattern$Flag;

    const-string v8, "MULTILINE"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Ljavax/validation/constraints/Pattern$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v6, Ljavax/validation/constraints/Pattern$Flag;->MULTILINE:Ljavax/validation/constraints/Pattern$Flag;

    .line 110
    new-instance v8, Ljavax/validation/constraints/Pattern$Flag;

    const-string v10, "DOTALL"

    const/16 v11, 0x20

    invoke-direct {v8, v10, v7, v11}, Ljavax/validation/constraints/Pattern$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v8, Ljavax/validation/constraints/Pattern$Flag;->DOTALL:Ljavax/validation/constraints/Pattern$Flag;

    .line 117
    new-instance v10, Ljavax/validation/constraints/Pattern$Flag;

    const-string v11, "UNICODE_CASE"

    const/4 v12, 0x5

    const/16 v13, 0x40

    invoke-direct {v10, v11, v12, v13}, Ljavax/validation/constraints/Pattern$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v10, Ljavax/validation/constraints/Pattern$Flag;->UNICODE_CASE:Ljavax/validation/constraints/Pattern$Flag;

    .line 124
    new-instance v11, Ljavax/validation/constraints/Pattern$Flag;

    const-string v13, "CANON_EQ"

    const/4 v14, 0x6

    const/16 v15, 0x80

    invoke-direct {v11, v13, v14, v15}, Ljavax/validation/constraints/Pattern$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v11, Ljavax/validation/constraints/Pattern$Flag;->CANON_EQ:Ljavax/validation/constraints/Pattern$Flag;

    const/4 v13, 0x7

    new-array v13, v13, [Ljavax/validation/constraints/Pattern$Flag;

    aput-object v0, v13, v2

    aput-object v1, v13, v3

    aput-object v4, v13, v5

    aput-object v6, v13, v9

    aput-object v8, v13, v7

    aput-object v10, v13, v12

    aput-object v11, v13, v14

    .line 75
    sput-object v13, Ljavax/validation/constraints/Pattern$Flag;->$VALUES:[Ljavax/validation/constraints/Pattern$Flag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput p3, p0, Ljavax/validation/constraints/Pattern$Flag;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/validation/constraints/Pattern$Flag;
    .locals 1

    .line 75
    const-class v0, Ljavax/validation/constraints/Pattern$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/validation/constraints/Pattern$Flag;

    return-object p0
.end method

.method public static values()[Ljavax/validation/constraints/Pattern$Flag;
    .locals 1

    .line 75
    sget-object v0, Ljavax/validation/constraints/Pattern$Flag;->$VALUES:[Ljavax/validation/constraints/Pattern$Flag;

    invoke-virtual {v0}, [Ljavax/validation/constraints/Pattern$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/validation/constraints/Pattern$Flag;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 137
    iget v0, p0, Ljavax/validation/constraints/Pattern$Flag;->value:I

    return v0
.end method
