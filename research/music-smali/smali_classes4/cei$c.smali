.class Lcei$c;
.super Ljava/util/TimerTask;
.source "MqttAsyncClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcei;


# direct methods
.method private constructor <init>(Lcei;)V
    .locals 0

    .line 1441
    iput-object p1, p0, Lcei$c;->a:Lcei;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcei;Lcei$c;)V
    .locals 0

    .line 1441
    invoke-direct {p0, p1}, Lcei$c;-><init>(Lcei;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1446
    invoke-static {}, Lcei;->e()Lcgw;

    move-result-object v0

    invoke-static {}, Lcei;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReconnectTask.run"

    const-string v3, "506"

    invoke-interface {v0, v1, v2, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    iget-object v0, p0, Lcei$c;->a:Lcei;

    invoke-static {v0}, Lcei;->a(Lcei;)V

    return-void
.end method
