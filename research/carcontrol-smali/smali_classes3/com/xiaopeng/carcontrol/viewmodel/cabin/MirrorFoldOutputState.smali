.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;
.super Ljava/lang/Enum;
.source "MirrorFoldOutputState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

.field public static final enum Folding:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

.field public static final enum Stopped:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

.field public static final enum Unfolding:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    const-string v1, "Stopped"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->Stopped:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    .line 11
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    const-string v3, "Folding"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->Folding:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    .line 15
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    const-string v5, "Unfolding"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->Unfolding:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

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

.method public static fromValue(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "foldState"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 27
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->Unfolding:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    return-object p0

    .line 23
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->Folding:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    return-object p0

    .line 20
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->Stopped:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    return-object p0
.end method

.method public static toValue(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorFoldOutputState:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    return-object v0
.end method
