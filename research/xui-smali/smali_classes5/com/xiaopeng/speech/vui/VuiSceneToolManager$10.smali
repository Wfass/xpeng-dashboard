.class Lcom/xiaopeng/speech/vui/VuiSceneToolManager$10;
.super Ljava/lang/Object;
.source "VuiSceneToolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->unSubscribe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 770
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$10;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$10;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->unsubscribe()V

    .line 775
    return-void
.end method
