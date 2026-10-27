.class Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$3$1;
.super Ljava/lang/Object;
.source "XAppStartManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$3;->onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$3;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$3;

    .line 790
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$3$1;->this$1:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$3$1;->this$1:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$3;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->access$100(Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;)V

    .line 794
    return-void
.end method
