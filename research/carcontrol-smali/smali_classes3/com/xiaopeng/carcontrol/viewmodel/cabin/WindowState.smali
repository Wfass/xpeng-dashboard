.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;
.super Ljava/lang/Enum;
.source "WindowState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

.field public static final enum Closed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

.field public static final enum Closing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

.field public static final enum HalfOpened:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

.field public static final enum Opened:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

.field public static final enum Opening:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

.field public static final enum Ventting:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 11
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    const-string v1, "Opening"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->Opening:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    .line 15
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    const-string v3, "Opened"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->Opened:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    .line 19
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    const-string v5, "Closing"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->Closing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    .line 23
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    const-string v7, "Closed"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->Closed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    .line 27
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    const-string v9, "HalfOpened"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->HalfOpened:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    .line 31
    new-instance v9, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    const-string v11, "Ventting"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->Ventting:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 7
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;
    .locals 1

    .line 7
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    return-object v0
.end method
