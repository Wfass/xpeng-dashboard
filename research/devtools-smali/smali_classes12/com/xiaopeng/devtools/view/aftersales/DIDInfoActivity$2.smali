.class Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity$2;
.super Ljava/lang/Object;
.source "DIDInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->lT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic DY:Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity$2;->DY:Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 69
    const-string p1, "DIDInfoActivity"

    const-string v0, "onCancel"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity$2;->DY:Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->finish()V

    .line 71
    return-void
.end method
