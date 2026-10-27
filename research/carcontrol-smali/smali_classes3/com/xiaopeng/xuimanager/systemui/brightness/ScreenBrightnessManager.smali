.class public Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;
.super Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;
.source "ScreenBrightnessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$Holder;,
        Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;,
        Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$StateEvent;,
        Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$AngleEvent;,
        Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListener;
    }
.end annotation


# static fields
.field private static final MSG_ANGLE_EVENT_NOTIFY:I = 0x0

.field private static final MSG_STATE_EVENT_NOTIFY:I = 0x1

.field private static final RET_EXCEPTION:I = 0x2

.field public static final SCREEN_CLOSE_CTRL:I = 0x0

.field public static final SCREEN_OPEN_CTRL:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScreenBrightnessListenerImpl:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 345
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mScreenBrightnessListenerImpl:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mListeners:Ljava/util/HashMap;

    .line 34
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$1;

    invoke-static {}, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->getInstance()Lcom/xiaopeng/xuimanager/utils/WorkHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$1;-><init>(Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;IIZLjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->notifyAngleEvent(IIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;IIZLjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->notifyStateEvent(IIZLjava/lang/String;)V

    return-void
.end method

.method public static get()Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;
    .locals 1

    .line 349
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$Holder;->access$300()Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;

    move-result-object v0

    return-object v0
.end method

.method private notifyAngleEvent(IIZLjava/lang/String;)V
    .locals 3

    .line 234
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->logTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAngleEvent- screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " angle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isForceOpen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 240
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListener;

    .line 241
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListener;->onScreenAngleChange(IIZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    .line 237
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->logTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "notifyAngleEvent no listener!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyStateEvent(IIZLjava/lang/String;)V
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->logTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateEvent- screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isForceOpen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 252
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListener;

    .line 253
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListener;->onScreenStateChange(IIZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    .line 249
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->logTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "notifyStateEvent no listener!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public forceSetXpScreenOnEx(I)I
    .locals 3

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->logTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceSetXpScreenOnEx- screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    .line 107
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->forceSetXpScreenOnEx(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x2

    return p1
.end method

.method public getScreenAngle(I)I
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    .line 137
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->getScreenAngle(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x2

    return p1
.end method

.method public getScreenState(I)I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    .line 122
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->getScreenState(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x2

    return p1
.end method

.method protected logTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ScreenBrightnessManager"

    return-object v0
.end method

.method public onServerConnected(Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;)V
    .locals 3

    .line 213
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;->onServerConnected(Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;)V

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mScreenBrightnessListenerImpl:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;

    if-eqz p1, :cond_0

    .line 217
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mScreenBrightnessListenerImpl:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->setScreenBrightnessListener(Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->logTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServerConnected e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public registerScreenBrightnessListener(ILcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListener;)V
    .locals 4

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->logTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerScreenBrightnessListener- screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->logTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "registerScreenBrightnessListener null!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mScreenBrightnessListenerImpl:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;

    if-nez v0, :cond_1

    .line 168
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mScreenBrightnessListenerImpl:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mScreenBrightnessListenerImpl:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->setScreenBrightnessListener(Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->logTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerScreenBrightnessListener e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_2

    .line 177
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 179
    :cond_2
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setScreenAngle(IIZLjava/lang/String;)I
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->logTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenAngle- screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " angle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isForceOpen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    .line 91
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->setScreenAngle(IIZLjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x2

    return p1
.end method

.method public setScreenDisable(IILjava/lang/String;)I
    .locals 3

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->logTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenDisable- screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    .line 148
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->setScreenDisable(IILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->logTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setScreenDisable e="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    return p1
.end method

.method public setScreenState(IIZLjava/lang/String;)I
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->logTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenState- screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isForceOpen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    .line 72
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->setScreenState(IIZLjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x2

    return p1
.end method

.method public unregisterScreenBrightnessListener(ILcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListener;)V
    .locals 3

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->logTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterScreenBrightnessListener-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    .line 192
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-eqz v1, :cond_3

    .line 193
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 197
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 199
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 203
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mScreenBrightnessListenerImpl:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->removeScreenBrightnessListener(Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->logTag()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterScreenBrightnessListener e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    .line 207
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->mScreenBrightnessListenerImpl:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;

    :cond_2
    return-void

    .line 194
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->logTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "unregisterScreenBrightnessListener no listener!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
