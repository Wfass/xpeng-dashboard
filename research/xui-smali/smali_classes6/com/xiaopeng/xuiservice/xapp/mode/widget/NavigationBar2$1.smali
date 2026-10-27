.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$1;
.super Ljava/lang/Object;
.source "NavigationBar2.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDockVisibilityChanged(IZ)V
    .locals 1
    .param p1, "screenIdParams"    # I
    .param p2, "visibility"    # Z

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->barImpl:Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->onDockVisibilityChanged(IZ)V

    .line 70
    return-void
.end method
