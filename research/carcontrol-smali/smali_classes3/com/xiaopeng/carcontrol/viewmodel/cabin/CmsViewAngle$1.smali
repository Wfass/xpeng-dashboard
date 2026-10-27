.class synthetic Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle$1;
.super Ljava/lang/Object;
.source "CmsViewAngle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$CmsViewAngle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->values()[Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$CmsViewAngle:[I

    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->FLAT:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$CmsViewAngle:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->WIDE:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
