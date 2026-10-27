.class Lbty$2;
.super Ljava/lang/Object;
.source "VuiRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbty;


# direct methods
.method constructor <init>(Lbty;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lbty$2;->a:Lbty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "VuiRecyclerView"

    const-string v1, "updateVuiScene run"

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lbty$2;->a:Lbty;

    invoke-static {v0}, Lbty;->a(Lbty;)Lbxu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbty$2;->a:Lbty;

    invoke-static {v0}, Lbty;->b(Lbty;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lbty$2;->a:Lbty;

    invoke-static {v0}, Lbty;->a(Lbty;)Lbxu;

    move-result-object v0

    iget-object v1, p0, Lbty$2;->a:Lbty;

    invoke-static {v1}, Lbty;->b(Lbty;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbty$2;->a:Lbty;

    invoke-interface {v0, v1, v2}, Lbxu;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method
