.class public Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;
.super Ljava/lang/Object;
.source "AiAssistantModuleEntry.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/module/IModuleEntry;


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mContextSensor:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/IContextSensor;

.field private volatile mINotification:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotification;

.field private volatile mInteractiveMsgService:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 29
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService;

    if-ne p1, v0, :cond_2

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;->mInteractiveMsgService:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService;

    if-nez p1, :cond_1

    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;->mInteractiveMsgService:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService;

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;

    invoke-direct {p1}, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;->mInteractiveMsgService:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService;

    .line 35
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 38
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;->mInteractiveMsgService:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService;

    return-object p1

    .line 39
    :cond_2
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotification;

    if-ne p1, v0, :cond_5

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;->mINotification:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotification;

    if-nez p1, :cond_4

    .line 41
    monitor-enter p0

    .line 42
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;->mINotification:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotification;

    if-nez p1, :cond_3

    .line 43
    new-instance p1, Lcom/xiaopeng/lib/framework/aiassistantmodule/notification/AINotification;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/aiassistantmodule/notification/AINotification;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;->mINotification:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotification;

    .line 45
    :cond_3
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 48
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;->mINotification:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotification;

    return-object p1

    .line 49
    :cond_5
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/IContextSensor;

    if-ne p1, v0, :cond_8

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;->mContextSensor:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/IContextSensor;

    if-nez p1, :cond_7

    .line 51
    monitor-enter p0

    .line 52
    :try_start_2
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;->mContextSensor:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/IContextSensor;

    if-nez p1, :cond_6

    .line 53
    new-instance p1, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;->mContextSensor:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/IContextSensor;

    .line 55
    :cond_6
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    .line 58
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;->mContextSensor:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/IContextSensor;

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method
