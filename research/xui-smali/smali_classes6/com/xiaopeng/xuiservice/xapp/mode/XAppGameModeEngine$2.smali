.class Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$2;
.super Ljava/lang/Object;
.source "XAppGameModeEngine.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;

    .line 345
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpsSteerEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "carPropertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->access$300(Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;Landroid/car/hardware/CarPropertyValue;)V

    .line 349
    return-void
.end method
