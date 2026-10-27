.class Lcei$b;
.super Ljava/lang/Object;
.source "MqttAsyncClient.java"

# interfaces
.implements Lcek;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:Z

.field final synthetic b:Lcei;


# direct methods
.method constructor <init>(Lcei;Z)V
    .locals 0

    .line 1455
    iput-object p1, p0, Lcei$b;->b:Lcei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    iput-boolean p2, p0, Lcei$b;->a:Z

    return-void
.end method


# virtual methods
.method public connectComplete(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 1

    .line 1460
    iget-boolean p1, p0, Lcei$b;->a:Z

    if-eqz p1, :cond_0

    .line 1463
    iget-object p1, p0, Lcei$b;->b:Lcei;

    iget-object p1, p1, Lcei;->b:Lcew;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcew;->b(Z)V

    .line 1464
    iget-object p1, p0, Lcei$b;->b:Lcei;

    invoke-static {p1, v0}, Lcei;->a(Lcei;Z)V

    .line 1465
    iget-object p1, p0, Lcei$b;->b:Lcei;

    invoke-static {p1}, Lcei;->b(Lcei;)V

    :cond_0
    return-void
.end method

.method public deliveryComplete(Lcef;)V
    .locals 0

    return-void
.end method

.method public messageArrived(Ljava/lang/String;Lcep;)V
    .locals 0

    return-void
.end method
