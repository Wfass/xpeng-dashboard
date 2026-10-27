.class Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection$1;
.super Ljava/lang/Object;
.source "MqttAndroidClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection$1;->this$1:Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection$1;->this$1:Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;

    iget-object v0, v0, Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;->this$0:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-static {v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->access$200(Lorg/eclipse/paho/android/service/MqttAndroidClient;)V

    return-void
.end method
