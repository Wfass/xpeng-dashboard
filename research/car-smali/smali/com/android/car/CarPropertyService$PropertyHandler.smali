.class final Lcom/android/car/CarPropertyService$PropertyHandler;
.super Landroid/os/Handler;
.source "CarPropertyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarPropertyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PropertyHandler"
.end annotation


# static fields
.field public static final MSG_CHECK_AUTOPILOT_REGISTERED_IDS:I = 0x1


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/car/CarPropertyService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/car/CarPropertyService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "service"    # Lcom/android/car/CarPropertyService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 144
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 145
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/car/CarPropertyService$PropertyHandler;->mService:Ljava/lang/ref/WeakReference;

    .line 146
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 158
    const-string v0, "CAR.UPDATETIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarPropertyService$PropertyHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/CarPropertyService;

    .line 153
    .local v0, "srv":Lcom/android/car/CarPropertyService;
    if-eqz v0, :cond_1

    .line 154
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/car/CarPropertyService;->access$000(Lcom/android/car/CarPropertyService;II)V

    .line 160
    .end local v0    # "srv":Lcom/android/car/CarPropertyService;
    :cond_1
    :goto_0
    return-void
.end method
