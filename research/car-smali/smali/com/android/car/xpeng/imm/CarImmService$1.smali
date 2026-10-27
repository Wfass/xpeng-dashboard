.class Lcom/android/car/xpeng/imm/CarImmService$1;
.super Ljava/lang/Object;
.source "CarImmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/xpeng/imm/CarImmService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/xpeng/imm/CarImmService;


# direct methods
.method constructor <init>(Lcom/android/car/xpeng/imm/CarImmService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/xpeng/imm/CarImmService;

    .line 250
    iput-object p1, p0, Lcom/android/car/xpeng/imm/CarImmService$1;->this$0:Lcom/android/car/xpeng/imm/CarImmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 254
    const-string v0, "CarImmService"

    const-string v1, "Three minutes timer finished"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService$1;->this$0:Lcom/android/car/xpeng/imm/CarImmService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/xpeng/imm/CarImmService;->access$602(Lcom/android/car/xpeng/imm/CarImmService;Z)Z

    .line 257
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService$1;->this$0:Lcom/android/car/xpeng/imm/CarImmService;

    invoke-virtual {v0, v1}, Lcom/android/car/xpeng/imm/CarImmService;->syncImmBaseOrientation(I)I

    .line 258
    return-void
.end method
