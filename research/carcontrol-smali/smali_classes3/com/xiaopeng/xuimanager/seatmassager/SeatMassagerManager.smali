.class public Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;
.super Ljava/lang/Object;
.source "SeatMassagerManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;,
        Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;,
        Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;,
        Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;,
        Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerManagerHolder;
    }
.end annotation


# static fields
.field public static final AREA:I = 0x9

.field public static final EFFECT:I = 0x2

.field public static final ERROR:I = 0x8

.field public static final INTENSITY:I = 0x3

.field public static final LOAD:I = 0x7

.field private static final MSG_MASSAGER:I = 0x0

.field private static final MSG_VIBRATE:I = 0x1

.field public static final RHYTHM_INTENSITY:I = 0x5

.field public static final RHYTHM_PATTERN:I = 0x6

.field public static final RHYTHM_STATUS:I = 0x4

.field public static final START:I = 0x0

.field public static final STOP:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SeatMassagerManager"

.field private static mServiceName:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListenerToService:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListeners:Ljava/util/Set;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListenerToService:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListeners:Ljava/util/Set;

    const/4 p2, 0x0

    .line 55
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListenerToService:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;

    .line 770
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    .line 771
    new-instance p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$1;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;IILjava/lang/String;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->handleMassagerEvent(IILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;Ljava/util/Set;ILjava/lang/String;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->handleVibrateEvent(Ljava/util/Set;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->dispatchMassagerToClient(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->dispatchVibrateToClient(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;)V

    return-void
.end method

.method private dispatchMassagerToClient(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListeners:Ljava/util/Set;

    new-instance v2, Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$iYGpj6EYfe7-HpnaJSCDQ9BaZEo;

    invoke-direct {v2, p1}, Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$iYGpj6EYfe7-HpnaJSCDQ9BaZEo;-><init>(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 169
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dispatchVibrateToClient(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;)V
    .locals 7

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;

    .line 175
    iget v3, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->type:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 186
    :pswitch_1
    iget-object v3, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->ids:Ljava/util/Set;

    iget-object v4, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->sdata:Ljava/lang/String;

    iget v5, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->data:I

    shr-int/lit8 v5, v5, 0x4

    iget v6, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->data:I

    and-int/lit8 v6, v6, 0xf

    neg-int v6, v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;->onErrorVibrate(Ljava/util/Set;Ljava/lang/String;II)V

    goto :goto_0

    .line 183
    :pswitch_2
    iget-object v3, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->sdata:Ljava/lang/String;

    iget v6, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->data:I

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;->onLoadVibrate(Ljava/lang/String;Z)V

    goto :goto_0

    .line 200
    :pswitch_3
    iget v3, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->data:I

    invoke-interface {v2, v3}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;->onChangePatternRhythm(I)V

    goto :goto_0

    .line 197
    :pswitch_4
    iget-object v3, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->ids:Ljava/util/Set;

    iget v4, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->data:I

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;->onChangeIntensityRhythm(Ljava/util/Set;I)V

    goto :goto_0

    .line 194
    :pswitch_5
    iget-object v3, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->ids:Ljava/util/Set;

    iget v6, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->data:I

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    move v4, v5

    :goto_2
    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;->onChangeStatusRhythm(Ljava/util/Set;Z)V

    goto :goto_0

    .line 191
    :pswitch_6
    iget-object v3, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->ids:Ljava/util/Set;

    iget v4, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->data:I

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;->onChangeIntensityVibrate(Ljava/util/Set;I)V

    goto :goto_0

    .line 180
    :pswitch_7
    iget-object v3, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->ids:Ljava/util/Set;

    iget-object v4, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->sdata:Ljava/lang/String;

    iget v5, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->data:I

    invoke-interface {v2, v3, v4, v5}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;->onStopVibrate(Ljava/util/Set;Ljava/lang/String;I)V

    goto :goto_0

    .line 177
    :pswitch_8
    iget-object v3, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->ids:Ljava/util/Set;

    iget-object v4, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->sdata:Ljava/lang/String;

    iget v5, p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->data:I

    invoke-interface {v2, v3, v4, v5}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;->onStartVibrate(Ljava/util/Set;Ljava/lang/String;I)V

    goto :goto_0

    .line 204
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;
    .locals 1

    .line 67
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerManagerHolder;->access$100()Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    move-result-object v0

    return-object v0
.end method

.method private handleMassagerEvent(IILjava/lang/String;I)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 209
    iput v1, v0, Landroid/os/Message;->what:I

    .line 210
    new-instance v1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;-><init>(IILjava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 211
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleVibrateEvent(Ljava/util/Set;ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 216
    iput v1, v0, Landroid/os/Message;->what:I

    .line 217
    new-instance v1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;-><init>(Ljava/util/Set;ILjava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 218
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static synthetic lambda$33O9mHTV5Z4ngj0XYj9sirczgSA(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$dispatchMassagerToClient$0(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;)V
    .locals 3

    .line 153
    iget v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->type:I

    if-nez v0, :cond_0

    .line 154
    iget v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->id:I

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->sdata:Ljava/lang/String;

    iget p0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->data:I

    invoke-interface {p1, v0, v1, p0}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;->onStartMassager(ILjava/lang/String;I)V

    goto :goto_0

    .line 155
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 156
    iget v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->id:I

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->sdata:Ljava/lang/String;

    iget p0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->data:I

    invoke-interface {p1, v0, v1, p0}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;->onStopMassager(ILjava/lang/String;I)V

    goto :goto_0

    .line 157
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 158
    iget v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->id:I

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->sdata:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->data:I

    shr-int/lit8 v2, v2, 0x4

    iget p0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->data:I

    and-int/lit8 p0, p0, 0xf

    neg-int p0, p0

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;->onErrorMassager(ILjava/lang/String;II)V

    goto :goto_0

    .line 161
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 162
    iget v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->id:I

    iget-object p0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->sdata:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;->onChangeAreaMassager(ILjava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_3
    iget v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 164
    iget v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->id:I

    iget-object p0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->sdata:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;->onChangeEffectMassager(ILjava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_4
    iget v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 166
    iget v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->id:I

    iget p0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->data:I

    invoke-interface {p1, v0, p0}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;->onChangeIntensityMassager(II)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public doVibrate(III)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "background"

    .line 642
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->doVibrate(ILjava/lang/String;II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public doVibrate(ILjava/lang/String;II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    new-instance v1, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    .line 614
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->getVibrateIntensity(I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 613
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->doVibrate(Ljava/util/List;Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 617
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not doVibrate: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SeatMassagerManager"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public doVibrate(Lcom/xiaopeng/xuimanager/seatmassager/Seat;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "background"

    .line 646
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->doVibrate(Lcom/xiaopeng/xuimanager/seatmassager/Seat;Ljava/lang/String;II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public doVibrate(Lcom/xiaopeng/xuimanager/seatmassager/Seat;Ljava/lang/String;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->doVibrate(Ljava/util/List;Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 626
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not doVibrate: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SeatMassagerManager"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public doVibrate(Ljava/util/Set;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;II)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "background"

    .line 650
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->doVibrate(Ljava/util/Set;Ljava/lang/String;II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public doVibrate(Ljava/util/Set;Ljava/lang/String;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;",
            "Ljava/lang/String;",
            "II)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->doVibrate(Ljava/util/List;Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 636
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not doVibrate: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SeatMassagerManager"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public getMassagerArea(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getMassagerArea(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not getMassagerArea: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatMassagerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getMassagerEffect(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 479
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getMassagerEffect(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not getMassagerEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatMassagerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getMassagerIntensity(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->getMassagerEffect(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getMassagerIntensity(ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not getMassagerIntensity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatMassagerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getMassagerStatus(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getMassagerStatus(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not getMassagerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatMassagerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getRhythmEnable(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getRhythmEnable(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not getRhythmEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatMassagerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getRhythmIntensity(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getRhythmIntensity(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not getRhythmIntensity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatMassagerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getRhythmPattern()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getRhythmPattern()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getRhythmPattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeatMassagerManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 301
    sget-object v0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mServiceName:Ljava/lang/String;

    .line 305
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getVibrateIntensity(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 684
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getVibrateIntensity(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not getVibrateIntensity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatMassagerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 77
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    .line 78
    new-instance p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public loadMassagerEffect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->loadMassagerEffect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not loadMassagerEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeatMassagerManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public loadVibrateEffect(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->loadVibrate(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 566
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not loadVibrate: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SeatMassagerManager"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public loadVibrateEffect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->loadVibrateEffect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not loadVibrateEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeatMassagerManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public onServerDisconnected()V
    .locals 0

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "SeatMassagerManager"

    if-nez p1, :cond_0

    const-string p1, "onXUIConnected,service binder is null"

    .line 270
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected,service is the same:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 277
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    .line 278
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 280
    :try_start_0
    new-instance p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;-><init>(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListenerToService:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;

    .line 281
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->registerListener(Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onXUIDisconnected()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListenerToService:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->unregisterListener(Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;)V

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListenerToService:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatMassagerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "SeatMassagerManager"

    const-string v1, "registerListener"

    .line 309
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 313
    :try_start_1
    new-instance v0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;-><init>(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListenerToService:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;

    .line 314
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->registerListener(Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 319
    :try_start_2
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "SeatMassagerManager"

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 323
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMassagerArea(ILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SeatMassagerManager"

    .line 422
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMassagerArea, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", area="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setMassagerArea(Ljava/util/List;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 426
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setMassagerArea: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setMassagerArea(Ljava/util/Set;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SeatMassagerManager"

    .line 433
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;->INSTANCE:Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMassagerArea, ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", area="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setMassagerArea(Ljava/util/List;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 439
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setMassagerArea: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setMassagerEffect(ILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SeatMassagerManager"

    .line 455
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMassagerEffect, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setMassagerEffect(Ljava/util/List;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 459
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setMassagerEffect: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setMassagerEffect(Ljava/util/Set;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SeatMassagerManager"

    .line 466
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;->INSTANCE:Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMassagerEffect, ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setMassagerEffect(Ljava/util/List;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 472
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setMassagerEffect: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setMassagerIntensity(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SeatMassagerManager"

    .line 488
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMassagerIntensity, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setMassagerIntensity(Ljava/util/List;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 492
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setMassagerIntensity: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setMassagerIntensity(Ljava/util/Set;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SeatMassagerManager"

    .line 499
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;->INSTANCE:Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMassagerIntensity, ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setMassagerIntensity(Ljava/util/List;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 505
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setMassagerIntensity: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setRhythmEnable(IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SeatMassagerManager"

    .line 582
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRhythmEnable, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setRhythmEnable(Ljava/util/List;Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 585
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setRhythmEnable: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setRhythmEnable(Ljava/util/Set;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SeatMassagerManager"

    .line 592
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;->INSTANCE:Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRhythmEnable, ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setRhythmEnable(Ljava/util/List;Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 597
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setRhythmEnable: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setRhythmIntensity(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 693
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setRhythmIntensity(Ljava/util/List;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 695
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not setRhythmIntensity: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SeatMassagerManager"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setRhythmIntensity(Ljava/util/Set;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 702
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;->INSTANCE:Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 704
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setRhythmIntensity(Ljava/util/List;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 706
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not setRhythmIntensity: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SeatMassagerManager"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setRhythmPattern(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setRhythmPattern(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setRhythmPattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatMassagerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 293
    sput-object p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public setVibrateIntensity(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setVibrateIntensity(Ljava/util/List;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 666
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not setVibrateIntensity: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SeatMassagerManager"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setVibrateIntensity(Ljava/util/Set;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 673
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;->INSTANCE:Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 675
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setVibrateIntensity(Ljava/util/List;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 677
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not setVibrateIntensity: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SeatMassagerManager"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public showMassagerArea()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 413
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->showMassagerArea()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not showMassagerArea: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeatMassagerManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public showMassagerEffect()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 353
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->showMassagerEffect()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not showMassagerEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeatMassagerManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public showVibrateEffect()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 573
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->showVibrateEffect()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not showVibrateEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeatMassagerManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startMassager(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SeatMassagerManager"

    .line 362
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->getMassagerEffect(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v2, p1, v1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getMassagerIntensity(ILjava/lang/String;)I

    move-result v2

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startMassager, id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [effect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intensity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    new-instance v4, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    invoke-direct {v4, p1, v2}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v3, p1, v1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->startMassager(Ljava/util/List;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not startMassager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public startMassager(ILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SeatMassagerManager"

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getMassagerIntensity(ILjava/lang/String;)I

    move-result v1

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMassager, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", effect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " [intensity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    new-instance v3, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    invoke-direct {v3, p1, v1}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->startMassager(Ljava/util/List;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 382
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not startMassager: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public startMassager(Lcom/xiaopeng/xuimanager/seatmassager/Seat;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SeatMassagerManager"

    .line 389
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMassager, seat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->startMassager(Ljava/util/List;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 393
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not startMassager: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public startMassager(Ljava/util/Set;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SeatMassagerManager"

    .line 400
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMassager, seats="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 401
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$nZ4o7rDxqom7rsagRV_S3vTPbM8;->INSTANCE:Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$nZ4o7rDxqom7rsagRV_S3vTPbM8;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->startMassager(Ljava/util/List;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 406
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not startMassager: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public stopMassager(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SeatMassagerManager"

    .line 530
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMassager, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->stopMassager(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not stopMassager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public stopMassager(Ljava/util/Set;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SeatMassagerManager"

    .line 541
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;->INSTANCE:Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMassager, ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->stopMassager(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not stopMassager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public stopVibrate()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->stopVibrate()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not stopVibrate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeatMassagerManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "SeatMassagerManager"

    const-string v1, "unregisterListener"

    .line 327
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 330
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 332
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mService:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListenerToService:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->unregisterListener(Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 337
    :try_start_2
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->mListenerToService:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SeatMassagerManager"

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unregister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
