.class synthetic Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange$1;
.super Ljava/lang/Object;
.source "ScuIslaSpdRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuIslaSpdRange:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;->values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuIslaSpdRange:[I

    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;->LOW:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuIslaSpdRange:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;->HIGH:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
