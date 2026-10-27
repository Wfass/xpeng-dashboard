.class Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$2;
.super Ljava/lang/Object;
.source "AIMediaCopyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$2;->FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 114
    const-string v0, "/mnt/extsd/AIAssistant/media/"

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->aX(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$2;->FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$2;->FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    invoke-static {v2}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->e(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/AIAssistant/media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/mnt/extsd/AIAssistant/media/"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->a(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    return-void
.end method
