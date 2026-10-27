.class public final enum Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;
.super Ljava/lang/Enum;
.source "SeatSelectLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

.field public static final enum SeatSelect:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

.field public static final enum SeatUnselect:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

    const-string v1, "SeatUnselect"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;->SeatUnselect:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

    .line 5
    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

    const-string v3, "SeatSelect"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;->SeatSelect:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;->$VALUES:[Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3
    const-class v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;->$VALUES:[Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

    return-object v0
.end method


# virtual methods
.method public toggle()Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;->SeatSelect:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

    if-ne p0, v0, :cond_0

    .line 9
    sget-object v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;->SeatUnselect:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

    :cond_0
    return-object v0
.end method
