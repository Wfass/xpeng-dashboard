.class Lcom/xiaopeng/commonfunc/utils/h$1;
.super Landroid/content/BroadcastReceiver;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/utils/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pj:Lcom/xiaopeng/commonfunc/utils/h;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/utils/h;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/utils/h$1;->pj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 82
    const-string p2, "FileUploader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive action-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    const-string p1, "FileUploader"

    const-string p2, "onReceive mStep [%d]"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/h$1;->pj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/h;->a(Lcom/xiaopeng/commonfunc/utils/h;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, p2, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/utils/h$1;->pj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/h;->a(Lcom/xiaopeng/commonfunc/utils/h;)I

    move-result p1

    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_0

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/utils/h$1;->pj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-static {p1, v2}, Lcom/xiaopeng/commonfunc/utils/h;->a(Lcom/xiaopeng/commonfunc/utils/h;I)I

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/utils/h$1;->pj:Lcom/xiaopeng/commonfunc/utils/h;

    iget-object p2, p0, Lcom/xiaopeng/commonfunc/utils/h$1;->pj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-static {p2}, Lcom/xiaopeng/commonfunc/utils/h;->b(Lcom/xiaopeng/commonfunc/utils/h;)[Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h$1;->pj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/h;->c(Lcom/xiaopeng/commonfunc/utils/h;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/h$1;->pj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/h;->d(Lcom/xiaopeng/commonfunc/utils/h;)I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/commonfunc/utils/h;->a([Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    :cond_0
    return-void
.end method
