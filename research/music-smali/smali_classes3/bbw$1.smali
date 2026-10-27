.class Lbbw$1;
.super Ljava/lang/Object;
.source "IcmReceiverModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbw;->onReveiveIcmConnected(Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmConnectEventMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbw;


# direct methods
.method constructor <init>(Lbbw;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lbbw$1;->a:Lbbw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 128
    invoke-static {}, Lbbx;->a()Lbbx;

    move-result-object v0

    invoke-virtual {v0}, Lbbx;->c()V

    return-void
.end method
