.class synthetic Lcom/xiaopeng/unity/carcontrol/AtlManager$2;
.super Ljava/lang/Object;
.source "AtlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/AtlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$light$AtlEffect:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 298
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->values()[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/AtlManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$light$AtlEffect:[I

    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Breathing:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/AtlManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$light$AtlEffect:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Speed:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/AtlManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$light$AtlEffect:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Music:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/AtlManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$light$AtlEffect:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->None:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
