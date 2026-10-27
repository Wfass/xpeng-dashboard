.class Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$12;
.super Ljava/lang/Object;
.source "ContextInfoHalService.java"

# interfaces
.implements Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    .line 454
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$12;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 457
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 461
    return-void
.end method
