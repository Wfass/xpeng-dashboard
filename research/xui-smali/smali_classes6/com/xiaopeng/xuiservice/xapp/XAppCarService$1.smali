.class Lcom/xiaopeng/xuiservice/xapp/XAppCarService$1;
.super Ljava/lang/Object;
.source "XAppCarService.java"

# interfaces
.implements Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/XAppCarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppCarService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    .line 200
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "carPropertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->access$000(Lcom/xiaopeng/xuiservice/xapp/XAppCarService;Landroid/car/hardware/CarPropertyValue;)V

    .line 205
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 208
    return-void
.end method
