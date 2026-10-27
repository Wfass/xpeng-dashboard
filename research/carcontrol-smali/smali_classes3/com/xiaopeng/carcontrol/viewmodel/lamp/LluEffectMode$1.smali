.class synthetic Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffectMode$1;
.super Ljava/lang/Object;
.source "LluEffectMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffectMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluEffectMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffectMode;->values()[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffectMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffectMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluEffectMode:[I

    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffectMode;->Mode1:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffectMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffectMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffectMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluEffectMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffectMode;->Mode2:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffectMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffectMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffectMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluEffectMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffectMode;->Mode3:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffectMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffectMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
