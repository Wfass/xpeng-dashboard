.class synthetic Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState$1;
.super Ljava/lang/Object;
.source "MirrorFoldState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorFoldState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->values()[Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorFoldState:[I

    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Folded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorFoldState:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorFoldState:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Unfolded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
