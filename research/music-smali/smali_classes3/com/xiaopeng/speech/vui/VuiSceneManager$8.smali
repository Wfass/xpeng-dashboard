.class Lcom/xiaopeng/speech/vui/VuiSceneManager$8;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager;->unSubscribeVuiFeature()V
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

    .line 819
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$8;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 823
    :try_start_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$8;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 824
    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "unsubscribeVuiFeatureProcess"

    .line 825
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "packageName"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$8;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 826
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "packageVersion"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$8;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 827
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "processName"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$8;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 828
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 829
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 830
    invoke-static {v0}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
