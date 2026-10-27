.class Lcom/xiaopeng/speech/vui/VuiSceneManager$9$1;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/speech/vui/VuiSceneManager$9;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneManager$9;)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9$1;->this$1:Lcom/xiaopeng/speech/vui/VuiSceneManager$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9$1;->this$1:Lcom/xiaopeng/speech/vui/VuiSceneManager$9;

    iget-object v0, v0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9$1;->this$1:Lcom/xiaopeng/speech/vui/VuiSceneManager$9;

    iget-boolean v1, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->val$needCheckEnterScene:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->subscribe(Z)V

    return-void
.end method
