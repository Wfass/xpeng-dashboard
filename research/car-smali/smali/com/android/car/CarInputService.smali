.class public Lcom/android/car/CarInputService;
.super Ljava/lang/Object;
.source "CarInputService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/hal/InputHalService$InputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarInputService$KeyPressTimer;,
        Lcom/android/car/CarInputService$KeyEventListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false


# instance fields
.field private final mCallKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;

.field private final mCallback:Landroid/os/Binder;

.field private mCarInputListener:Landroid/car/input/ICarInputListener;

.field private mCarInputListenerBound:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandledKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInputHalService:Lcom/android/car/hal/InputHalService;

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private final mInputServiceConnection:Landroid/content/ServiceConnection;

.field private mInstrumentClusterKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

.field private mLongVoiceAssistantKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

.field private final mTelecomManager:Landroid/telecom/TelecomManager;

.field private mVoiceAssistantKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

.field private final mVoiceKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/hal/InputHalService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputHalService"    # Lcom/android/car/hal/InputHalService;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/android/car/CarInputService$KeyPressTimer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/car/CarInputService$KeyPressTimer;-><init>(Lcom/android/car/CarInputService$1;)V

    iput-object v0, p0, Lcom/android/car/CarInputService;->mVoiceKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;

    .line 97
    new-instance v0, Lcom/android/car/CarInputService$KeyPressTimer;

    invoke-direct {v0, v1}, Lcom/android/car/CarInputService$KeyPressTimer;-><init>(Lcom/android/car/CarInputService$1;)V

    iput-object v0, p0, Lcom/android/car/CarInputService;->mCallKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarInputService;->mCarInputListenerBound:Z

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarInputService;->mHandledKeys:Ljava/util/Map;

    .line 105
    new-instance v0, Lcom/android/car/CarInputService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarInputService$1;-><init>(Lcom/android/car/CarInputService;)V

    iput-object v0, p0, Lcom/android/car/CarInputService;->mCallback:Landroid/os/Binder;

    .line 121
    new-instance v0, Lcom/android/car/CarInputService$2;

    invoke-direct {v0, p0}, Lcom/android/car/CarInputService$2;-><init>(Lcom/android/car/CarInputService;)V

    iput-object v0, p0, Lcom/android/car/CarInputService;->mInputServiceConnection:Landroid/content/ServiceConnection;

    .line 152
    iput-object p1, p0, Lcom/android/car/CarInputService;->mContext:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/android/car/CarInputService;->mInputHalService:Lcom/android/car/hal/InputHalService;

    .line 154
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/car/CarInputService;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 155
    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/car/CarInputService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 156
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/CarInputService;[Landroid/car/input/CarInputHandlingService$InputFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarInputService;
    .param p1, "x1"    # [Landroid/car/input/CarInputHandlingService$InputFilter;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/car/CarInputService;->setHandledKeys([Landroid/car/input/CarInputHandlingService$InputFilter;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/car/CarInputService;Landroid/car/input/ICarInputListener;)Landroid/car/input/ICarInputListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarInputService;
    .param p1, "x1"    # Landroid/car/input/ICarInputListener;

    .line 53
    iput-object p1, p0, Lcom/android/car/CarInputService;->mCarInputListener:Landroid/car/input/ICarInputListener;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/car/CarInputService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarInputService;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/android/car/CarInputService;->mCarInputListenerBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/car/CarInputService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarInputService;

    .line 53
    invoke-direct {p0}, Lcom/android/car/CarInputService;->bindCarInputService()Z

    move-result v0

    return v0
.end method

.method private bindCarInputService()Z
    .locals 6

    .line 356
    iget-object v0, p0, Lcom/android/car/CarInputService;->mContext:Landroid/content/Context;

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "carInputService":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    const-string v1, "CAR.INPUT"

    const-string v2, "Custom input service was not configured"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v1, 0x0

    return v1

    .line 362
    :cond_0
    const-string v1, "CAR.INPUT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindCarInputService, component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 365
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 366
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "callback_binder"

    iget-object v4, p0, Lcom/android/car/CarInputService;->mCallback:Landroid/os/Binder;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 367
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 368
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 369
    iget-object v3, p0, Lcom/android/car/CarInputService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/car/CarInputService;->mInputServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    return v3
.end method

.method private dialLastCallHandler()V
    .locals 5

    .line 315
    const-string v0, "CAR.INPUT"

    const-string v1, "call key, dialing last call"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/car/CarInputService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/CallLog$Calls;->getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "lastNumber":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "tel"

    .line 320
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 321
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 322
    .local v1, "callLastNumberIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/car/CarInputService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 324
    .end local v1    # "callLastNumberIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private handleCallKey(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 290
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 291
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/car/CarInputService;->mCallKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;

    invoke-virtual {v1}, Lcom/android/car/CarInputService$KeyPressTimer;->keyDown()V

    goto :goto_0

    .line 293
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 294
    iget-object v1, p0, Lcom/android/car/CarInputService;->mCallKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;

    invoke-virtual {v1}, Lcom/android/car/CarInputService$KeyPressTimer;->keyUp()V

    .line 297
    iget-object v1, p0, Lcom/android/car/CarInputService;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/car/CarInputService;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    const-string v1, "CAR.INPUT"

    const-string v2, "call key while ringing. Answer the call!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/android/car/CarInputService;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/android/car/CarInputService;->mCallKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;

    invoke-virtual {v1}, Lcom/android/car/CarInputService$KeyPressTimer;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    invoke-direct {p0}, Lcom/android/car/CarInputService;->dialLastCallHandler()V

    goto :goto_0

    .line 303
    :cond_2
    invoke-direct {p0}, Lcom/android/car/CarInputService;->launchDialerHandler()V

    .line 306
    :cond_3
    :goto_0
    return-void
.end method

.method private handleInstrumentClusterKey(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "listener":Lcom/android/car/CarInputService$KeyEventListener;
    monitor-enter p0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarInputService;->mInstrumentClusterKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

    move-object v0, v1

    .line 337
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    if-nez v0, :cond_0

    .line 339
    return-void

    .line 341
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/car/CarInputService$KeyEventListener;->onKeyEvent(Landroid/view/KeyEvent;)Z

    .line 342
    return-void

    .line 337
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleMainDisplayKey(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 345
    iget-object v0, p0, Lcom/android/car/CarInputService;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 346
    return-void
.end method

.method private handleVoiceAssistKey(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 269
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 270
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/car/CarInputService;->mVoiceKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;

    invoke-virtual {v1}, Lcom/android/car/CarInputService$KeyPressTimer;->keyDown()V

    goto :goto_1

    .line 272
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 273
    iget-object v1, p0, Lcom/android/car/CarInputService;->mVoiceKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;

    invoke-virtual {v1}, Lcom/android/car/CarInputService$KeyPressTimer;->keyUp()V

    .line 276
    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarInputService;->mVoiceKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;

    invoke-virtual {v1}, Lcom/android/car/CarInputService$KeyPressTimer;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/android/car/CarInputService;->mLongVoiceAssistantKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/car/CarInputService;->mVoiceAssistantKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

    .line 279
    .local v1, "listener":Lcom/android/car/CarInputService$KeyEventListener;
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    if-eqz v1, :cond_2

    .line 282
    invoke-interface {v1, p1}, Lcom/android/car/CarInputService$KeyEventListener;->onKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_1

    .line 284
    :cond_2
    invoke-direct {p0}, Lcom/android/car/CarInputService;->launchDefaultVoiceAssistantHandler()V

    .end local v1    # "listener":Lcom/android/car/CarInputService$KeyEventListener;
    goto :goto_1

    .line 279
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 287
    :cond_3
    :goto_1
    return-void
.end method

.method private declared-synchronized isCustomEventHandler(Landroid/view/KeyEvent;I)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "targetDisplay"    # I

    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarInputService;->mHandledKeys:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .local v0, "displaySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 263
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 265
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 260
    .end local v0    # "displaySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local p1    # "event":Landroid/view/KeyEvent;
    .end local p2    # "targetDisplay":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarInputService;
    throw p1
.end method

.method private launchDefaultVoiceAssistantHandler()V
    .locals 4

    .line 327
    const-string v0, "CAR.INPUT"

    const-string v1, "voice key, launch default intent"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "voiceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/car/CarInputService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 331
    return-void
.end method

.method private launchDialerHandler()V
    .locals 4

    .line 309
    const-string v0, "CAR.INPUT"

    const-string v1, "call key, launch dialer intent"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "dialerIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/car/CarInputService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 312
    return-void
.end method

.method private declared-synchronized setHandledKeys([Landroid/car/input/CarInputHandlingService$InputFilter;)V
    .locals 6
    .param p1, "handledKeys"    # [Landroid/car/input/CarInputHandlingService$InputFilter;

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarInputService;->mHandledKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 160
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 161
    .local v2, "handledKey":Landroid/car/input/CarInputHandlingService$InputFilter;
    iget-object v3, p0, Lcom/android/car/CarInputService;->mHandledKeys:Ljava/util/Map;

    iget v4, v2, Landroid/car/input/CarInputHandlingService$InputFilter;->mTargetDisplay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 162
    .local v3, "displaySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v3, :cond_0

    .line 163
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v3, v4

    .line 164
    iget-object v4, p0, Lcom/android/car/CarInputService;->mHandledKeys:Ljava/util/Map;

    iget v5, v2, Landroid/car/input/CarInputHandlingService$InputFilter;->mTargetDisplay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_0
    iget v4, v2, Landroid/car/input/CarInputHandlingService$InputFilter;->mKeyCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .end local v2    # "handledKey":Landroid/car/input/CarInputHandlingService$InputFilter;
    .end local v3    # "displaySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_1
    monitor-exit p0

    return-void

    .line 158
    .end local p1    # "handledKeys":[Landroid/car/input/CarInputHandlingService$InputFilter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarInputService;
    throw p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 350
    const-string v0, "*Input Service*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCarInputListenerBound:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/CarInputService;->mCarInputListenerBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCarInputListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarInputService;->mCarInputListener:Landroid/car/input/ICarInputListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public init()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/car/CarInputService;->mInputHalService:Lcom/android/car/hal/InputHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/InputHalService;->isKeyInputSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const-string v0, "CAR.INPUT"

    const-string v1, "Hal does not support key input."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarInputService;->mInputHalService:Lcom/android/car/hal/InputHalService;

    invoke-virtual {v0, p0}, Lcom/android/car/hal/InputHalService;->setInputListener(Lcom/android/car/hal/InputHalService$InputListener;)V

    .line 211
    invoke-direct {p0}, Lcom/android/car/CarInputService;->bindCarInputService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/CarInputService;->mCarInputListenerBound:Z

    .line 212
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "targetDisplay"    # I

    .line 230
    iget-object v0, p0, Lcom/android/car/CarInputService;->mCarInputListener:Landroid/car/input/ICarInputListener;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/car/CarInputService;->isCustomEventHandler(Landroid/view/KeyEvent;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarInputService;->mCarInputListener:Landroid/car/input/ICarInputListener;

    invoke-interface {v0, p1, p2}, Landroid/car/input/ICarInputListener;->onKeyEvent(Landroid/view/KeyEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CAR.INPUT"

    const-string v2, "Error while calling car input service"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe7

    if-eq v0, v1, :cond_2

    .line 253
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 254
    invoke-direct {p0, p1}, Lcom/android/car/CarInputService;->handleInstrumentClusterKey(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 256
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/car/CarInputService;->handleMainDisplayKey(Landroid/view/KeyEvent;)V

    .line 258
    :goto_1
    return-void

    .line 243
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/car/CarInputService;->handleVoiceAssistKey(Landroid/view/KeyEvent;)V

    .line 244
    return-void

    .line 246
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/car/CarInputService;->handleCallKey(Landroid/view/KeyEvent;)V

    .line 247
    return-void
.end method

.method public release()V
    .locals 2

    .line 216
    monitor-enter p0

    .line 217
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/car/CarInputService;->mVoiceAssistantKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

    .line 218
    iput-object v0, p0, Lcom/android/car/CarInputService;->mLongVoiceAssistantKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

    .line 219
    iput-object v0, p0, Lcom/android/car/CarInputService;->mInstrumentClusterKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

    .line 220
    iget-boolean v0, p0, Lcom/android/car/CarInputService;->mCarInputListenerBound:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/car/CarInputService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/CarInputService;->mInputServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarInputService;->mCarInputListenerBound:Z

    .line 224
    :cond_0
    monitor-exit p0

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInstrumentClusterKeyListener(Lcom/android/car/CarInputService$KeyEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/car/CarInputService$KeyEventListener;

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iput-object p1, p0, Lcom/android/car/CarInputService;->mInstrumentClusterKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

    .line 197
    monitor-exit p0

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLongVoiceAssistantKeyListener(Lcom/android/car/CarInputService$KeyEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/car/CarInputService$KeyEventListener;

    .line 189
    monitor-enter p0

    .line 190
    :try_start_0
    iput-object p1, p0, Lcom/android/car/CarInputService;->mLongVoiceAssistantKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

    .line 191
    monitor-exit p0

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVoiceAssistantKeyListener(Lcom/android/car/CarInputService$KeyEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/car/CarInputService$KeyEventListener;

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iput-object p1, p0, Lcom/android/car/CarInputService;->mVoiceAssistantKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

    .line 179
    monitor-exit p0

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
