.class public Lbus;
.super Ljava/lang/Object;
.source "SpeechClient.java"

# interfaces
.implements Lbuf$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbus$a;
    }
.end annotation


# instance fields
.field private volatile a:Landroid/content/Context;

.field private volatile b:Lbuq;

.field private volatile c:Lcom/xiaopeng/speech/actor/a;

.field private volatile d:Lbuf;

.field private volatile e:Lbxc;

.field private volatile f:Lbxe;

.field private volatile g:Lbwv;

.field private volatile h:Lbxb;

.field private volatile i:Lbws;

.field private volatile j:Lbwt;

.field private volatile k:Lbxa;

.field private volatile l:Lbwz;

.field private volatile m:Lbwr;

.field private volatile n:Lbwy;

.field private volatile o:Lbur;

.field private volatile p:Lbwx;

.field private volatile q:Lbxf;

.field private volatile r:Lbve;

.field private volatile s:Lbxd;

.field private volatile t:Lbwu;

.field private final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final v:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbus;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lbus;->v:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static b()Lbus;
    .locals 1

    .line 65
    invoke-static {}, Lbus$a;->a()Lbus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1, v0}, Lbus;->a(Landroid/content/Context;Lbuf$a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lbuf$a;)V
    .locals 5

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "1.0"

    aput-object v3, v1, v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    const-string v4, "1.16.0.3-f66daaa793f1-SNAPSHOT"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "2025-03-03 14:58:03"

    aput-object v4, v1, v2

    const-string v2, "SpeechClient(%s) Start In %s, connectCallback: %s, build version: %s, build time: %s"

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lbus;->v:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 76
    :try_start_0
    iget-object v0, p0, Lbus;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object p1, p0, Lbus;->d:Lbuf;

    invoke-virtual {p1, p2}, Lbuf;->a(Lbuf$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object p1, p0, Lbus;->v:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 80
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NodeWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v1, Lcom/xiaopeng/speech/common/util/f;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaopeng/speech/common/util/f;-><init>(Landroid/os/Looper;)V

    .line 84
    iput-object p1, p0, Lbus;->a:Landroid/content/Context;

    .line 86
    new-instance v0, Lbuf;

    invoke-direct {v0, p1}, Lbuf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbus;->d:Lbuf;

    .line 87
    iget-object v0, p0, Lbus;->d:Lbuf;

    invoke-virtual {v0, v1}, Lbuf;->a(Lcom/xiaopeng/speech/common/util/f;)V

    .line 89
    new-instance v0, Lbuq;

    invoke-direct {v0}, Lbuq;-><init>()V

    iput-object v0, p0, Lbus;->b:Lbuq;

    .line 90
    iget-object v0, p0, Lbus;->b:Lbuq;

    invoke-virtual {v0, v1}, Lbuq;->a(Lcom/xiaopeng/speech/common/util/f;)V

    .line 91
    iget-object v0, p0, Lbus;->d:Lbuf;

    iget-object v2, p0, Lbus;->b:Lbuq;

    invoke-virtual {v0, v2}, Lbuf;->a(Lbuf$a;)V

    .line 93
    new-instance v0, Lbur;

    invoke-direct {v0}, Lbur;-><init>()V

    iput-object v0, p0, Lbus;->o:Lbur;

    .line 94
    iget-object v0, p0, Lbus;->o:Lbur;

    invoke-virtual {v0, v1}, Lbur;->a(Lcom/xiaopeng/speech/common/util/f;)V

    .line 95
    iget-object v0, p0, Lbus;->d:Lbuf;

    iget-object v2, p0, Lbus;->o:Lbur;

    invoke-virtual {v0, v2}, Lbuf;->a(Lbuf$a;)V

    .line 97
    new-instance v0, Lcom/xiaopeng/speech/actor/a;

    invoke-direct {v0, p1}, Lcom/xiaopeng/speech/actor/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbus;->c:Lcom/xiaopeng/speech/actor/a;

    .line 98
    iget-object v0, p0, Lbus;->c:Lcom/xiaopeng/speech/actor/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/actor/a;->a(Lcom/xiaopeng/speech/common/util/f;)V

    .line 99
    iget-object v0, p0, Lbus;->d:Lbuf;

    iget-object v2, p0, Lbus;->c:Lcom/xiaopeng/speech/actor/a;

    invoke-virtual {v0, v2}, Lbuf;->a(Lbuf$a;)V

    .line 101
    new-instance v0, Lbxc;

    invoke-direct {v0}, Lbxc;-><init>()V

    iput-object v0, p0, Lbus;->e:Lbxc;

    .line 102
    iget-object v0, p0, Lbus;->e:Lbxc;

    invoke-virtual {v0, v1}, Lbxc;->a(Lcom/xiaopeng/speech/common/util/f;)V

    .line 103
    iget-object v0, p0, Lbus;->d:Lbuf;

    iget-object v2, p0, Lbus;->e:Lbxc;

    invoke-virtual {v0, v2}, Lbuf;->a(Lbuf$a;)V

    .line 105
    new-instance v0, Lbxe;

    invoke-direct {v0}, Lbxe;-><init>()V

    iput-object v0, p0, Lbus;->f:Lbxe;

    .line 106
    iget-object v0, p0, Lbus;->f:Lbxe;

    invoke-virtual {v0, v1}, Lbxe;->a(Lcom/xiaopeng/speech/common/util/f;)V

    .line 107
    iget-object v0, p0, Lbus;->d:Lbuf;

    iget-object v2, p0, Lbus;->f:Lbxe;

    invoke-virtual {v0, v2}, Lbuf;->a(Lbuf$a;)V

    .line 109
    new-instance v0, Lbwv;

    invoke-direct {v0}, Lbwv;-><init>()V

    iput-object v0, p0, Lbus;->g:Lbwv;

    .line 110
    iget-object v0, p0, Lbus;->g:Lbwv;

    invoke-virtual {v0, v1}, Lbwv;->a(Lcom/xiaopeng/speech/common/util/f;)V

    .line 111
    iget-object v0, p0, Lbus;->d:Lbuf;

    iget-object v2, p0, Lbus;->g:Lbwv;

    invoke-virtual {v0, v2}, Lbuf;->a(Lbuf$a;)V

    .line 113
    new-instance v0, Lbws;

    invoke-direct {v0}, Lbws;-><init>()V

    iput-object v0, p0, Lbus;->i:Lbws;

    .line 114
    iget-object v0, p0, Lbus;->i:Lbws;

    invoke-virtual {v0, v1}, Lbws;->a(Lcom/xiaopeng/speech/common/util/f;)V

    .line 115
    iget-object v0, p0, Lbus;->d:Lbuf;

    iget-object v2, p0, Lbus;->i:Lbws;

    invoke-virtual {v0, v2}, Lbuf;->a(Lbuf$a;)V

    .line 117
    new-instance v0, Lbxb;

    invoke-direct {v0}, Lbxb;-><init>()V

    iput-object v0, p0, Lbus;->h:Lbxb;

    .line 118
    iget-object v0, p0, Lbus;->h:Lbxb;

    invoke-virtual {v0, v1}, Lbxb;->a(Lcom/xiaopeng/speech/common/util/f;)V

    .line 119
    iget-object v0, p0, Lbus;->d:Lbuf;

    iget-object v2, p0, Lbus;->h:Lbxb;

    invoke-virtual {v0, v2}, Lbuf;->a(Lbuf$a;)V

    .line 121
    new-instance v0, Lbwt;

    invoke-direct {v0, p1}, Lbwt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbus;->j:Lbwt;

    .line 122
    iget-object p1, p0, Lbus;->j:Lbwt;

    invoke-virtual {p1, v1}, Lbwt;->a(Lcom/xiaopeng/speech/common/util/f;)V

    .line 123
    iget-object p1, p0, Lbus;->d:Lbuf;

    iget-object v0, p0, Lbus;->j:Lbwt;

    invoke-virtual {p1, v0}, Lbuf;->a(Lbuf$a;)V

    .line 125
    new-instance p1, Lbxa;

    invoke-direct {p1}, Lbxa;-><init>()V

    iput-object p1, p0, Lbus;->k:Lbxa;

    .line 126
    iget-object p1, p0, Lbus;->d:Lbuf;

    iget-object v0, p0, Lbus;->k:Lbxa;

    invoke-virtual {p1, v0}, Lbuf;->a(Lbuf$a;)V

    .line 128
    new-instance p1, Lbwz;

    invoke-direct {p1}, Lbwz;-><init>()V

    iput-object p1, p0, Lbus;->l:Lbwz;

    .line 129
    iget-object p1, p0, Lbus;->d:Lbuf;

    iget-object v0, p0, Lbus;->l:Lbwz;

    invoke-virtual {p1, v0}, Lbuf;->a(Lbuf$a;)V

    .line 131
    new-instance p1, Lbwr;

    invoke-direct {p1}, Lbwr;-><init>()V

    iput-object p1, p0, Lbus;->m:Lbwr;

    .line 132
    iget-object p1, p0, Lbus;->m:Lbwr;

    invoke-virtual {p1, v1}, Lbwr;->a(Lcom/xiaopeng/speech/common/util/f;)V

    .line 133
    iget-object p1, p0, Lbus;->d:Lbuf;

    iget-object v0, p0, Lbus;->m:Lbwr;

    invoke-virtual {p1, v0}, Lbuf;->a(Lbuf$a;)V

    .line 135
    new-instance p1, Lbwy;

    invoke-direct {p1}, Lbwy;-><init>()V

    iput-object p1, p0, Lbus;->n:Lbwy;

    .line 136
    iget-object p1, p0, Lbus;->n:Lbwy;

    invoke-virtual {p1, v1}, Lbwy;->a(Lcom/xiaopeng/speech/common/util/f;)V

    .line 137
    iget-object p1, p0, Lbus;->d:Lbuf;

    iget-object v0, p0, Lbus;->n:Lbwy;

    invoke-virtual {p1, v0}, Lbuf;->a(Lbuf$a;)V

    .line 139
    new-instance p1, Lbwx;

    invoke-direct {p1}, Lbwx;-><init>()V

    iput-object p1, p0, Lbus;->p:Lbwx;

    .line 140
    iget-object p1, p0, Lbus;->p:Lbwx;

    invoke-virtual {p1, v1}, Lbwx;->a(Lcom/xiaopeng/speech/common/util/f;)V

    .line 141
    iget-object p1, p0, Lbus;->d:Lbuf;

    iget-object v0, p0, Lbus;->p:Lbwx;

    invoke-virtual {p1, v0}, Lbuf;->a(Lbuf$a;)V

    .line 143
    new-instance p1, Lbxf;

    invoke-direct {p1}, Lbxf;-><init>()V

    iput-object p1, p0, Lbus;->q:Lbxf;

    .line 144
    iget-object p1, p0, Lbus;->d:Lbuf;

    iget-object v0, p0, Lbus;->q:Lbxf;

    invoke-virtual {p1, v0}, Lbuf;->a(Lbuf$a;)V

    .line 146
    new-instance p1, Lbve;

    invoke-direct {p1, v1}, Lbve;-><init>(Lcom/xiaopeng/speech/common/util/f;)V

    iput-object p1, p0, Lbus;->r:Lbve;

    .line 147
    iget-object p1, p0, Lbus;->d:Lbuf;

    iget-object v0, p0, Lbus;->r:Lbve;

    invoke-virtual {v0}, Lbve;->a()Lbuf$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbuf;->a(Lbuf$a;)V

    .line 149
    new-instance p1, Lbwu;

    invoke-direct {p1}, Lbwu;-><init>()V

    iput-object p1, p0, Lbus;->t:Lbwu;

    .line 150
    iget-object p1, p0, Lbus;->d:Lbuf;

    iget-object v0, p0, Lbus;->t:Lbwu;

    invoke-virtual {p1, v0}, Lbuf;->a(Lbuf$a;)V

    .line 152
    new-instance p1, Lbxd;

    invoke-direct {p1}, Lbxd;-><init>()V

    iput-object p1, p0, Lbus;->s:Lbxd;

    .line 153
    iget-object p1, p0, Lbus;->s:Lbxd;

    invoke-virtual {p1, v1}, Lbxd;->a(Lcom/xiaopeng/speech/common/util/f;)V

    .line 154
    iget-object p1, p0, Lbus;->d:Lbuf;

    iget-object v0, p0, Lbus;->s:Lbxd;

    invoke-virtual {p1, v0}, Lbuf;->a(Lbuf$a;)V

    if-nez p2, :cond_1

    .line 157
    iget-object p1, p0, Lbus;->d:Lbuf;

    invoke-virtual {p1, p0}, Lbuf;->a(Lbuf$a;)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object p1, p0, Lbus;->d:Lbuf;

    invoke-virtual {p1, p2}, Lbuf;->a(Lbuf$a;)V

    .line 162
    :goto_0
    iget-object p1, p0, Lbus;->d:Lbuf;

    invoke-virtual {p1}, Lbuf;->b()V

    .line 164
    iget-object p1, p0, Lbus;->d:Lbuf;

    invoke-virtual {p1}, Lbuf;->a()V

    .line 165
    iget-object p1, p0, Lbus;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 167
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :goto_1
    iget-object p1, p0, Lbus;->v:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    iget-object p2, p0, Lbus;->v:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 170
    throw p1
.end method

.method public a(Lbun;)V
    .locals 0

    return-void
.end method

.method public varargs declared-synchronized a([Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 174
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 175
    invoke-virtual {p0}, Lbus;->e()Lbwt;

    move-result-object v3

    iget-object v4, p0, Lbus;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lbwt;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Lcom/xiaopeng/speech/actor/a;
    .locals 1

    .line 180
    iget-object v0, p0, Lbus;->c:Lcom/xiaopeng/speech/actor/a;

    return-object v0
.end method

.method public d()Lbxc;
    .locals 1

    .line 188
    iget-object v0, p0, Lbus;->e:Lbxc;

    return-object v0
.end method

.method public e()Lbwt;
    .locals 1

    .line 204
    iget-object v0, p0, Lbus;->j:Lbwt;

    return-object v0
.end method

.method public f()Lbxa;
    .locals 1

    .line 208
    iget-object v0, p0, Lbus;->k:Lbxa;

    return-object v0
.end method

.method public g()Lbwx;
    .locals 1

    .line 220
    iget-object v0, p0, Lbus;->p:Lbwx;

    return-object v0
.end method

.method public h()Lbve;
    .locals 1

    .line 232
    iget-object v0, p0, Lbus;->r:Lbve;

    return-object v0
.end method

.method public i()Lbuq;
    .locals 1

    .line 240
    iget-object v0, p0, Lbus;->b:Lbuq;

    return-object v0
.end method
