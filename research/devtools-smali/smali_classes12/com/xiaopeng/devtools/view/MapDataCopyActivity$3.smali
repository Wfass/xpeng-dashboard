.class Lcom/xiaopeng/devtools/view/MapDataCopyActivity$3;
.super Ljava/lang/Object;
.source "MapDataCopyActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->cG(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

.field final synthetic CZ:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;I)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$3;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    iput p2, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$3;->CZ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/devtools/view/a;)V
    .locals 4

    .line 261
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/a;->dismiss()V

    .line 262
    iget p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$3;->CZ:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 263
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$3;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    const-string v0, ".ans"

    const-string v1, "/chn/"

    const-string v2, "/mnt/extsd/montecarlo/data/Navi/compile_v2/chn/"

    iget v3, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$3;->CZ:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->a(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 264
    :cond_0
    iget p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$3;->CZ:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 265
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$3;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    const-string v0, ".mp4"

    const-string v1, "/AIAssistant/media/"

    const-string v2, "/mnt/extsd/AIAssistant/media/"

    iget v3, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$3;->CZ:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->a(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 266
    :cond_1
    iget p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$3;->CZ:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 267
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$3;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    const-string v0, ".apk"

    const-string v1, "/AppStore/apk/"

    const-string v2, "/mnt/extsd/AppStore/apk/"

    iget v3, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$3;->CZ:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->a(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    :cond_2
    :goto_0
    return-void
.end method
