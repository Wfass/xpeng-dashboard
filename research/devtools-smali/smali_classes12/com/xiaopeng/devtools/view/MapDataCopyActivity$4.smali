.class Lcom/xiaopeng/devtools/view/MapDataCopyActivity$4;
.super Ljava/lang/Object;
.source "MapDataCopyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

.field final synthetic Da:Ljava/lang/String;

.field final synthetic Db:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$4;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    iput-object p2, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$4;->Da:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$4;->Db:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$4;->Da:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->aX(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$4;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->b(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;I)I

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$4;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$4;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-static {v2}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->g(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$4;->Db:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->cz(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->c(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;I)I

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$4;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->g(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$4;->Db:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$4;->Da:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/g;->M(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void
.end method
