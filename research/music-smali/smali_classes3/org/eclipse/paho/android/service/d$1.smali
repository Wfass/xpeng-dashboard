.class Lorg/eclipse/paho/android/service/d$1;
.super Ljava/lang/Object;
.source "MqttAndroidClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/d;->a(Lcem;Ljava/lang/Object;Lced;)Lceh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/android/service/d;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/d;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lorg/eclipse/paho/android/service/d$1;->a:Lorg/eclipse/paho/android/service/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 463
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d$1;->a:Lorg/eclipse/paho/android/service/d;

    invoke-static {v0}, Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/android/service/d;)V

    .line 466
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d$1;->a:Lorg/eclipse/paho/android/service/d;

    invoke-static {v0}, Lorg/eclipse/paho/android/service/d;->b(Lorg/eclipse/paho/android/service/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/android/service/d$1;->a:Lorg/eclipse/paho/android/service/d;

    invoke-static {v0, v0}, Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/android/service/d;Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
