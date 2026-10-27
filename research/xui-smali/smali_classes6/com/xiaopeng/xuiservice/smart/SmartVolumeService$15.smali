.class Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$15;
.super Ljava/lang/Object;
.source "SmartVolumeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->handlePassengerOccupancy(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    .line 493
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$15;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 496
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$15;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$1800(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;Z)V

    .line 497
    :cond_0
    return-void
.end method
