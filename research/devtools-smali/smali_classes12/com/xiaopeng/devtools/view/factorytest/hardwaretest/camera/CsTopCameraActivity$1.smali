.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity$1;
.super Ljava/lang/Object;
.source "CsTopCameraActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->ff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic JC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity$1;->JC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;

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

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity$1;->JC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->co(I)V

    .line 80
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

    .line 85
    return-void
.end method
