.class public Lcom/xiaopeng/xuiservice/smart/SmartInputService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartInputService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;,
        Lcom/xiaopeng/xuiservice/smart/SmartInputService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final INVALID_KEYCODE:I = -0x1

.field public static final KEYCODE_COMBINED_LOGGER:I = 0x4ba

.field private static final KEY_PRESSED:I = 0x1

.field private static final KEY_TOUCHED:I = 0x1

.field private static final MSG_SEND_LEFT_KEY_DOWN_EVENT:I = 0x2

.field private static final MSG_SEND_LEFT_KEY_UP_EVENT:I = 0x1

.field private static final MSG_SEND_LVOICE_KEY_DOWN_EVENT:I = 0x6

.field private static final MSG_SEND_LVOICE_KEY_UP_EVENT:I = 0x5

.field private static final MSG_SEND_RIGHT_KEY_DOWN_EVENT:I = 0x4

.field private static final MSG_SEND_RIGHT_KEY_UP_EVENT:I = 0x3

.field private static final POST_KEYEVENT_DELAY:J = 0x64L


# instance fields
.field private currentLeftTouchKeyCode:I

.field private currentRightTouchKeyCode:I

.field private currentlvoiceKeyCode:I

.field private keyStatus:[Z

.field private latestLeftTouchKeyCode:I

.field private latestRightTouchKeyCode:I

.field private latestlvoiceKeyCode:I

.field private mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

.field private mKeyHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-string v0, "persist.xp.input.logger"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestLeftTouchKeyCode:I

    .line 44
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestRightTouchKeyCode:I

    .line 45
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->currentLeftTouchKeyCode:I

    .line 46
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->currentRightTouchKeyCode:I

    .line 47
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestlvoiceKeyCode:I

    .line 48
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->currentlvoiceKeyCode:I

    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    .line 54
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartInputService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->mKeyHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->mKeyHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;->start()V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartInputService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartInputService$1;

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartInputService;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartInputService;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->handleInputEvent(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/smart/SmartInputService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartInputService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->sendKeyEvent(II)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartInputService;
    .locals 1

    .line 67
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartInputService$InstanceHolder;->access$000()Lcom/xiaopeng/xuiservice/smart/SmartInputService;

    move-result-object v0

    return-object v0
.end method

.method private handleEvent(IIJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "keyCode"    # I
    .param p3, "delayTime"    # J

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->mKeyHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 253
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 254
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 255
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->mKeyHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 256
    return-void
.end method

.method private handleInputEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 17
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    move-object/from16 v0, p0

    .line 94
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleInputEvent start (value.getPropertyId()==CarInputManager.ID_SWS_BUTTON_RAWDATA) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x2141222c

    if-ne v3, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    const v2, 0x21402228

    if-eq v1, v2, :cond_22

    const v2, 0x2141222c

    if-eq v1, v2, :cond_1

    goto/16 :goto_5

    .line 98
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 99
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 100
    .local v2, "rawKey":[I
    if-eqz v1, :cond_3

    .line 101
    array-length v3, v1

    new-array v2, v3, [I

    .line 102
    move v3, v4

    .local v3, "i":I
    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_3

    .line 103
    aget-object v6, v1, v3

    .line 104
    .local v6, "objValue":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    .line 105
    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v3

    .line 102
    .end local v6    # "objValue":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 115
    .end local v3    # "i":I
    :cond_3
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleInputEvent rawKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    aget v3, v2, v4

    const/16 v6, 0x4c4

    if-ne v3, v5, :cond_4

    iput v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestLeftTouchKeyCode:I

    .line 117
    :cond_4
    const/4 v3, 0x2

    aget v7, v2, v3

    const/16 v8, 0x4c7

    if-ne v7, v5, :cond_5

    iput v8, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestLeftTouchKeyCode:I

    .line 118
    :cond_5
    const/4 v7, 0x4

    aget v9, v2, v7

    const/16 v10, 0x4c5

    if-ne v9, v5, :cond_6

    iput v10, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestLeftTouchKeyCode:I

    .line 119
    :cond_6
    const/4 v9, 0x6

    aget v11, v2, v9

    const/16 v12, 0x4c6

    if-ne v11, v5, :cond_7

    iput v12, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestLeftTouchKeyCode:I

    .line 120
    :cond_7
    aget v11, v2, v4

    const/4 v13, -0x1

    if-eq v11, v5, :cond_8

    aget v11, v2, v3

    if-eq v11, v5, :cond_8

    aget v11, v2, v7

    if-eq v11, v5, :cond_8

    aget v11, v2, v9

    if-eq v11, v5, :cond_8

    .line 123
    iput v13, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestLeftTouchKeyCode:I

    .line 125
    :cond_8
    iget-object v11, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleInputEvent rawKey = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "latestLeftTouchKeyCode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestLeftTouchKeyCode:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/16 v11, 0xb

    aget v11, v2, v11

    if-ne v11, v5, :cond_c

    iget v11, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestLeftTouchKeyCode:I

    if-eq v11, v13, :cond_c

    .line 128
    iget v11, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestLeftTouchKeyCode:I

    const-wide/16 v13, 0x64

    invoke-direct {v0, v11, v3, v13, v14}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->postKeyEvent(IIJ)V

    .line 129
    iget v11, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestLeftTouchKeyCode:I

    if-ne v11, v6, :cond_9

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    aput-boolean v5, v6, v4

    .line 130
    :cond_9
    iget v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestLeftTouchKeyCode:I

    if-ne v6, v8, :cond_a

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    aput-boolean v5, v6, v5

    .line 131
    :cond_a
    iget v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestLeftTouchKeyCode:I

    if-ne v6, v10, :cond_b

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    aput-boolean v5, v6, v3

    .line 132
    :cond_b
    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestLeftTouchKeyCode:I

    if-ne v3, v12, :cond_10

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    const/4 v6, 0x3

    aput-boolean v5, v3, v6

    goto :goto_2

    .line 133
    :cond_c
    const/16 v11, 0xb

    aget v11, v2, v11

    if-eq v11, v5, :cond_10

    .line 134
    invoke-direct {v0, v3}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->removeKeyEvent(I)V

    .line 135
    iget-object v11, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    aget-boolean v11, v11, v4

    if-eqz v11, :cond_d

    .line 136
    invoke-direct {v0, v6, v5}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->sendKeyEvent(II)V

    .line 137
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    aput-boolean v4, v6, v4

    .line 139
    :cond_d
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_e

    .line 140
    invoke-direct {v0, v8, v5}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->sendKeyEvent(II)V

    .line 141
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    aput-boolean v4, v6, v5

    .line 143
    :cond_e
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    aget-boolean v6, v6, v3

    if-eqz v6, :cond_f

    .line 144
    invoke-direct {v0, v10, v5}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->sendKeyEvent(II)V

    .line 145
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    aput-boolean v4, v6, v3

    .line 147
    :cond_f
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    const/4 v6, 0x3

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_10

    .line 148
    invoke-direct {v0, v12, v5}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->sendKeyEvent(II)V

    .line 149
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    aput-boolean v4, v3, v6

    .line 152
    :cond_10
    :goto_2
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleInputEvent currentLeftTouchKeyCode = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->currentLeftTouchKeyCode:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",latestLeftTouchKeyCode = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestLeftTouchKeyCode:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->currentLeftTouchKeyCode:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_11

    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestLeftTouchKeyCode:I

    if-ne v3, v6, :cond_11

    .line 154
    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestLeftTouchKeyCode:I

    const-wide/16 v10, 0x0

    invoke-direct {v0, v3, v5, v10, v11}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->postKeyEvent(IIJ)V

    .line 156
    :cond_11
    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestLeftTouchKeyCode:I

    iput v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->currentLeftTouchKeyCode:I

    .line 164
    const/16 v3, 0x14

    aget v3, v2, v3

    const/16 v6, 0x4c8

    if-ne v3, v5, :cond_12

    iput v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestRightTouchKeyCode:I

    .line 165
    :cond_12
    const/16 v3, 0x16

    aget v3, v2, v3

    const/16 v8, 0x4cb

    if-ne v3, v5, :cond_13

    iput v8, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestRightTouchKeyCode:I

    .line 166
    :cond_13
    const/16 v3, 0x18

    aget v3, v2, v3

    const/16 v10, 0x4c9

    if-ne v3, v5, :cond_14

    iput v10, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestRightTouchKeyCode:I

    .line 167
    :cond_14
    const/16 v3, 0x1a

    aget v3, v2, v3

    const/16 v11, 0x4ca

    if-ne v3, v5, :cond_15

    iput v11, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestRightTouchKeyCode:I

    .line 168
    :cond_15
    const/16 v3, 0x14

    aget v3, v2, v3

    if-eq v3, v5, :cond_16

    const/16 v3, 0x16

    aget v3, v2, v3

    if-eq v3, v5, :cond_16

    const/16 v3, 0x18

    aget v3, v2, v3

    if-eq v3, v5, :cond_16

    const/16 v3, 0x1a

    aget v3, v2, v3

    if-eq v3, v5, :cond_16

    .line 171
    const/4 v3, -0x1

    iput v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestRightTouchKeyCode:I

    .line 173
    :cond_16
    const/16 v3, 0x1f

    aget v3, v2, v3

    if-ne v3, v5, :cond_1a

    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestRightTouchKeyCode:I

    const/4 v12, -0x1

    if-eq v3, v12, :cond_1a

    .line 174
    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestRightTouchKeyCode:I

    const-wide/16 v12, 0x64

    invoke-direct {v0, v3, v7, v12, v13}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->postKeyEvent(IIJ)V

    .line 175
    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestRightTouchKeyCode:I

    if-ne v3, v6, :cond_17

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    aput-boolean v5, v3, v7

    .line 176
    :cond_17
    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestRightTouchKeyCode:I

    if-ne v3, v8, :cond_18

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    const/4 v4, 0x5

    aput-boolean v5, v3, v4

    .line 177
    :cond_18
    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestRightTouchKeyCode:I

    if-ne v3, v10, :cond_19

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    aput-boolean v5, v3, v9

    .line 178
    :cond_19
    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestRightTouchKeyCode:I

    if-ne v3, v11, :cond_1e

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    const/4 v4, 0x7

    aput-boolean v5, v3, v4

    goto :goto_3

    .line 179
    :cond_1a
    const/16 v3, 0x1f

    aget v3, v2, v3

    if-eq v3, v5, :cond_1e

    .line 180
    invoke-direct {v0, v7}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->removeKeyEvent(I)V

    .line 181
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    aget-boolean v3, v3, v7

    if-eqz v3, :cond_1b

    .line 182
    invoke-direct {v0, v6, v5}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->sendKeyEvent(II)V

    .line 183
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    aput-boolean v4, v3, v7

    .line 185
    :cond_1b
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    const/4 v6, 0x5

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_1c

    .line 186
    invoke-direct {v0, v8, v5}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->sendKeyEvent(II)V

    .line 187
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    const/4 v6, 0x5

    aput-boolean v4, v3, v6

    .line 189
    :cond_1c
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    aget-boolean v3, v3, v9

    if-eqz v3, :cond_1d

    .line 190
    invoke-direct {v0, v10, v5}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->sendKeyEvent(II)V

    .line 191
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    aput-boolean v4, v3, v9

    .line 193
    :cond_1d
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    const/4 v6, 0x7

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_1e

    .line 194
    invoke-direct {v0, v11, v5}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->sendKeyEvent(II)V

    .line 195
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    const/4 v5, 0x7

    aput-boolean v4, v3, v5

    .line 198
    :cond_1e
    :goto_3
    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->currentRightTouchKeyCode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestRightTouchKeyCode:I

    if-ne v3, v4, :cond_1f

    .line 199
    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestRightTouchKeyCode:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    invoke-direct {v0, v3, v6, v4, v5}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->postKeyEvent(IIJ)V

    .line 201
    :cond_1f
    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestRightTouchKeyCode:I

    iput v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->currentRightTouchKeyCode:I

    .line 202
    sget-boolean v3, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->DEBUG:Z

    if-eqz v3, :cond_21

    .line 203
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 204
    .local v3, "buffer":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChangeEvent value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_20
    const-string v5, ""

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " rawKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " keyStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->keyStatus:[Z

    invoke-static {v5}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " latestRightTouchKeyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestRightTouchKeyCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " currentLeftTouchKeyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->currentLeftTouchKeyCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " latestRightTouchKeyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->latestRightTouchKeyCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " currentRightTouchKeyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->currentRightTouchKeyCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v1    # "values":[Ljava/lang/Object;
    .end local v2    # "rawKey":[I
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    :cond_21
    goto :goto_5

    .line 215
    :cond_22
    const/16 v1, 0x4ba

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->sendKeyEvent(II)V

    .line 216
    invoke-direct {v0, v1, v5}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->sendKeyEvent(II)V

    .line 217
    nop

    .line 220
    :goto_5
    return-void
.end method

.method private injectInputEvent(IIJ)V
    .locals 18
    .param p1, "keycode"    # I
    .param p2, "action"    # I
    .param p3, "time"    # J

    move-object/from16 v0, p0

    .line 234
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "injectInputEvent keycode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " action="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " time="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p3

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v16, 0x101

    const/16 v17, 0x0

    move-wide v4, v13

    move-wide v6, v13

    move v8, v15

    move v9, v3

    move v13, v1

    move v14, v2

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 238
    .local v1, "down":Landroid/view/KeyEvent;
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "injectInputEvent down="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 240
    invoke-virtual {v1}, Landroid/view/KeyEvent;->recycle()V

    .line 241
    return-void
.end method

.method private isQueueHaveDownEvent(I)Z
    .locals 1
    .param p1, "what"    # I

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->mKeyHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private postKeyEvent(IIJ)V
    .locals 0
    .param p1, "keycode"    # I
    .param p2, "what"    # I
    .param p3, "delay"    # J

    .line 223
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->removeEvent(I)V

    .line 224
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->handleEvent(IIJ)V

    .line 225
    return-void
.end method

.method private removeEvent(I)V
    .locals 1
    .param p1, "what"    # I

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->mKeyHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    return-void
.end method

.method private removeKeyEvent(I)V
    .locals 0
    .param p1, "what"    # I

    .line 227
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->removeEvent(I)V

    .line 228
    return-void
.end method

.method private sendKeyEvent(II)V
    .locals 3
    .param p1, "keycode"    # I
    .param p2, "action"    # I

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendKeyEvent keycode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->injectInputEvent(IIJ)V

    .line 232
    return-void
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "SmartInputService"

    return-object v0
.end method

.method protected initCarListener()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->TAG:Ljava/lang/String;

    const-string v1, "CarInputManager.CarInputEventCallback initCarListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartInputService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartInputService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarInputManager.CarInputEventCallback  next will addInputManagerListener mCarInputEventCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->addInputManagerListener(Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;)V

    .line 86
    return-void
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->TAG:Ljava/lang/String;

    const-string v1, "onCarManagerInited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 244
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->mKeyHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;->quit()Z

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->removeInputManagerListener(Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;)V

    .line 249
    return-void
.end method
