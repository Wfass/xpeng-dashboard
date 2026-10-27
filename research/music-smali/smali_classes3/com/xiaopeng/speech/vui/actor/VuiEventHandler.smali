.class public Lcom/xiaopeng/speech/vui/actor/VuiEventHandler;
.super Landroid/os/Handler;
.source "VuiEventHandler.java"


# static fields
.field private static volatile instance:Lcom/xiaopeng/speech/vui/actor/VuiEventHandler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/speech/vui/actor/VuiEventHandler;
    .locals 2

    .line 18
    sget-object v0, Lcom/xiaopeng/speech/vui/actor/VuiEventHandler;->instance:Lcom/xiaopeng/speech/vui/actor/VuiEventHandler;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/xiaopeng/speech/vui/actor/VuiEventHandler;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/xiaopeng/speech/vui/actor/VuiEventHandler;->instance:Lcom/xiaopeng/speech/vui/actor/VuiEventHandler;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/xiaopeng/speech/vui/actor/VuiEventHandler;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/actor/VuiEventHandler;-><init>()V

    sput-object v1, Lcom/xiaopeng/speech/vui/actor/VuiEventHandler;->instance:Lcom/xiaopeng/speech/vui/actor/VuiEventHandler;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/speech/vui/actor/VuiEventHandler;->instance:Lcom/xiaopeng/speech/vui/actor/VuiEventHandler;

    return-object v0
.end method


# virtual methods
.method public runMain(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 31
    :cond_0
    sget-object v0, Lcom/xiaopeng/speech/vui/actor/VuiEventHandler;->instance:Lcom/xiaopeng/speech/vui/actor/VuiEventHandler;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/actor/VuiEventHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
