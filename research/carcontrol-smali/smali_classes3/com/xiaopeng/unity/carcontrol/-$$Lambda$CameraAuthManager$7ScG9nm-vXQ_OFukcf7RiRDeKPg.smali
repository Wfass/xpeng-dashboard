.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CameraAuthManager$7ScG9nm-vXQ_OFukcf7RiRDeKPg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CameraAuthManager$7ScG9nm-vXQ_OFukcf7RiRDeKPg;->f$0:Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CameraAuthManager$7ScG9nm-vXQ_OFukcf7RiRDeKPg;->f$0:Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->lambda$observeData$0$CameraAuthManager(Ljava/lang/Integer;)V

    return-void
.end method
