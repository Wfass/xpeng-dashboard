.class Lorg/eclipse/paho/android/service/e$a;
.super Lcei;
.source "MqttConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/android/service/e;

.field private c:Lcgg;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/android/service/e;Ljava/lang/String;Ljava/lang/String;Lcel;Lces;)V
    .locals 6

    .line 163
    iput-object p1, p0, Lorg/eclipse/paho/android/service/e$a;->a:Lorg/eclipse/paho/android/service/e;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 164
    invoke-direct/range {v0 .. v5}, Lcei;-><init>(Ljava/lang/String;Ljava/lang/String;Lcel;Lces;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 161
    new-instance p1, Lcgg;

    invoke-direct {p1}, Lcgg;-><init>()V

    iput-object p1, p0, Lorg/eclipse/paho/android/service/e$a;->c:Lcgg;

    return-void
.end method


# virtual methods
.method public a(Lced;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e$a;->b:Lcew;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/android/service/e$a;->b:Lcew;

    invoke-virtual {v0}, Lcew;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lceu;

    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/e$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lceu;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, p1}, Lceu;->a(Lced;)V

    const/4 p1, 0x0

    .line 171
    invoke-virtual {v0, p1}, Lceu;->a(Ljava/lang/Object;)V

    .line 172
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$a;->b:Lcew;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/e$a;->c:Lcgg;

    invoke-virtual {p1, v1, v0}, Lcew;->b(Lcgs;Lceu;)V

    :cond_0
    return-void
.end method
