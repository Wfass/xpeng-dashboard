.class Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$5;
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

    .line 150
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$5;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

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

    .line 153
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    const-string p2, "factory"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string p2, "CAN1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$5;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    const/4 p2, 0x1

    iput p2, p1, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SW:I

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$5;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    const/4 p2, 0x2

    iput p2, p1, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SW:I

    .line 161
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

    .line 166
    return-void
.end method
