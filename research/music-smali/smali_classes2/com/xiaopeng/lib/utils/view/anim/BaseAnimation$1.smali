.class synthetic Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$1;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$lib$utils$view$anim$BaseAnimation$AnimationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    invoke-static {}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->values()[Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$1;->$SwitchMap$com$xiaopeng$lib$utils$view$anim$BaseAnimation$AnimationType:[I

    :try_start_0
    sget-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$1;->$SwitchMap$com$xiaopeng$lib$utils$view$anim$BaseAnimation$AnimationType:[I

    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ROTATE:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$1;->$SwitchMap$com$xiaopeng$lib$utils$view$anim$BaseAnimation$AnimationType:[I

    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ALPHA:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$1;->$SwitchMap$com$xiaopeng$lib$utils$view$anim$BaseAnimation$AnimationType:[I

    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_LEFT:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$1;->$SwitchMap$com$xiaopeng$lib$utils$view$anim$BaseAnimation$AnimationType:[I

    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_RIGHT:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$1;->$SwitchMap$com$xiaopeng$lib$utils$view$anim$BaseAnimation$AnimationType:[I

    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_CROSS:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$1;->$SwitchMap$com$xiaopeng$lib$utils$view$anim$BaseAnimation$AnimationType:[I

    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->SCALE:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$1;->$SwitchMap$com$xiaopeng$lib$utils$view$anim$BaseAnimation$AnimationType:[I

    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->FLIP_HORIZON:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$1;->$SwitchMap$com$xiaopeng$lib$utils$view$anim$BaseAnimation$AnimationType:[I

    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->FLIP_VERTICAL:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
