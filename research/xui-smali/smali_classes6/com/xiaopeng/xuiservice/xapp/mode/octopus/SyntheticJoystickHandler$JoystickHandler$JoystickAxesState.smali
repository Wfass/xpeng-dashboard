.class final Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;
.super Ljava/lang/Object;
.source "SyntheticJoystickHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "JoystickAxesState"
.end annotation


# static fields
.field private static final STATE_DOWN_OR_RIGHT:I = 0x1

.field private static final STATE_NEUTRAL:I = 0x0

.field private static final STATE_UP_OR_LEFT:I = -0x1


# instance fields
.field final mAxisStatesHat:[I

.field final mAxisStatesStick:[I

.field final synthetic this$1:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;)V
    .locals 2
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->this$1:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    .line 149
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private isXAxis(I)Z
    .locals 1
    .param p1, "axis"    # I

    .line 240
    if-eqz p1, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isYAxis(I)Z
    .locals 2
    .param p1, "axis"    # I

    .line 243
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method private joystickAxisAndStateToKeycode(II)I
    .locals 3
    .param p1, "axis"    # I
    .param p2, "state"    # I

    .line 247
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->isXAxis(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 248
    const/16 v0, 0x15

    return v0

    .line 250
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->isXAxis(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne p2, v2, :cond_1

    .line 251
    const/16 v0, 0x16

    return v0

    .line 253
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->isYAxis(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 254
    const/16 v0, 0x13

    return v0

    .line 256
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->isYAxis(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p2, v2, :cond_3

    .line 257
    const/16 v0, 0x14

    return v0

    .line 259
    :cond_3
    const-string v0, "SyntheticJoystickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown axis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " or direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method private joystickAxisValueToState(F)I
    .locals 1
    .param p1, "value"    # F

    .line 264
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 265
    const/4 v0, 0x1

    return v0

    .line 266
    :cond_0
    const/high16 v0, -0x41000000    # -0.5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 267
    const/4 v0, -0x1

    return v0

    .line 269
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method resetState()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aput v1, v0, v1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aput v1, v0, v2

    .line 156
    return-void
.end method

.method updateStateForAxis(Landroid/view/MotionEvent;JIF)V
    .locals 29
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "time"    # J
    .param p4, "axis"    # I
    .param p5, "value"    # F

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 163
    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->isXAxis(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "axisStateIndex":I
    const/4 v3, 0x1

    .local v3, "repeatMessage":I
    :goto_0
    goto :goto_1

    .line 166
    .end local v2    # "axisStateIndex":I
    .end local v3    # "repeatMessage":I
    :cond_0
    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->isYAxis(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 167
    const/4 v2, 0x1

    .line 168
    .restart local v2    # "axisStateIndex":I
    const/4 v3, 0x2

    goto :goto_0

    .line 171
    .restart local v3    # "repeatMessage":I
    :goto_1
    nop

    .line 173
    move/from16 v4, p5

    invoke-direct {v0, v4}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->joystickAxisValueToState(F)I

    move-result v5

    .line 176
    .local v5, "newState":I
    const/4 v6, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v6, :cond_1

    goto :goto_2

    .line 179
    :cond_1
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    aget v7, v7, v2

    goto :goto_3

    .line 177
    :cond_2
    :goto_2
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aget v7, v7, v2

    .line 179
    .local v7, "currentState":I
    :goto_3
    nop

    .line 182
    if-ne v7, v5, :cond_3

    .line 183
    return-void

    .line 186
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v21

    .line 187
    .local v21, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    .line 188
    .local v15, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v22

    .line 190
    .local v22, "source":I
    const/4 v14, -0x1

    if-eq v7, v6, :cond_4

    if-ne v7, v14, :cond_7

    .line 192
    :cond_4
    invoke-direct {v0, v1, v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->joystickAxisAndStateToKeycode(II)I

    move-result v23

    .line 193
    .local v23, "keyCode":I
    if-eqz v23, :cond_6

    .line 194
    new-instance v24, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x400

    move-object/from16 v8, v24

    move-wide/from16 v9, p2

    move-wide/from16 v11, p2

    move/from16 v14, v23

    move/from16 v26, v15

    move/from16 v15, v16

    .end local v15    # "deviceId":I
    .local v26, "deviceId":I
    move/from16 v16, v21

    move/from16 v17, v26

    move/from16 v20, v22

    invoke-direct/range {v8 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 197
    .local v8, "keyEvent":Landroid/view/KeyEvent;
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->this$1:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;

    iget-object v9, v9, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$OnJoystickNavigationEvent;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 198
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->this$1:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;

    iget-object v9, v9, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$OnJoystickNavigationEvent;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$OnJoystickNavigationEvent;->onJoystickNavigationEvent(Landroid/view/KeyEvent;)V

    .line 201
    :cond_5
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->this$1:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;->access$100(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;)Landroid/util/SparseArray;

    move-result-object v9

    const/4 v10, 0x0

    move/from16 v15, v26

    invoke-virtual {v9, v15, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    .end local v8    # "keyEvent":Landroid/view/KeyEvent;
    .end local v26    # "deviceId":I
    .restart local v15    # "deviceId":I
    :cond_6
    iget-object v8, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->this$1:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;

    invoke-virtual {v8, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;->removeMessages(I)V

    .line 210
    .end local v23    # "keyCode":I
    :cond_7
    if-eq v5, v6, :cond_9

    const/4 v8, -0x1

    if-ne v5, v8, :cond_8

    goto :goto_4

    .line 232
    :cond_8
    move v8, v15

    goto/16 :goto_5

    .line 212
    :cond_9
    :goto_4
    invoke-direct {v0, v1, v5}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->joystickAxisAndStateToKeycode(II)I

    move-result v23

    .line 213
    .restart local v23    # "keyCode":I
    if-eqz v23, :cond_b

    .line 214
    new-instance v24, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x400

    move-object/from16 v8, v24

    move-wide/from16 v9, p2

    move-wide/from16 v11, p2

    move/from16 v14, v23

    move/from16 v27, v15

    move/from16 v15, v16

    .end local v15    # "deviceId":I
    .local v27, "deviceId":I
    move/from16 v16, v21

    move/from16 v17, v27

    move/from16 v20, v22

    invoke-direct/range {v8 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v15, v24

    .line 217
    .local v15, "keyEvent":Landroid/view/KeyEvent;
    iget-object v8, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->this$1:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;

    iget-object v8, v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$OnJoystickNavigationEvent;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 218
    iget-object v8, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->this$1:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;

    iget-object v8, v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$OnJoystickNavigationEvent;

    move-result-object v8

    invoke-interface {v8, v15}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$OnJoystickNavigationEvent;->onJoystickNavigationEvent(Landroid/view/KeyEvent;)V

    .line 220
    :cond_a
    iget-object v8, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->this$1:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;

    invoke-virtual {v8, v3, v15}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 221
    .local v14, "m":Landroid/os/Message;
    invoke-virtual {v14, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 222
    iget-object v8, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->this$1:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v14, v9, v10}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 225
    iget-object v8, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->this$1:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;->access$100(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;)Landroid/util/SparseArray;

    move-result-object v13

    new-instance v11, Landroid/view/KeyEvent;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x420

    move-object v8, v11

    move-wide/from16 v9, p2

    move-object v6, v11

    move-wide/from16 v11, p2

    move-object/from16 v28, v13

    move/from16 v13, v16

    move-object/from16 v24, v14

    move/from16 v14, v23

    .end local v14    # "m":Landroid/os/Message;
    .local v24, "m":Landroid/os/Message;
    move-object/from16 v25, v15

    move/from16 v15, v17

    .end local v15    # "keyEvent":Landroid/view/KeyEvent;
    .local v25, "keyEvent":Landroid/view/KeyEvent;
    move/from16 v16, v21

    move/from16 v17, v27

    move/from16 v20, v22

    invoke-direct/range {v8 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move/from16 v8, v27

    move-object/from16 v9, v28

    invoke-virtual {v9, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v23    # "keyCode":I
    .end local v24    # "m":Landroid/os/Message;
    .end local v25    # "keyEvent":Landroid/view/KeyEvent;
    .end local v27    # "deviceId":I
    .local v8, "deviceId":I
    goto :goto_5

    .line 232
    .end local v8    # "deviceId":I
    .local v15, "deviceId":I
    :cond_b
    move v8, v15

    .end local v15    # "deviceId":I
    .restart local v8    # "deviceId":I
    :goto_5
    if-eqz v1, :cond_d

    const/4 v6, 0x1

    if-ne v1, v6, :cond_c

    goto :goto_6

    .line 235
    :cond_c
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    aput v5, v6, v2

    goto :goto_7

    .line 233
    :cond_d
    :goto_6
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aput v5, v6, v2

    .line 237
    :goto_7
    return-void

    .line 170
    .end local v2    # "axisStateIndex":I
    .end local v3    # "repeatMessage":I
    .end local v5    # "newState":I
    .end local v7    # "currentState":I
    .end local v8    # "deviceId":I
    .end local v21    # "metaState":I
    .end local v22    # "source":I
    :cond_e
    move/from16 v4, p5

    const-string v2, "SyntheticJoystickHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected axis "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in updateStateForAxis!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method
