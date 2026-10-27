.class Lcom/xiaopeng/xui/app/e$1;
.super Ljava/lang/Object;
.source "XLoadingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/app/e;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aac:Lcom/xiaopeng/xui/app/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/e;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/xiaopeng/xui/app/e$1;->aac:Lcom/xiaopeng/xui/app/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 163
    iget-object p1, p0, Lcom/xiaopeng/xui/app/e$1;->aac:Lcom/xiaopeng/xui/app/e;

    const-string v0, "close is click "

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/app/e;->a(Lcom/xiaopeng/xui/app/e;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/xui/app/e$1;->aac:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/e;->cancel()V

    .line 165
    return-void
.end method
