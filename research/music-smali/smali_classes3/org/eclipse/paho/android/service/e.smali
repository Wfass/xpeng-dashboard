.class Lorg/eclipse/paho/android/service/e;
.super Ljava/lang/Object;
.source "MqttConnection.java"

# interfaces
.implements Lcek;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/android/service/e$b;,
        Lorg/eclipse/paho/android/service/e$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcel;

.field private d:Lcem;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcei;

.field private h:Lorg/eclipse/paho/android/service/a;

.field private i:Lorg/eclipse/paho/android/service/MqttService;

.field private volatile j:Z

.field private k:Z

.field private volatile l:Z

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcef;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcef;",
            "Lcep;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcef;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcef;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/os/PowerManager$WakeLock;

.field private r:Ljava/lang/String;

.field private s:Lcec;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/MqttService;Ljava/lang/String;Ljava/lang/String;Lcel;Ljava/lang/String;)V
    .locals 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lorg/eclipse/paho/android/service/e;->c:Lcel;

    .line 126
    iput-object v0, p0, Lorg/eclipse/paho/android/service/e;->f:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    .line 131
    iput-object v0, p0, Lorg/eclipse/paho/android/service/e;->h:Lorg/eclipse/paho/android/service/a;

    .line 134
    iput-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    const/4 v1, 0x1

    .line 136
    iput-boolean v1, p0, Lorg/eclipse/paho/android/service/e;->j:Z

    .line 137
    iput-boolean v1, p0, Lorg/eclipse/paho/android/service/e;->k:Z

    const/4 v1, 0x0

    .line 141
    iput-boolean v1, p0, Lorg/eclipse/paho/android/service/e;->l:Z

    .line 146
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/android/service/e;->m:Ljava/util/Map;

    .line 147
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/android/service/e;->n:Ljava/util/Map;

    .line 148
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/android/service/e;->o:Ljava/util/Map;

    .line 149
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/android/service/e;->p:Ljava/util/Map;

    .line 151
    iput-object v0, p0, Lorg/eclipse/paho/android/service/e;->q:Landroid/os/PowerManager$WakeLock;

    .line 152
    iput-object v0, p0, Lorg/eclipse/paho/android/service/e;->r:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lorg/eclipse/paho/android/service/e;->s:Lcec;

    .line 190
    iput-object p2, p0, Lorg/eclipse/paho/android/service/e;->a:Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    .line 192
    iput-object p3, p0, Lorg/eclipse/paho/android/service/e;->b:Ljava/lang/String;

    .line 193
    iput-object p4, p0, Lorg/eclipse/paho/android/service/e;->c:Lcel;

    .line 194
    iput-object p5, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p4, " "

    .line 197
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "on host "

    .line 200
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/paho/android/service/e;->r:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcep;)Landroid/os/Bundle;
    .locals 2

    .line 396
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.messageId"

    .line 397
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MqttService.destinationName"

    .line 398
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    new-instance p1, Lorg/eclipse/paho/android/service/ParcelableMqttMessage;

    invoke-direct {p1, p3}, Lorg/eclipse/paho/android/service/ParcelableMqttMessage;-><init>(Lcep;)V

    const-string p2, "MqttService.PARCEL"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/e;)Lorg/eclipse/paho/android/service/MqttService;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    return-object p0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3

    .line 331
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/e;->h()V

    .line 332
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/paho/android/service/j;->OK:Lorg/eclipse/paho/android/service/j;

    invoke-virtual {v0, v1, v2, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    .line 333
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/e;->g()V

    const/4 p1, 0x0

    .line 334
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/e;->a(Z)V

    .line 335
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/e;->j:Z

    .line 336
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/e;->i()V

    return-void
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/Exception;)V
    .locals 2

    .line 360
    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.errorMessage"

    .line 359
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MqttService.exception"

    .line 362
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 364
    iget-object p2, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/paho/android/service/j;->ERROR:Lorg/eclipse/paho/android/service/j;

    invoke-virtual {p2, v0, v1, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcep;Lcef;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1005
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->m:Ljava/util/Map;

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->n:Ljava/util/Map;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->o:Ljava/util/Map;

    invoke-interface {p1, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->p:Ljava/util/Map;

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/e;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    .line 1187
    :try_start_0
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/e;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lorg/eclipse/paho/android/service/e;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    return-object p0
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 3

    .line 351
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/e;->h()V

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/e;->j:Z

    const/4 v0, 0x0

    .line 353
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/e;->a(Z)V

    .line 354
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/paho/android/service/j;->ERROR:Lorg/eclipse/paho/android/service/j;

    invoke-virtual {v0, v1, v2, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    .line 355
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/e;->i()V

    return-void
.end method

.method static synthetic b(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/e;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method private g()V
    .locals 5

    .line 373
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v0, v0, Lorg/eclipse/paho/android/service/MqttService;->a:Lorg/eclipse/paho/android/service/c;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    .line 374
    invoke-interface {v0, v1}, Lorg/eclipse/paho/android/service/c;->a(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    .line 375
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/android/service/c$a;

    .line 377
    invoke-interface {v1}, Lorg/eclipse/paho/android/service/c$a;->a()Ljava/lang/String;

    move-result-object v2

    .line 378
    invoke-interface {v1}, Lorg/eclipse/paho/android/service/c$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/eclipse/paho/android/service/c$a;->c()Lcep;

    move-result-object v1

    .line 377
    invoke-direct {p0, v2, v3, v1}, Lorg/eclipse/paho/android/service/e;->a(Ljava/lang/String;Ljava/lang/String;Lcep;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MqttService.callbackAction"

    const-string v3, "messageArrived"

    .line 379
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v3, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    sget-object v4, Lorg/eclipse/paho/android/service/j;->OK:Lorg/eclipse/paho/android/service/j;

    invoke-virtual {v2, v3, v4, v1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .line 1015
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->q:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 1016
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "power"

    .line 1017
    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    .line 1018
    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/android/service/e;->q:Landroid/os/PowerManager$WakeLock;

    .line 1021
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->q:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private i()V
    .locals 1

    .line 1029
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->q:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->q:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcep;Ljava/lang/String;Ljava/lang/String;)Lcef;
    .locals 10

    .line 645
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "send"

    const-string v2, "MqttService.callbackAction"

    .line 646
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MqttService.activityToken"

    .line 648
    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MqttService.invocationContext"

    .line 650
    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcei;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 657
    new-instance v1, Lorg/eclipse/paho/android/service/e$b;

    invoke-direct {v1, p0, v0, v3}, Lorg/eclipse/paho/android/service/e$b;-><init>(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;Lorg/eclipse/paho/android/service/e$1;)V

    .line 660
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    invoke-virtual {v2, p1, p2, p3, v1}, Lcei;->a(Ljava/lang/String;Lcep;Ljava/lang/Object;Lced;)Lcef;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, v1

    move-object v8, p3

    move-object v9, p4

    .line 662
    :try_start_1
    invoke-direct/range {v4 .. v9}, Lorg/eclipse/paho/android/service/e;->a(Ljava/lang/String;Lcep;Lcef;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object v3, v1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v3, v1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 665
    :goto_1
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto :goto_3

    .line 667
    :cond_0
    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->s:Lcec;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcec;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 669
    new-instance v1, Lorg/eclipse/paho/android/service/e$b;

    invoke-direct {v1, p0, v0, v3}, Lorg/eclipse/paho/android/service/e$b;-><init>(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;Lorg/eclipse/paho/android/service/e$1;)V

    .line 672
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    invoke-virtual {v2, p1, p2, p3, v1}, Lcei;->a(Ljava/lang/String;Lcep;Ljava/lang/Object;Lced;)Lcef;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, v1

    move-object v8, p3

    move-object v9, p4

    .line 674
    :try_start_3
    invoke-direct/range {v4 .. v9}, Lorg/eclipse/paho/android/service/e;->a(Ljava/lang/String;Lcep;Lcef;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v3, v1

    goto :goto_2

    :catch_3
    move-exception p1

    .line 677
    :goto_2
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto :goto_3

    :cond_1
    const-string p1, "MqttConnection"

    const-string p2, "Client is not connected, so not sending message"

    .line 680
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "not connected"

    const-string p2, "MqttService.errorMessage"

    .line 681
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object p2, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {p2, v1, p1}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object p2, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    sget-object p3, Lorg/eclipse/paho/android/service/j;->ERROR:Lorg/eclipse/paho/android/service/j;

    invoke-virtual {p1, p2, p3, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    :goto_3
    return-object v3
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcec;)V
    .locals 1

    .line 1196
    iput-object p1, p0, Lorg/eclipse/paho/android/service/e;->s:Lcec;

    .line 1197
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    invoke-virtual {v0, p1}, Lcei;->a(Lcec;)V

    return-void
.end method

.method public a(Lcem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 217
    iput-object p1, p0, Lorg/eclipse/paho/android/service/e;->d:Lcem;

    .line 218
    iput-object p3, p0, Lorg/eclipse/paho/android/service/e;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1}, Lcem;->l()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/e;->k:Z

    .line 224
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->d:Lcem;

    invoke-virtual {p1}, Lcem;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 226
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object p1, p1, Lorg/eclipse/paho/android/service/MqttService;->a:Lorg/eclipse/paho/android/service/c;

    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/eclipse/paho/android/service/c;->b(Ljava/lang/String;)V

    .line 229
    :cond_1
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} as {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttConnection"

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "MqttService.activityToken"

    .line 231
    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "MqttService.invocationContext"

    .line 233
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "MqttService.callbackAction"

    const-string v0, "connect"

    .line 236
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 241
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->c:Lcel;

    if-nez v0, :cond_3

    .line 250
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {v0, v1, p3}, Lorg/eclipse/paho/android/service/MqttService;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p2, "MqttService.errorMessage"

    const-string v0, "Error! No external and internal storage available"

    .line 254
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "MqttService.exception"

    .line 257
    new-instance v0, Lcer;

    invoke-direct {v0}, Lcer;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 259
    iget-object p2, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/paho/android/service/j;->ERROR:Lorg/eclipse/paho/android/service/j;

    invoke-virtual {p2, v0, v2, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    return-void

    .line 266
    :cond_2
    new-instance v2, Lcgz;

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcgz;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/eclipse/paho/android/service/e;->c:Lcel;

    .line 270
    :cond_3
    new-instance v0, Lorg/eclipse/paho/android/service/e$1;

    invoke-direct {v0, p0, p1, p1}, Lorg/eclipse/paho/android/service/e$1;-><init>(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 295
    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    const-string v4, "Do Real connect!"

    if-eqz v2, :cond_6

    .line 296
    :try_start_1
    iget-boolean v2, p0, Lorg/eclipse/paho/android/service/e;->l:Z

    if-eqz v2, :cond_4

    .line 297
    iget-object p2, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    const-string v0, "myClient != null and the client is connecting. Connect return directly."

    invoke-virtual {p2, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object p2, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connect return:isConnecting:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/eclipse/paho/android/service/e;->l:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ".disconnected:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/eclipse/paho/android/service/e;->j:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    :cond_4
    iget-boolean v2, p0, Lorg/eclipse/paho/android/service/e;->j:Z

    if-nez v2, :cond_5

    .line 301
    iget-object p2, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    const-string v0, "myClient != null and the client is connected and notify!"

    invoke-virtual {p2, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/e;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 304
    :cond_5
    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    const-string v5, "myClient != null and the client is not connected"

    invoke-virtual {v2, v1, v5}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, v3}, Lorg/eclipse/paho/android/service/e;->a(Z)V

    .line 307
    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    iget-object v3, p0, Lorg/eclipse/paho/android/service/e;->d:Lcem;

    invoke-virtual {v2, v3, p2, v0}, Lcei;->a(Lcem;Ljava/lang/Object;Lced;)Lceh;

    goto :goto_0

    .line 313
    :cond_6
    new-instance v2, Lorg/eclipse/paho/android/service/a;

    iget-object v5, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    invoke-direct {v2, v5, p0}, Lorg/eclipse/paho/android/service/a;-><init>(Lorg/eclipse/paho/android/service/MqttService;Lorg/eclipse/paho/android/service/e;)V

    iput-object v2, p0, Lorg/eclipse/paho/android/service/e;->h:Lorg/eclipse/paho/android/service/a;

    .line 314
    new-instance v2, Lorg/eclipse/paho/android/service/e$a;

    iget-object v8, p0, Lorg/eclipse/paho/android/service/e;->a:Ljava/lang/String;

    iget-object v9, p0, Lorg/eclipse/paho/android/service/e;->b:Ljava/lang/String;

    iget-object v10, p0, Lorg/eclipse/paho/android/service/e;->c:Lcel;

    iget-object v11, p0, Lorg/eclipse/paho/android/service/e;->h:Lorg/eclipse/paho/android/service/a;

    move-object v6, v2

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lorg/eclipse/paho/android/service/e$a;-><init>(Lorg/eclipse/paho/android/service/e;Ljava/lang/String;Ljava/lang/String;Lcel;Lces;)V

    iput-object v2, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    .line 316
    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    invoke-virtual {v2, p0}, Lcei;->a(Lcej;)V

    .line 318
    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, v3}, Lorg/eclipse/paho/android/service/e;->a(Z)V

    .line 320
    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    iget-object v3, p0, Lorg/eclipse/paho/android/service/e;->d:Lcem;

    invoke-virtual {v2, v3, p2, v0}, Lcei;->a(Lcem;Ljava/lang/Object;Lced;)Lceh;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 323
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred attempting to connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-direct {p0, p3}, Lorg/eclipse/paho/android/service/e;->a(Z)V

    .line 325
    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/android/service/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 551
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "send"

    const-string v2, "MqttService.callbackAction"

    .line 552
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MqttService.activityToken"

    .line 554
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v2, "MqttService.invocationContext"

    .line 556
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcei;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 560
    new-instance v1, Lorg/eclipse/paho/android/service/e$b;

    invoke-direct {v1, p0, v0, p1}, Lorg/eclipse/paho/android/service/e$b;-><init>(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;Lorg/eclipse/paho/android/service/e$1;)V

    .line 563
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    instance-of p1, p1, Lorg/eclipse/paho/android/service/e$a;

    if-eqz p1, :cond_1

    .line 564
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    check-cast p1, Lorg/eclipse/paho/android/service/e$a;

    invoke-virtual {p1, v1}, Lorg/eclipse/paho/android/service/e$a;->a(Lced;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 567
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const-string p1, "not connected"

    const-string v2, "MqttService.errorMessage"

    .line 570
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {v2, v1, p1}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/paho/android/service/j;->ERROR:Lorg/eclipse/paho/android/service/j;

    invoke-virtual {p1, v1, v2, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 699
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribe({"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "},"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}, {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttConnection"

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "subscribe"

    const-string v2, "MqttService.callbackAction"

    .line 702
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MqttService.activityToken"

    .line 704
    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "MqttService.invocationContext"

    .line 706
    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object p4, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcei;->a()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 711
    new-instance p4, Lorg/eclipse/paho/android/service/e$b;

    const/4 v1, 0x0

    invoke-direct {p4, p0, v0, v1}, Lorg/eclipse/paho/android/service/e$b;-><init>(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;Lorg/eclipse/paho/android/service/e$1;)V

    .line 714
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcei;->a(Ljava/lang/String;ILjava/lang/Object;Lced;)Lceh;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 716
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const-string p1, "not connected"

    const-string p2, "MqttService.errorMessage"

    .line 719
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object p2, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {p2, v1, p1}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object p2, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    sget-object p3, Lorg/eclipse/paho/android/service/j;->ERROR:Lorg/eclipse/paho/android/service/j;

    invoke-virtual {p1, p2, p3, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 471
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "MqttConnection"

    const-string v2, "disconnect()"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 472
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/e;->j:Z

    .line 473
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.activityToken"

    .line 474
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "MqttService.invocationContext"

    .line 476
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "disconnect"

    const-string v1, "MqttService.callbackAction"

    .line 479
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcei;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    new-instance p2, Lorg/eclipse/paho/android/service/e$b;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lorg/eclipse/paho/android/service/e$b;-><init>(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;Lorg/eclipse/paho/android/service/e$1;)V

    .line 485
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    invoke-virtual {v1, p1, p2}, Lcei;->a(Ljava/lang/Object;Lced;)Lceh;

    .line 486
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->h:Lorg/eclipse/paho/android/service/a;

    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 488
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const-string p1, "not connected"

    const-string v1, "MqttService.errorMessage"

    .line 491
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {v1, p2, p1}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object p2, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/paho/android/service/j;->ERROR:Lorg/eclipse/paho/android/service/j;

    invoke-virtual {p1, p2, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    .line 498
    :goto_0
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->d:Lcem;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcem;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 500
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object p1, p1, Lorg/eclipse/paho/android/service/MqttService;->a:Lorg/eclipse/paho/android/service/c;

    iget-object p2, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/eclipse/paho/android/service/c;->b(Ljava/lang/String;)V

    .line 502
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/e;->i()V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 512
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "MqttConnection"

    const-string v2, "disconnect()"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 513
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/e;->j:Z

    .line 514
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.activityToken"

    .line 515
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "MqttService.invocationContext"

    .line 517
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "disconnect"

    const-string p2, "MqttService.callbackAction"

    .line 520
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object p2, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcei;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 523
    new-instance p1, Lorg/eclipse/paho/android/service/e$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, p2}, Lorg/eclipse/paho/android/service/e$b;-><init>(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;Lorg/eclipse/paho/android/service/e$1;)V

    .line 526
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x1388

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcei;->a(JJZ)V

    .line 527
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->h:Lorg/eclipse/paho/android/service/a;

    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 529
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const-string p2, "not connected"

    const-string v1, "MqttService.errorMessage"

    .line 532
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object p2, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/paho/android/service/j;->ERROR:Lorg/eclipse/paho/android/service/j;

    invoke-virtual {p1, p2, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    .line 539
    :goto_0
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->d:Lcem;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcem;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 541
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object p1, p1, Lorg/eclipse/paho/android/service/MqttService;->a:Lorg/eclipse/paho/android/service/c;

    iget-object p2, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/eclipse/paho/android/service/c;->b(Ljava/lang/String;)V

    .line 543
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/e;->i()V

    return-void
.end method

.method c()V
    .locals 3

    .line 408
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "MqttConnection"

    const-string v2, "close()"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcei;->a(Z)V

    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;
    :try_end_0
    .catch Lceo; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 416
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v1, v0}, Lorg/eclipse/paho/android/service/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public connectComplete(ZLjava/lang/String;)V
    .locals 3

    .line 341
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "connectExtended"

    .line 342
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.reconnect"

    .line 344
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "MqttService.serverURI"

    .line 345
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object p2, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/paho/android/service/j;->OK:Lorg/eclipse/paho/android/service/j;

    invoke-virtual {p1, p2, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    return-void
.end method

.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 5

    .line 875
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionLost("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 876
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttConnection"

    .line 875
    invoke-virtual {v0, v2, v1}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 877
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/e;->j:Z

    .line 879
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->d:Lcem;

    invoke-virtual {v0}, Lcem;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 880
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    const/4 v1, 0x0

    new-instance v3, Lorg/eclipse/paho/android/service/e$2;

    invoke-direct {v3, p0}, Lorg/eclipse/paho/android/service/e$2;-><init>(Lorg/eclipse/paho/android/service/e;)V

    invoke-virtual {v0, v1, v3}, Lcei;->a(Ljava/lang/Object;Lced;)Lceh;

    goto :goto_1

    .line 898
    :cond_1
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->h:Lorg/eclipse/paho/android/service/a;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/paho/android/service/a;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 903
    iget-object v1, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect fail, exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "onConnectionLost"

    .line 907
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 911
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttService.errorMessage"

    .line 910
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    instance-of v1, p1, Lceo;

    if-eqz v1, :cond_2

    const-string v1, "MqttService.exception"

    .line 913
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 918
    :cond_2
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MqttService.exceptionStack"

    .line 916
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :cond_3
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/paho/android/service/j;->OK:Lorg/eclipse/paho/android/service/j;

    invoke-virtual {p1, v1, v2, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    .line 922
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/e;->i()V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 581
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcei;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public deliveryComplete(Lcef;)V
    .locals 4

    .line 934
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deliveryComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttConnection"

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcep;

    if-eqz v0, :cond_1

    .line 939
    iget-object v1, p0, Lorg/eclipse/paho/android/service/e;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 940
    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->o:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 941
    iget-object v3, p0, Lorg/eclipse/paho/android/service/e;->p:Ljava/util/Map;

    .line 942
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v3, 0x0

    .line 944
    invoke-direct {p0, v3, v1, v0}, Lorg/eclipse/paho/android/service/e;->a(Ljava/lang/String;Ljava/lang/String;Lcep;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MqttService.callbackAction"

    if-eqz v2, :cond_0

    const-string v3, "send"

    .line 946
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MqttService.activityToken"

    .line 948
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MqttService.invocationContext"

    .line 951
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    sget-object v3, Lorg/eclipse/paho/android/service/j;->OK:Lorg/eclipse/paho/android/service/j;

    invoke-virtual {p1, v2, v3, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    :cond_0
    const-string p1, "messageDelivered"

    .line 958
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/paho/android/service/j;->OK:Lorg/eclipse/paho/android/service/j;

    invoke-virtual {p1, v1, v2, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method e()V
    .locals 3

    .line 1071
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start offline. disconnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/eclipse/paho/android/service/e;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " cleanSession:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/eclipse/paho/android/service/e;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttConnection"

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/e;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/e;->k:Z

    if-nez v0, :cond_0

    .line 1074
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Android offline"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/android/service/e;->connectionLost(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method declared-synchronized f()V
    .locals 7

    monitor-enter p0

    .line 1086
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "MqttConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start reconnect, disconnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/eclipse/paho/android/service/e;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cleanSession:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/eclipse/paho/android/service/e;->k:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    if-nez v0, :cond_0

    .line 1089
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "MqttConnection"

    const-string v2, "Reconnect myClient = null. Will not do reconnect"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    monitor-exit p0

    return-void

    .line 1093
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/e;->l:Z

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "MqttConnection"

    const-string v2, "The client is connecting. Reconnect return directly."

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    monitor-exit p0

    return-void

    .line 1098
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/MqttService;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1099
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "MqttConnection"

    const-string v2, "The network is not reachable. Will not do reconnect"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1101
    monitor-exit p0

    return-void

    .line 1104
    :cond_2
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->d:Lcem;

    invoke-virtual {v0}, Lcem;->n()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1106
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    const-string v3, "MqttConnection"

    const-string v4, "Requesting Automatic reconnect using New Java AC"

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "MqttService.activityToken"

    .line 1108
    iget-object v4, p0, Lorg/eclipse/paho/android/service/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MqttService.invocationContext"

    .line 1111
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MqttService.callbackAction"

    const-string v3, "connect"

    .line 1113
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1116
    :try_start_4
    iget-object v2, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    invoke-virtual {v2}, Lcei;->d()V
    :try_end_4
    .catch Lceo; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_5
    const-string v3, "MqttConnection"

    .line 1118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred attempting to reconnect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lceo;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-direct {p0, v1}, Lorg/eclipse/paho/android/service/e;->a(Z)V

    .line 1120
    invoke-direct {p0, v0, v2}, Lorg/eclipse/paho/android/service/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 1122
    :cond_3
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/e;->j:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/e;->k:Z

    if-nez v0, :cond_4

    .line 1124
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    const-string v3, "MqttConnection"

    const-string v4, "Do Real Reconnect!"

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "MqttService.activityToken"

    .line 1126
    iget-object v4, p0, Lorg/eclipse/paho/android/service/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MqttService.invocationContext"

    .line 1129
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MqttService.callbackAction"

    const-string v4, "connect"

    .line 1131
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1136
    :try_start_6
    new-instance v3, Lorg/eclipse/paho/android/service/e$3;

    invoke-direct {v3, p0, v0, v0}, Lorg/eclipse/paho/android/service/e$3;-><init>(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1162
    iget-object v4, p0, Lorg/eclipse/paho/android/service/e;->g:Lcei;

    iget-object v5, p0, Lorg/eclipse/paho/android/service/e;->d:Lcem;

    invoke-virtual {v4, v5, v2, v3}, Lcei;->a(Lcem;Ljava/lang/Object;Lced;)Lceh;

    const/4 v2, 0x1

    .line 1163
    invoke-direct {p0, v2}, Lorg/eclipse/paho/android/service/e;->a(Z)V
    :try_end_6
    .catch Lceo; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v2

    .line 1175
    :try_start_7
    iget-object v3, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    const-string v4, "MqttConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot reconnect to remote server."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-direct {p0, v1}, Lorg/eclipse/paho/android/service/e;->a(Z)V

    .line 1177
    new-instance v1, Lceo;

    const/4 v3, 0x6

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lceo;-><init>(ILjava/lang/Throwable;)V

    .line 1178
    invoke-direct {p0, v0, v1}, Lorg/eclipse/paho/android/service/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception v2

    .line 1165
    iget-object v3, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    const-string v4, "MqttConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot reconnect to remote server."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lceo;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-direct {p0, v1}, Lorg/eclipse/paho/android/service/e;->a(Z)V

    .line 1167
    invoke-direct {p0, v0, v2}, Lorg/eclipse/paho/android/service/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1181
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public messageArrived(Ljava/lang/String;Lcep;)V
    .locals 3

    .line 976
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageArrived("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {p2}, Lcep;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttConnection"

    .line 976
    invoke-virtual {v0, v2, v1}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v0, v0, Lorg/eclipse/paho/android/service/MqttService;->a:Lorg/eclipse/paho/android/service/c;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lorg/eclipse/paho/android/service/c;->a(Ljava/lang/String;Ljava/lang/String;Lcep;)Ljava/lang/String;

    move-result-object v0

    .line 982
    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/paho/android/service/e;->a(Ljava/lang/String;Ljava/lang/String;Lcep;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "MqttService.callbackAction"

    const-string v1, "messageArrived"

    .line 983
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "MqttService.messageId"

    .line 985
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object p2, p0, Lorg/eclipse/paho/android/service/e;->i:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->e:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/paho/android/service/j;->OK:Lorg/eclipse/paho/android/service/j;

    invoke-virtual {p2, v0, v1, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    return-void
.end method
