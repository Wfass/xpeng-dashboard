.class Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$2;
.super Ljava/lang/Object;
.source "CanTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$2;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$2;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->d(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)Lcom/xiaopeng/devtools/presenter/f/c;

    move-result-object v0

    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$2;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->b(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)I

    move-result v1

    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$2;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    iget v2, p1, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->period:I

    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$2;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    iget v3, p1, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SW:I

    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$2;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->c(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$2;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->a(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)[I

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/devtools/presenter/f/c;->a(IIILjava/lang/String;[I)V

    .line 100
    return-void
.end method
