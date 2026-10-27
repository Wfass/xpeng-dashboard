.class Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper$1;
.super Ljava/lang/Object;
.source "XuiClientWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    const-string p1, "XuiClientWrapper"

    const-string p2, "onXuiServiceConnected"

    const/4 v0, 0x0

    .line 71
    invoke-static {p1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->access$000(Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const-string p1, "XuiClientWrapper"

    const-string v0, "onXuiServiceDisconnected"

    const/4 v1, 0x0

    .line 77
    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->access$102(Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;Z)Z

    return-void
.end method
