.class Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$4;
.super Ljava/lang/Object;
.source "CanTestActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$4;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 131
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$4;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-static {p2}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->b(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)I

    move-result p2

    const/4 p4, 0x2

    if-ne p2, p4, :cond_0

    .line 132
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$4;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->period:I

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$4;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    const/4 p2, 0x0

    iput p2, p1, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->period:I

    .line 137
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 142
    return-void
.end method
