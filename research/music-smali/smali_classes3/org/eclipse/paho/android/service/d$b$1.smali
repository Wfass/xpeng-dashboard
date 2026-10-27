.class Lorg/eclipse/paho/android/service/d$b$1;
.super Ljava/lang/Object;
.source "MqttAndroidClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/d$b;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/android/service/d$b;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/d$b;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lorg/eclipse/paho/android/service/d$b$1;->a:Lorg/eclipse/paho/android/service/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d$b$1;->a:Lorg/eclipse/paho/android/service/d$b;

    iget-object v0, v0, Lorg/eclipse/paho/android/service/d$b;->a:Lorg/eclipse/paho/android/service/d;

    invoke-static {v0}, Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/android/service/d;)V

    return-void
.end method
