.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;
.super Ljava/lang/Enum;
.source "MirrorFoldState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

.field public static final enum Folded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

.field public static final enum Middle:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

.field public static final enum Unfolded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    const-string v1, "Folded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Folded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    .line 14
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    const-string v3, "Middle"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    .line 18
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    const-string v5, "Unfolded"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Unfolded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 6
    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromValue(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;
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

    .line 30
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Unfolded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    return-object p0

    .line 26
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    return-object p0

    .line 23
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Folded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    return-object p0
.end method

.method public static toValue(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorFoldState:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->ordinal()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;
    .locals 1

    .line 6
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    return-object v0
.end method
