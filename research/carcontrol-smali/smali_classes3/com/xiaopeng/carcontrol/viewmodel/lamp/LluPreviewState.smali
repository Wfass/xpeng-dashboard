.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;
.super Ljava/lang/Enum;
.source "LluPreviewState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

.field public static final enum Idle:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

.field public static final enum Previewing:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

.field public static final enum Starting:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

.field public static final enum Stopping:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

.field public static final enum Switching:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;


# instance fields
.field private mEffect:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 11
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Idle:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    .line 15
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    const-string v3, "Switching"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Switching:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    .line 19
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    const-string v5, "Starting"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Starting:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    .line 24
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    const-string v7, "Previewing"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Previewing:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    .line 29
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    const-string v9, "Stopping"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Stopping:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;
    .locals 1

    .line 6
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    return-object v0
.end method


# virtual methods
.method public getEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->mEffect:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    return-object v0
.end method

.method public setEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->mEffect:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    return-void
.end method
