.class Lcom/xiaopeng/devtools/view/hwcheck/a$1;
.super Ljava/lang/Object;
.source "ImageDispAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/hwcheck/a;->a(Lcom/xiaopeng/devtools/view/hwcheck/a$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PF:Lcom/xiaopeng/devtools/view/hwcheck/a;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/hwcheck/a;I)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a$1;->PF:Lcom/xiaopeng/devtools/view/hwcheck/a;

    iput p2, p0, Lcom/xiaopeng/devtools/view/hwcheck/a$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a$1;->PF:Lcom/xiaopeng/devtools/view/hwcheck/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/usbhost/xptestimage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a$1;->PF:Lcom/xiaopeng/devtools/view/hwcheck/a;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/hwcheck/a;->a(Lcom/xiaopeng/devtools/view/hwcheck/a;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/devtools/view/hwcheck/a$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/hwcheck/a;->a(Lcom/xiaopeng/devtools/view/hwcheck/a;Ljava/lang/String;)V

    .line 69
    return-void
.end method
