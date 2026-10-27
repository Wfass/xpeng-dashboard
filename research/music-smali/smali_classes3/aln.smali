.class public final enum Laln;
.super Ljava/lang/Enum;
.source "ErrorCorrectionLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laln;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laln;

.field private static final FOR_BITS:[Laln;

.field public static final enum H:Laln;

.field public static final enum L:Laln;

.field public static final enum M:Laln;

.field public static final enum Q:Laln;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 28
    new-instance v0, Laln;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "L"

    invoke-direct {v0, v3, v2, v1}, Laln;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laln;->L:Laln;

    .line 30
    new-instance v0, Laln;

    const-string v3, "M"

    invoke-direct {v0, v3, v1, v2}, Laln;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laln;->M:Laln;

    .line 32
    new-instance v0, Laln;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "Q"

    invoke-direct {v0, v5, v4, v3}, Laln;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laln;->Q:Laln;

    .line 34
    new-instance v0, Laln;

    const-string v5, "H"

    invoke-direct {v0, v5, v3, v4}, Laln;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laln;->H:Laln;

    const/4 v0, 0x4

    .line 25
    new-array v5, v0, [Laln;

    sget-object v6, Laln;->L:Laln;

    aput-object v6, v5, v2

    sget-object v7, Laln;->M:Laln;

    aput-object v7, v5, v1

    sget-object v8, Laln;->Q:Laln;

    aput-object v8, v5, v4

    sget-object v9, Laln;->H:Laln;

    aput-object v9, v5, v3

    sput-object v5, Laln;->$VALUES:[Laln;

    .line 36
    new-array v0, v0, [Laln;

    aput-object v7, v0, v2

    aput-object v6, v0, v1

    aput-object v9, v0, v4

    aput-object v8, v0, v3

    sput-object v0, Laln;->FOR_BITS:[Laln;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Laln;->bits:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laln;
    .locals 1

    .line 25
    const-class v0, Laln;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Laln;

    return-object p0
.end method

.method public static values()[Laln;
    .locals 1

    .line 25
    sget-object v0, Laln;->$VALUES:[Laln;

    invoke-virtual {v0}, [Laln;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laln;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 45
    iget v0, p0, Laln;->bits:I

    return v0
.end method
