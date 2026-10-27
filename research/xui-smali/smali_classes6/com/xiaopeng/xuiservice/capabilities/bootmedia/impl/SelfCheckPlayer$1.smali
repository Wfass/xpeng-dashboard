.class Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$1;
.super Ljava/lang/Object;
.source "SelfCheckPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 87
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 82
    const-string v0, "SelfCheckPlayer"

    const-string v1, "Surface created"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->access$000(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;Landroid/view/SurfaceHolder;)V

    .line 84
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->access$100(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V

    .line 92
    return-void
.end method
