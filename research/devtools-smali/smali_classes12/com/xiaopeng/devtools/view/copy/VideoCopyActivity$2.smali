.class Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;
.super Ljava/lang/Object;
.source "VideoCopyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic FB:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;->FB:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;->FB:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fw:Ljava/lang/Double;

    .line 137
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/xiaopeng/devtools/a;->ny:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;->FB:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;->FB:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;

    iget-object v2, v2, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fw:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sget-object v4, Lcom/xiaopeng/devtools/a;->ny:[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/b;->u(Ljava/lang/String;I)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fw:Ljava/lang/Double;

    .line 139
    const-string v1, "VideoCopyActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGetFileSizeThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaopeng/devtools/a;->ny:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;->FB:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;

    iget-object v3, v3, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fw:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    new-instance v0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2$1;-><init>(Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method
