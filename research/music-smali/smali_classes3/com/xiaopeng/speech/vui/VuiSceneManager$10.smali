.class Lcom/xiaopeng/speech/vui/VuiSceneManager$10;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager;->unSubscribe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;)V
    .locals 0

    .line 983
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$10;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 987
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$10;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->unsubscribe()V

    return-void
.end method
