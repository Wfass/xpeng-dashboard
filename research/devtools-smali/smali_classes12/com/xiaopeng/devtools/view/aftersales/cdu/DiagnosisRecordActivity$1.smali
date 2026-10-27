.class Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity$1;
.super Ljava/lang/Object;
.source "DiagnosisRecordActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->ff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Fa:Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity$1;->Fa:Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .line 76
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity$1;->Fa:Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->a(Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;)Lcom/xiaopeng/devtools/presenter/aftersales/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/presenter/aftersales/c;->ch(I)V

    .line 66
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .line 71
    return-void
.end method
