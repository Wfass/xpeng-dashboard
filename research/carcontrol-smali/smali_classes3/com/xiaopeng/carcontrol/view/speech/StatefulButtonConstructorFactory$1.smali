.class synthetic Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$1;
.super Ljava/lang/Object;
.source "StatefulButtonConstructorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$view$speech$StatefulButtonConstructorFactory$ConstructorType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;->values()[Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$1;->$SwitchMap$com$xiaopeng$carcontrol$view$speech$StatefulButtonConstructorFactory$ConstructorType:[I

    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;->SEAT_AIR:Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$1;->$SwitchMap$com$xiaopeng$carcontrol$view$speech$StatefulButtonConstructorFactory$ConstructorType:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;->SEAT_HOT:Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
