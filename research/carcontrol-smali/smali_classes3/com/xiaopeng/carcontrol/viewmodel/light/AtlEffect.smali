.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;
.super Ljava/lang/Enum;
.source "AtlEffect.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

.field public static final enum Breathing:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

.field public static final enum Music:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

.field public static final enum None:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

.field public static final enum Speed:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;


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

.field commandNew:Ljava/lang/String;

.field commandOld:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 19
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    const-string v1, "None"

    const/4 v2, 0x0

    const-string v3, "stable_effect"

    const-string v4, "stable"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->None:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    .line 23
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    const-string v3, "Speed"

    const/4 v4, 0x1

    const-string v5, "follow_speed"

    const-string v6, "speed"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Speed:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    .line 27
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    const-string v5, "Breathing"

    const/4 v6, 0x2

    const-string v7, "gentle_breathing"

    const-string v8, "breath"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Breathing:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    .line 31
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    const-string v7, "Music"

    const/4 v8, 0x3

    const-string v9, "music"

    invoke-direct {v5, v7, v8, v9, v9}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Music:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 13
    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "commandOld",
            "commandNew"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->alias:Ljava/util/List;

    .line 39
    iput-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->commandOld:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->commandNew:Ljava/lang/String;

    .line 41
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->alias:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static fromAtlStatus(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->values()[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    move-result-object v0

    .line 60
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 61
    invoke-virtual {v3, p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->None:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    return-object p0
.end method

.method public static toStatistic(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlEffect"
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$light$AtlEffect:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 13
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;
    .locals 1

    .line 13
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    return-object v0
.end method


# virtual methods
.method public getAlias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->alias:Ljava/util/List;

    return-object v0
.end method

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

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->alias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toAtlCmd()Ljava/lang/String;
    .locals 1

    .line 69
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getAtlManager()Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->isSupportNewService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->commandNew:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->commandOld:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public toDataSyncAtlCmd()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->commandOld:Ljava/lang/String;

    return-object v0
.end method
