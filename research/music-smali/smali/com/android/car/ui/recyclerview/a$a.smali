.class public final enum Lcom/android/car/ui/recyclerview/a$a;
.super Ljava/lang/Enum;
.source "CarUiContentListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/recyclerview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/car/ui/recyclerview/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/car/ui/recyclerview/a$a;

.field public static final enum CHECK_BOX:Lcom/android/car/ui/recyclerview/a$a;

.field public static final enum CHEVRON:Lcom/android/car/ui/recyclerview/a$a;

.field public static final enum ICON:Lcom/android/car/ui/recyclerview/a$a;

.field public static final enum NONE:Lcom/android/car/ui/recyclerview/a$a;

.field public static final enum RADIO_BUTTON:Lcom/android/car/ui/recyclerview/a$a;

.field public static final enum SWITCH:Lcom/android/car/ui/recyclerview/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 82
    new-instance v0, Lcom/android/car/ui/recyclerview/a$a;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/android/car/ui/recyclerview/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/a$a;->NONE:Lcom/android/car/ui/recyclerview/a$a;

    .line 87
    new-instance v0, Lcom/android/car/ui/recyclerview/a$a;

    const/4 v2, 0x1

    const-string v3, "SWITCH"

    invoke-direct {v0, v3, v2}, Lcom/android/car/ui/recyclerview/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/a$a;->SWITCH:Lcom/android/car/ui/recyclerview/a$a;

    .line 92
    new-instance v0, Lcom/android/car/ui/recyclerview/a$a;

    const/4 v3, 0x2

    const-string v4, "CHECK_BOX"

    invoke-direct {v0, v4, v3}, Lcom/android/car/ui/recyclerview/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/a$a;->CHECK_BOX:Lcom/android/car/ui/recyclerview/a$a;

    .line 97
    new-instance v0, Lcom/android/car/ui/recyclerview/a$a;

    const/4 v4, 0x3

    const-string v5, "RADIO_BUTTON"

    invoke-direct {v0, v5, v4}, Lcom/android/car/ui/recyclerview/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/a$a;->RADIO_BUTTON:Lcom/android/car/ui/recyclerview/a$a;

    .line 101
    new-instance v0, Lcom/android/car/ui/recyclerview/a$a;

    const/4 v5, 0x4

    const-string v6, "ICON"

    invoke-direct {v0, v6, v5}, Lcom/android/car/ui/recyclerview/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/a$a;->ICON:Lcom/android/car/ui/recyclerview/a$a;

    .line 105
    new-instance v0, Lcom/android/car/ui/recyclerview/a$a;

    const/4 v6, 0x5

    const-string v7, "CHEVRON"

    invoke-direct {v0, v7, v6}, Lcom/android/car/ui/recyclerview/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/a$a;->CHEVRON:Lcom/android/car/ui/recyclerview/a$a;

    const/4 v0, 0x6

    .line 78
    new-array v0, v0, [Lcom/android/car/ui/recyclerview/a$a;

    sget-object v7, Lcom/android/car/ui/recyclerview/a$a;->NONE:Lcom/android/car/ui/recyclerview/a$a;

    aput-object v7, v0, v1

    sget-object v1, Lcom/android/car/ui/recyclerview/a$a;->SWITCH:Lcom/android/car/ui/recyclerview/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/car/ui/recyclerview/a$a;->CHECK_BOX:Lcom/android/car/ui/recyclerview/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/car/ui/recyclerview/a$a;->RADIO_BUTTON:Lcom/android/car/ui/recyclerview/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/car/ui/recyclerview/a$a;->ICON:Lcom/android/car/ui/recyclerview/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/car/ui/recyclerview/a$a;->CHEVRON:Lcom/android/car/ui/recyclerview/a$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/car/ui/recyclerview/a$a;->$VALUES:[Lcom/android/car/ui/recyclerview/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/car/ui/recyclerview/a$a;
    .locals 1

    .line 78
    const-class v0, Lcom/android/car/ui/recyclerview/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/recyclerview/a$a;

    return-object p0
.end method

.method public static values()[Lcom/android/car/ui/recyclerview/a$a;
    .locals 1

    .line 78
    sget-object v0, Lcom/android/car/ui/recyclerview/a$a;->$VALUES:[Lcom/android/car/ui/recyclerview/a$a;

    invoke-virtual {v0}, [Lcom/android/car/ui/recyclerview/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/car/ui/recyclerview/a$a;

    return-object v0
.end method
