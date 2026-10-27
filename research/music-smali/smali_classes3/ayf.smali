.class public Layf;
.super Ljava/lang/Object;
.source "TimerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layf$c;,
        Layf$b;,
        Layf$a;
    }
.end annotation


# instance fields
.field private a:Layf$c;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Layf$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Layf;->b:Ljava/util/List;

    .line 30
    invoke-direct {p0}, Layf;->b()V

    return-void
.end method

.method public static a()Layf;
    .locals 1

    .line 26
    sget-object v0, Layf$a;->a:Layf;

    return-object v0
.end method

.method static synthetic a(Layf;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Layf;->d()V

    return-void
.end method

.method private b()V
    .locals 0

    .line 34
    invoke-direct {p0}, Layf;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 38
    new-instance v0, Layf$c;

    invoke-direct {v0, p0}, Layf$c;-><init>(Layf;)V

    iput-object v0, p0, Layf;->a:Layf$c;

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    iget-object v2, p0, Layf;->a:Layf$c;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private d()V
    .locals 9

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 75
    iget-object v2, p0, Layf;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Layf$b;

    .line 79
    iget-wide v5, v4, Layf$b;->b:J

    cmp-long v5, v0, v5

    if-ltz v5, :cond_1

    .line 80
    iget-object v5, v4, Layf$b;->a:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 81
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-wide/32 v5, 0xea60

    add-long/2addr v5, v0

    .line 82
    iget-wide v7, v4, Layf$b;->b:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    .line 83
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v5, v4, Layf$b;->a:Ljava/lang/Runnable;

    iget-wide v6, v4, Layf$b;->b:J

    sub-long/2addr v6, v0

    invoke-static {v5, v6, v7}, Lbql;->b(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Layf$b;

    .line 89
    iget-object v2, p0, Layf;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 4

    .line 59
    iget-object v0, p0, Layf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Layf$b;

    .line 63
    iget-object v3, v2, Layf$b;->a:Ljava/lang/Runnable;

    if-ne v3, p1, :cond_0

    .line 64
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Layf$b;

    .line 68
    iget-object v2, p0, Layf;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    :cond_2
    invoke-static {p1}, Lbql;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const-wide/32 v0, 0xea60

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 49
    invoke-static {p1, p2, p3}, Lbql;->b(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Layf$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Layf$b;-><init>(Layf;Layf$1;)V

    .line 52
    iput-object p1, v0, Layf$b;->a:Ljava/lang/Runnable;

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    iput-wide v1, v0, Layf$b;->b:J

    .line 54
    iget-object p1, p0, Layf;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
