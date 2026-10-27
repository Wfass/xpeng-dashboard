.class Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2$1;
.super Ljava/lang/Object;
.source "VideoCopyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic FC:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2$1;->FC:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2$1;->FC:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;

    iget-object v0, v0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;->FB:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->b(Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2$1;->FC:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;

    iget-object v1, v1, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;->FB:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2$1;->FC:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;

    iget-object v3, v3, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;->FB:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;

    iget-object v3, v3, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fw:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1000e9

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method
