.class Landroid/car/hardware/radio/CarRadioManager$CarBroadcastRadioCallback;
.super Landroid/hardware/radio/RadioTuner$Callback;
.source "CarRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/radio/CarRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarBroadcastRadioCallback"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/hardware/radio/CarRadioManager;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/car/hardware/radio/CarRadioManager;


# direct methods
.method public constructor <init>(Landroid/car/hardware/radio/CarRadioManager;Landroid/car/hardware/radio/CarRadioManager;)V
    .locals 0

    .line 123
    iput-object p1, p0, Landroid/car/hardware/radio/CarRadioManager$CarBroadcastRadioCallback;->this$0:Landroid/car/hardware/radio/CarRadioManager;

    invoke-direct {p0}, Landroid/hardware/radio/RadioTuner$Callback;-><init>()V

    .line 124
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/car/hardware/radio/CarRadioManager$CarBroadcastRadioCallback;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError(); status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarRadioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager$CarBroadcastRadioCallback;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 143
    invoke-static {v0, p1}, Landroid/car/hardware/radio/CarRadioManager;->access$100(Landroid/car/hardware/radio/CarRadioManager;I)V

    :cond_0
    return-void
.end method

.method public onProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 3

    const-string v0, "CarRadioManager"

    const/4 v1, 0x3

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Program info changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager$CarBroadcastRadioCallback;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 134
    invoke-static {v0, p1, v1, v1}, Landroid/car/hardware/radio/CarRadioManager;->access$000(Landroid/car/hardware/radio/CarRadioManager;Landroid/hardware/radio/RadioManager$ProgramInfo;ZZ)V

    :cond_1
    return-void
.end method
