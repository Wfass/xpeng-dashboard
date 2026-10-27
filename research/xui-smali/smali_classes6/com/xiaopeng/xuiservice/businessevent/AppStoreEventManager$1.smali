.class Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager$1;
.super Ljava/lang/Object;
.source "AppStoreEventManager.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager$1;->this$0:Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager$1;->this$0:Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;->access$000(Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;Landroid/car/hardware/CarPropertyValue;)V

    .line 22
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 26
    return-void
.end method
