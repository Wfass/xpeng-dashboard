.class public Layl;
.super Ljava/lang/Object;
.source "BluetoothJobs.java"


# instance fields
.field private a:Lio/reactivex/disposables/Disposable;

.field private b:Lio/reactivex/disposables/Disposable;

.field private c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/xiaopeng/musicradio/model/bluetooth/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/xiaopeng/musicradio/model/bluetooth/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/xiaopeng/musicradio/model/bluetooth/d;

.field private f:Ljava/lang/Object;

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/model/bluetooth/d;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Layl;->f:Ljava/lang/Object;

    const/16 v0, 0xa

    .line 41
    iput v0, p0, Layl;->g:I

    const/16 v0, 0xd

    .line 42
    iput v0, p0, Layl;->h:I

    .line 45
    iput-object p1, p0, Layl;->e:Lcom/xiaopeng/musicradio/model/bluetooth/d;

    .line 46
    new-instance p1, Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Layl$1;

    invoke-direct {v0, p0}, Layl$1;-><init>(Layl;)V

    const/16 v1, 0x14

    invoke-direct {p1, v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Layl;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 52
    new-instance p1, Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Layl$2;

    invoke-direct {v0, p0}, Layl$2;-><init>(Layl;)V

    invoke-direct {p1, v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Layl;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 58
    invoke-direct {p0}, Layl;->b()V

    return-void
.end method

.method private a(II)Lio/reactivex/disposables/Disposable;
    .locals 2

    int-to-long v0, p1

    .line 71
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 72
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Layl$3;

    invoke-direct {v0, p0, p2}, Layl$3;-><init>(Layl;I)V

    .line 73
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Layl;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 0

    .line 32
    iget-object p0, p0, Layl;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object p0
.end method

.method static synthetic b(Layl;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 0

    .line 32
    iget-object p0, p0, Layl;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 62
    iget-object v0, p0, Layl;->a:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0xfa

    const/16 v1, 0xd

    .line 63
    invoke-direct {p0, v0, v1}, Layl;->a(II)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Layl;->a:Lio/reactivex/disposables/Disposable;

    .line 65
    :cond_1
    iget-object v0, p0, Layl;->b:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x2ee

    const/16 v1, 0xa

    .line 66
    invoke-direct {p0, v0, v1}, Layl;->a(II)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Layl;->b:Lio/reactivex/disposables/Disposable;

    :cond_3
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "bt_pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "bt_prev"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "bt_play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "bt_next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    return v1

    :cond_1
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0xb831ac0 -> :sswitch_3
        0xb841b01 -> :sswitch_2
        0xb843200 -> :sswitch_1
        0x64fa8fc9 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic c(Layl;)Lcom/xiaopeng/musicradio/model/bluetooth/d;
    .locals 0

    .line 32
    iget-object p0, p0, Layl;->e:Lcom/xiaopeng/musicradio/model/bluetooth/d;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6555e5f9

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x4ef7141

    if-eq v0, v1, :cond_1

    const v1, 0x2c07469b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "bt_get_meta"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_1
    const-string v0, "bt_get_position"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_2
    const-string v0, "bt_get_play_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_4

    return v2

    :cond_4
    return v4
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 192
    iget-object v0, p0, Layl;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 193
    iget-object v0, p0, Layl;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/model/bluetooth/b;)V
    .locals 5

    .line 118
    iget-object v0, p0, Layl;->f:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 120
    :try_start_0
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 123
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Layl;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    iget-object v1, p0, Layl;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Layl;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    iget-object v1, p0, Layl;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    const-string v1, "BluetoothJobs"

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opcode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " exception in addBtJob!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    monitor-exit v0

    return-void

    .line 132
    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Layl;->e:Lcom/xiaopeng/musicradio/model/bluetooth/d;

    invoke-interface {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/d;->l()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "BluetoothJobs"

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add job to queue :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-direct {p0}, Layl;->b()V

    goto :goto_1

    :cond_4
    const-string v1, "BluetoothJobs"

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispose job to queue :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 9

    .line 143
    iget-object v0, p0, Layl;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 146
    invoke-direct {p0, p1}, Layl;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    iget-object v2, p0, Layl;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    goto :goto_0

    .line 148
    :cond_0
    invoke-direct {p0, p1}, Layl;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    iget-object v2, p0, Layl;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    const-string v1, "BluetoothJobs"

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opcode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exception in removeInstruction!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    monitor-exit v0

    return-void

    .line 155
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/model/bluetooth/b;

    if-eqz p1, :cond_4

    .line 158
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/model/bluetooth/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    const-string v5, "BluetoothJobs"

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeInstruction :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/model/bluetooth/b;->a()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 159
    :cond_4
    :goto_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 165
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
