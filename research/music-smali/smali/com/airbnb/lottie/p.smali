.class public final enum Lcom/airbnb/lottie/p;
.super Ljava/lang/Enum;
.source "RenderMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/p;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/p;

.field public static final enum AUTOMATIC:Lcom/airbnb/lottie/p;

.field public static final enum HARDWARE:Lcom/airbnb/lottie/p;

.field public static final enum SOFTWARE:Lcom/airbnb/lottie/p;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/airbnb/lottie/p;

    const/4 v1, 0x0

    const-string v2, "AUTOMATIC"

    invoke-direct {v0, v2, v1}, Lcom/airbnb/lottie/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/p;->AUTOMATIC:Lcom/airbnb/lottie/p;

    .line 13
    new-instance v0, Lcom/airbnb/lottie/p;

    const/4 v2, 0x1

    const-string v3, "HARDWARE"

    invoke-direct {v0, v3, v2}, Lcom/airbnb/lottie/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/p;->HARDWARE:Lcom/airbnb/lottie/p;

    .line 14
    new-instance v0, Lcom/airbnb/lottie/p;

    const/4 v3, 0x2

    const-string v4, "SOFTWARE"

    invoke-direct {v0, v4, v3}, Lcom/airbnb/lottie/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/p;->SOFTWARE:Lcom/airbnb/lottie/p;

    const/4 v0, 0x3

    .line 11
    new-array v0, v0, [Lcom/airbnb/lottie/p;

    sget-object v4, Lcom/airbnb/lottie/p;->AUTOMATIC:Lcom/airbnb/lottie/p;

    aput-object v4, v0, v1

    sget-object v1, Lcom/airbnb/lottie/p;->HARDWARE:Lcom/airbnb/lottie/p;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/lottie/p;->SOFTWARE:Lcom/airbnb/lottie/p;

    aput-object v1, v0, v3

    sput-object v0, Lcom/airbnb/lottie/p;->$VALUES:[Lcom/airbnb/lottie/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/p;
    .locals 1

    .line 11
    const-class v0, Lcom/airbnb/lottie/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/p;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/p;
    .locals 1

    .line 11
    sget-object v0, Lcom/airbnb/lottie/p;->$VALUES:[Lcom/airbnb/lottie/p;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/p;

    return-object v0
.end method


# virtual methods
.method public a(IZI)Z
    .locals 4

    .line 17
    sget-object v0, Lcom/airbnb/lottie/p$1;->a:[I

    invoke-virtual {p0}, Lcom/airbnb/lottie/p;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    if-eqz p2, :cond_0

    const/16 p2, 0x1c

    if-ge p1, p2, :cond_0

    return v2

    :cond_0
    const/4 p2, 0x4

    if-le p3, p2, :cond_1

    return v2

    :cond_1
    const/16 p2, 0x19

    if-gt p1, p2, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    return v1
.end method
