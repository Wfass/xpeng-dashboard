.class Lorg/eclipse/paho/android/service/h;
.super Ljava/lang/Object;
.source "MqttTokenAndroid.java"

# interfaces
.implements Lceh;


# instance fields
.field private a:Lced;

.field private volatile b:Z

.field private volatile c:Lceo;

.field private d:Ljava/lang/Object;

.field private e:Lorg/eclipse/paho/android/service/d;

.field private f:Ljava/lang/Object;

.field private g:[Ljava/lang/String;

.field private h:Lceh;

.field private i:Lceo;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/d;Ljava/lang/Object;Lced;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/paho/android/service/h;-><init>(Lorg/eclipse/paho/android/service/d;Ljava/lang/Object;Lced;[Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/eclipse/paho/android/service/d;Ljava/lang/Object;Lced;[Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/h;->d:Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lorg/eclipse/paho/android/service/h;->e:Lorg/eclipse/paho/android/service/d;

    .line 73
    iput-object p2, p0, Lorg/eclipse/paho/android/service/h;->f:Ljava/lang/Object;

    .line 74
    iput-object p3, p0, Lorg/eclipse/paho/android/service/h;->a:Lced;

    .line 75
    iput-object p4, p0, Lorg/eclipse/paho/android/service/h;->g:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/eclipse/paho/android/service/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/h;->d:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 107
    :catch_0
    :goto_0
    :try_start_1
    iget-boolean p1, p0, Lorg/eclipse/paho/android/service/h;->b:Z

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lorg/eclipse/paho/android/service/h;->i:Lceo;

    if-nez p1, :cond_0

    .line 113
    monitor-exit v0

    return-void

    .line 111
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/android/service/h;->i:Lceo;

    throw p1

    .line 108
    :cond_1
    new-instance p1, Lceo;

    const/16 p2, 0x7d00

    invoke-direct {p1, p2}, Lceo;-><init>(I)V

    throw p1

    .line 113
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method a(Lceh;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lorg/eclipse/paho/android/service/h;->h:Lceh;

    return-void
.end method

.method declared-synchronized a(Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/h;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    .line 134
    :try_start_1
    iput-boolean v1, p0, Lorg/eclipse/paho/android/service/h;->b:Z

    .line 135
    instance-of v1, p1, Lceo;

    if-eqz v1, :cond_0

    .line 136
    move-object v1, p1

    check-cast v1, Lceo;

    iput-object v1, p0, Lorg/eclipse/paho/android/service/h;->i:Lceo;

    goto :goto_0

    .line 138
    :cond_0
    new-instance v1, Lceo;

    invoke-direct {v1, p1}, Lceo;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lorg/eclipse/paho/android/service/h;->i:Lceo;

    .line 140
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/h;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 141
    instance-of v1, p1, Lceo;

    if-eqz v1, :cond_1

    .line 142
    move-object v1, p1

    check-cast v1, Lceo;

    iput-object v1, p0, Lorg/eclipse/paho/android/service/h;->c:Lceo;

    .line 144
    :cond_1
    iget-object v1, p0, Lorg/eclipse/paho/android/service/h;->a:Lced;

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lorg/eclipse/paho/android/service/h;->a:Lced;

    invoke-interface {v1, p0, p1}, Lced;->onFailure(Lceh;Ljava/lang/Throwable;)V

    .line 147
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 147
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b()V
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/eclipse/paho/android/service/h;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 121
    :try_start_0
    iput-boolean v1, p0, Lorg/eclipse/paho/android/service/h;->b:Z

    .line 122
    iget-object v1, p0, Lorg/eclipse/paho/android/service/h;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 123
    iget-object v1, p0, Lorg/eclipse/paho/android/service/h;->a:Lced;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lorg/eclipse/paho/android/service/h;->a:Lced;

    invoke-interface {v1, p0}, Lced;->onSuccess(Lceh;)V

    .line 126
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Lcee;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/eclipse/paho/android/service/h;->e:Lorg/eclipse/paho/android/service/d;

    return-object v0
.end method

.method public d()Lced;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/eclipse/paho/android/service/h;->a:Lced;

    return-object v0
.end method

.method public e()[Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/eclipse/paho/android/service/h;->h:Lceh;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lceh;->e()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/eclipse/paho/android/service/h;->h:Lceh;

    invoke-interface {v0}, Lceh;->e()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/h;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/eclipse/paho/android/service/h;->h:Lceh;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lceh;->f()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Lcgs;
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/eclipse/paho/android/service/h;->h:Lceh;

    invoke-interface {v0}, Lceh;->g()Lcgs;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttTokenAndroid{topics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/h;->g:[Ljava/lang/String;

    .line 258
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
