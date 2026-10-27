.class final enum Landroidx/fragment/app/v$b$a;
.super Ljava/lang/Enum;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/v$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/v$b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/fragment/app/v$b$a;

.field public static final enum ADDING:Landroidx/fragment/app/v$b$a;

.field public static final enum NONE:Landroidx/fragment/app/v$b$a;

.field public static final enum REMOVING:Landroidx/fragment/app/v$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 488
    new-instance v0, Landroidx/fragment/app/v$b$a;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Landroidx/fragment/app/v$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/v$b$a;->NONE:Landroidx/fragment/app/v$b$a;

    .line 492
    new-instance v0, Landroidx/fragment/app/v$b$a;

    const/4 v2, 0x1

    const-string v3, "ADDING"

    invoke-direct {v0, v3, v2}, Landroidx/fragment/app/v$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/v$b$a;->ADDING:Landroidx/fragment/app/v$b$a;

    .line 496
    new-instance v0, Landroidx/fragment/app/v$b$a;

    const/4 v3, 0x2

    const-string v4, "REMOVING"

    invoke-direct {v0, v4, v3}, Landroidx/fragment/app/v$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/v$b$a;->REMOVING:Landroidx/fragment/app/v$b$a;

    const/4 v0, 0x3

    .line 484
    new-array v0, v0, [Landroidx/fragment/app/v$b$a;

    sget-object v4, Landroidx/fragment/app/v$b$a;->NONE:Landroidx/fragment/app/v$b$a;

    aput-object v4, v0, v1

    sget-object v1, Landroidx/fragment/app/v$b$a;->ADDING:Landroidx/fragment/app/v$b$a;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/fragment/app/v$b$a;->REMOVING:Landroidx/fragment/app/v$b$a;

    aput-object v1, v0, v3

    sput-object v0, Landroidx/fragment/app/v$b$a;->$VALUES:[Landroidx/fragment/app/v$b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 484
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/v$b$a;
    .locals 1

    .line 484
    const-class v0, Landroidx/fragment/app/v$b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/v$b$a;

    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/v$b$a;
    .locals 1

    .line 484
    sget-object v0, Landroidx/fragment/app/v$b$a;->$VALUES:[Landroidx/fragment/app/v$b$a;

    invoke-virtual {v0}, [Landroidx/fragment/app/v$b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/v$b$a;

    return-object v0
.end method
