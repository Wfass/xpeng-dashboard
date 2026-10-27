.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;
.super Ljava/lang/Enum;
.source "AtlColorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

.field public static final enum Double:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

.field public static final enum Mono:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;


# instance fields
.field alias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field command:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    const-string v1, "Mono"

    const/4 v2, 0x0

    const-string v3, "mono"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->Mono:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    .line 8
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    const-string v3, "Double"

    const/4 v4, 0x1

    const-string v5, "double"

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->Double:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 6
    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "command"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->alias:Ljava/util/List;

    .line 15
    iput-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->command:Ljava/lang/String;

    .line 16
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 6
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;
    .locals 1

    .line 6
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->alias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toAtlCommand()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->command:Ljava/lang/String;

    return-object v0
.end method
