.class Lorg/eclipse/paho/android/service/a$b;
.super Landroid/os/AsyncTask;
.source "AlarmPingSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcew;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lorg/eclipse/paho/android/service/a;


# direct methods
.method private constructor <init>(Lorg/eclipse/paho/android/service/a;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/eclipse/paho/android/service/a$b;->b:Lorg/eclipse/paho/android/service/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/a$b;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/paho/android/service/a;Lorg/eclipse/paho/android/service/a$1;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/a$b;-><init>(Lorg/eclipse/paho/android/service/a;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcew;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    .line 140
    aget-object p1, p1, v0

    new-instance v0, Lorg/eclipse/paho/android/service/a$b$1;

    invoke-direct {v0, p0}, Lorg/eclipse/paho/android/service/a$b$1;-><init>(Lorg/eclipse/paho/android/service/a$b;)V

    invoke-virtual {p1, v0}, Lcew;->a(Lced;)Lceu;

    move-result-object p1

    const-string v0, "AlarmPingSender"

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x1770

    .line 156
    :try_start_0
    invoke-interface {p1, v1, v2}, Lceh;->a(J)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, "Ping async background : Ping command was not sent by the client."

    .line 158
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lceo; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 163
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ping async background : Ignore unknown exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 161
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ping async background : Ignore MQTT exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lceo;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_2
    iget-boolean p1, p0, Lorg/eclipse/paho/android/service/a$b;->a:Z

    if-nez p1, :cond_1

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ping async background task completed at "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Success is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/eclipse/paho/android/service/a$b;->a:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    new-instance p1, Ljava/lang/Boolean;

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/a$b;->a:Z

    invoke-direct {p1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ping async task onPostExecute() Success is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/a$b;->a:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlarmPingSender"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 1

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ping async task onCancelled() Success is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/a$b;->a:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlarmPingSender"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 134
    check-cast p1, [Lcew;

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/a$b;->a([Lcew;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 134
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/a$b;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 134
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/a$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
