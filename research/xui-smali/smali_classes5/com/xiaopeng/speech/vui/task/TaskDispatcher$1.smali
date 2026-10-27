.class synthetic Lcom/xiaopeng/speech/vui/task/TaskDispatcher$1;
.super Ljava/lang/Object;
.source "TaskDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/task/TaskDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$speech$vui$task$TaskDispatcher$TaskType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    invoke-static {}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->values()[Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$1;->$SwitchMap$com$xiaopeng$speech$vui$task$TaskDispatcher$TaskType:[I

    :try_start_0
    sget-object v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$1;->$SwitchMap$com$xiaopeng$speech$vui$task$TaskDispatcher$TaskType:[I

    sget-object v1, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ADD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$1;->$SwitchMap$com$xiaopeng$speech$vui$task$TaskDispatcher$TaskType:[I

    sget-object v1, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->BUILD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$1;->$SwitchMap$com$xiaopeng$speech$vui$task$TaskDispatcher$TaskType:[I

    sget-object v1, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->REMOVE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$1;->$SwitchMap$com$xiaopeng$speech$vui$task$TaskDispatcher$TaskType:[I

    sget-object v1, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$1;->$SwitchMap$com$xiaopeng$speech$vui$task$TaskDispatcher$TaskType:[I

    sget-object v1, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATEATTRIBUTE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$1;->$SwitchMap$com$xiaopeng$speech$vui$task$TaskDispatcher$TaskType:[I

    sget-object v1, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATERECYCLEVIEWITEM:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    return-void
.end method
