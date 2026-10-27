.class final enum Lkotlin/collections/ap;
.super Ljava/lang/Enum;
.source "AbstractIterator.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/collections/ap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/collections/ap;

.field public static final enum Done:Lkotlin/collections/ap;

.field public static final enum Failed:Lkotlin/collections/ap;

.field public static final enum NotReady:Lkotlin/collections/ap;

.field public static final enum Ready:Lkotlin/collections/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lkotlin/collections/ap;

    const-string v1, "Ready"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/collections/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/collections/ap;->Ready:Lkotlin/collections/ap;

    .line 11
    new-instance v0, Lkotlin/collections/ap;

    const-string v1, "NotReady"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/collections/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/collections/ap;->NotReady:Lkotlin/collections/ap;

    .line 12
    new-instance v0, Lkotlin/collections/ap;

    const-string v1, "Done"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkotlin/collections/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/collections/ap;->Done:Lkotlin/collections/ap;

    .line 13
    new-instance v0, Lkotlin/collections/ap;

    const-string v1, "Failed"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lkotlin/collections/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/collections/ap;->Failed:Lkotlin/collections/ap;

    invoke-static {}, Lkotlin/collections/ap;->a()[Lkotlin/collections/ap;

    move-result-object v0

    sput-object v0, Lkotlin/collections/ap;->$VALUES:[Lkotlin/collections/ap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lkotlin/collections/ap;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/collections/ap;

    sget-object v1, Lkotlin/collections/ap;->Ready:Lkotlin/collections/ap;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/collections/ap;->NotReady:Lkotlin/collections/ap;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/collections/ap;->Done:Lkotlin/collections/ap;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/collections/ap;->Failed:Lkotlin/collections/ap;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/collections/ap;
    .locals 1

    const-class v0, Lkotlin/collections/ap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/collections/ap;

    return-object p0
.end method

.method public static values()[Lkotlin/collections/ap;
    .locals 1

    sget-object v0, Lkotlin/collections/ap;->$VALUES:[Lkotlin/collections/ap;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/collections/ap;

    return-object v0
.end method
